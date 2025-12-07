uint64_t static FormatImageAdjustmentMask.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1D5F78F40(a1, v6);
  sub_1D5F78F40(a2, v7);
  sub_1D5F78F40(v6, v8);
  sub_1D5F78F40(v7, v9);
  v5[4] = v8[4];
  v5[5] = v8[5];
  v5[6] = v8[6];
  v5[7] = v8[7];
  v5[0] = v8[0];
  v5[1] = v8[1];
  v5[2] = v8[2];
  v5[3] = v8[3];
  v4[4] = v9[4];
  v4[5] = v9[5];
  v4[6] = v9[6];
  v4[7] = v9[7];
  v4[0] = v9[0];
  v4[1] = v9[1];
  v4[2] = v9[2];
  v4[3] = v9[3];
  return _s8NewsFeed25FormatDirectionalGradientO2eeoiySbAC_ACtFZ_0(v5, v4) & 1;
}

uint64_t sub_1D6B4EB08(uint64_t a1, uint64_t a2)
{
  sub_1D5F78F40(a1, v6);
  sub_1D5F78F40(a2, v7);
  sub_1D5F78F40(v6, v8);
  sub_1D5F78F40(v7, v9);
  v5[4] = v8[4];
  v5[5] = v8[5];
  v5[6] = v8[6];
  v5[7] = v8[7];
  v5[0] = v8[0];
  v5[1] = v8[1];
  v5[2] = v8[2];
  v5[3] = v8[3];
  v4[4] = v9[4];
  v4[5] = v9[5];
  v4[6] = v9[6];
  v4[7] = v9[7];
  v4[0] = v9[0];
  v4[1] = v9[1];
  v4[2] = v9[2];
  v4[3] = v9[3];
  return _s8NewsFeed25FormatDirectionalGradientO2eeoiySbAC_ACtFZ_0(v5, v4) & 1;
}

unint64_t sub_1D6B4EBAC(uint64_t a1)
{
  result = sub_1D6B4EBD4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B4EBD4()
{
  result = qword_1EC892558;
  if (!qword_1EC892558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892558);
  }

  return result;
}

unint64_t sub_1D6B4EC28(void *a1)
{
  a1[1] = sub_1D665C5D0();
  a1[2] = sub_1D6705C00();
  result = sub_1D6B4EC60();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6B4EC60()
{
  result = qword_1EC892560[0];
  if (!qword_1EC892560[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC892560);
  }

  return result;
}

uint64_t SharingPuzzleActivityTypeProvider.__allocating_init(supportedActivityTypes:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t SharingPuzzleActivityTypeProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t static FormatFileReferenceCollection.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FormatFileReference(0, a3, a4, a4);
  swift_getWitnessTable();

  return sub_1D726280C();
}

double FormatFileReferenceCollection.latestFormatCompatible.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = type metadata accessor for FormatFileReference(0, *(a1 + 16), *(a1 + 24), a4);

  return Array<A>.latestFormatCompatible.getter(v5, v6, &protocol witness table for FormatFileReference<A>);
}

uint64_t FormatFileReferenceCollection.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, uint64_t a5@<X3>)
{
  v90 = a4;
  v105 = type metadata accessor for FormatFileReferenceCollection.MetadataContainer(0, a2, a3, a5);
  v92 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105, v8);
  v109 = &v80 - v9;
  sub_1D6B4FCB0(0, &qword_1EDF415B8, type metadata accessor for FormatMetadata);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v100 = &v80 - v12;
  sub_1D6B4FCB0(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v99 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v94 = &v80 - v18;
  v104 = sub_1D725BD1C();
  v86 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104, v19);
  v98 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v108 = &v80 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v96 = &v80 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v93 = &v80 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v102 = &v80 - v32;
  v112 = type metadata accessor for FormatMetadata(0);
  v106 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112, v33);
  v110 = &v80 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v101 = &v80 - v37;
  sub_1D6B4FCB0(0, &qword_1EDF3C698, MEMORY[0x1E69E6D30]);
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v95 = &v80 - v40;
  v41 = sub_1D7263FCC();
  v85 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v80 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for FormatFileReference(0, a2, a3, v45);
  v84 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = &v80 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50, v51);
  v53 = &v80 - v52;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v54 = v111;
  sub_1D7264ADC();
  v55 = a1;
  if (v54)
  {
    return __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = v106;
  v111 = v53;
  v81 = v49;
  v87 = v44;
  v88 = v41;
  v103 = v55;
  v107 = v46;
  v57 = sub_1D726275C();
  v117 = v57;
  __swift_project_boxed_opaque_existential_1(&v115, v116);
  if (sub_1D72644FC())
  {
    v58 = v103;
LABEL_21:
    v79 = v90;
    __swift_destroy_boxed_opaque_existential_1(&v115);
    *v79 = v57;
    v55 = v58;
    return __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v91 = v56 + 6;
  v97 = (v86 + 6);
  v89 = (v86 + 4);
  v106 = (v86 + 1);
  v92 += 8;
  v86 = (v85 + 6);
  v83 = (v85 + 4);
  ++v85;
  v82 = (v84 + 1);
  v84 += 2;
  v58 = v103;
  v59 = v101;
  while (1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(&v115, v116);
    swift_getWitnessTable();
    sub_1D72644EC();
    __swift_project_boxed_opaque_existential_1(v58, v58[3]);
    v60 = sub_1D7264AFC();
    v61 = v95;
    sub_1D7263FBC();
    v62 = v88;
    result = (*v86)(v61, 1, v88);
    if (result == 1)
    {
      break;
    }

    v64 = v87;
    (*v83)(v87, v61, v62);
    if (!*(v60 + 16) || (v65 = sub_1D5B7C598(v64), (v66 & 1) == 0))
    {

      (*v85)(v64, v62);
LABEL_13:
      v67 = v107;
LABEL_14:
      FormatFileReference.metadata.getter(v67, v59);
      __swift_project_boxed_opaque_existential_1(v58, v58[3]);
      v69 = sub_1D7264AFC();
      Dictionary<>.appVersion.getter(v69, v102);
      v70 = v104;

      v71 = sub_1D7264AFC();
      v72 = v93;
      Dictionary<>.formatVersion.getter(v71, v93);

      v73 = v94;
      sub_1D6B505C4(&v59[*(v112 + 28)], v94, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
      v74 = 1;
      if ((*v97)(v73, 1, v70) != 1)
      {
        v75 = v96;
        (*v89)(v96, v73, v70);
        v74 = sub_1D725B9FC();
        (*v106)(v75, v70);
      }

      sub_1D5C3548C(&qword_1EDF415C8, &protocol conformance descriptor for FormatMetadata);
      v76 = v102;
      v77 = sub_1D725A94C();
      v78 = *v106;
      (*v106)(v76, v70);
      sub_1D5D3A908(v59);
      v78(v72, v70);
      v68 = v111;
      v67 = v107;
      v58 = v103;
      if ((v77 & 1) == 0 || (v74 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    sub_1D5B76B10(*(v60 + 56) + 32 * v65, v114);
    (*v85)(v64, v62);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_13;
    }

    v67 = v107;
    v68 = v111;
    if ((v113 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_18:
    (*v84)(v81, v68, v67);
    sub_1D72627FC();
    sub_1D72627BC();
LABEL_19:
    (*v82)(v68, v67);
    __swift_project_boxed_opaque_existential_1(&v115, v116);
    if (sub_1D72644FC())
    {
      v57 = v117;
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

void sub_1D6B4FCB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t FormatFileReferenceCollection.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_1D7264B3C();
  v8 = v4;
  type metadata accessor for FormatFileReference(255, *(a2 + 16), *(a2 + 24), v5);
  sub_1D72627FC();
  swift_getWitnessTable();
  v8 = sub_1D7263E7C();
  __swift_mutable_project_boxed_opaque_existential_1(v7, v7[3]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1D726476C();

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

BOOL sub_1D6B4FE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FormatFileReference(0, a2, a3, a4);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = v13 - v9;
  (*(v6 + 16))(v13 - v9, a1, v5, v8);
  v11 = swift_getEnumCaseMultiPayload() != 2;
  (*(v6 + 8))(v10, v5);
  return v11;
}

uint64_t sub_1D6B4FF78(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D72646CC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D6B4FFF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FormatFileReferenceCollection.MetadataContainer.CodingKeys(255, *(a2 + 16), *(a2 + 24), a4);
  swift_getWitnessTable();
  v5 = sub_1D726446C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B5C();
  type metadata accessor for FormatMetadata(0);
  sub_1D5C3548C(&qword_1EDF11B70, &protocol conformance descriptor for FormatMetadata);
  sub_1D72643BC();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D6B50184@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  sub_1D6B4FCB0(0, &qword_1EDF415B8, type metadata accessor for FormatMetadata);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v32 = &v27 - v9;
  type metadata accessor for FormatFileReferenceCollection.MetadataContainer.CodingKeys(255, a2, a3, v10);
  swift_getWitnessTable();
  v11 = sub_1D726435C();
  v30 = *(v11 - 8);
  v31 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v27 - v13;
  v16 = type metadata accessor for FormatFileReferenceCollection.MetadataContainer(0, a2, a3, v15);
  v29 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v27 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = v33;
  sub_1D7264B0C();
  if (!v20)
  {
    v21 = v19;
    v22 = v29;
    v23 = v30;
    v33 = v16;
    type metadata accessor for FormatMetadata(0);
    sub_1D5C3548C(&qword_1EDF415C0, &protocol conformance descriptor for FormatMetadata);
    v25 = v31;
    v24 = v32;
    sub_1D726427C();
    (*(v23 + 8))(v14, v25);
    sub_1D674F808(v24, v21);
    (*(v22 + 32))(v28, v21, v33);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D6B5046C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6B4FF78(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D6B504A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D6B504F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D6B505C4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D6B4FCB0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D6B50650(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

void sub_1D6B506D0(uint64_t a1)
{
  sub_1D6B4FCB0(319, &qword_1EDF415B8, type metadata accessor for FormatMetadata);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D6B507FC(void *a1)
{
  v3 = v1;
  sub_1D6B53A4C(0, &qword_1EC892698, sub_1D6B539F8, &type metadata for A12_V15.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B539F8();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D6B53AB4(&qword_1EC8801E8, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
    sub_1D5BD47D0(&qword_1EC8806A0, sub_1D5C0B904, MEMORY[0x1E69E6300]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6B50A44(uint64_t a1)
{
  v2 = sub_1D6B539F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B50A80(uint64_t a1)
{
  v2 = sub_1D6B539F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6B50ABC@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D6B53758(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D6B50B1C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_1D6B53404();

  return sub_1D725A24C();
}

uint64_t sub_1D6B50B98@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4(0);
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D6B53A4C(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

void sub_1D6B50C54(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v89 = a2;
  v87 = a3;
  v6 = type metadata accessor for FeedHeadline(0);
  v90 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v74 - v12;
  v14 = sub_1D725895C();
  v81 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for GroupLayoutContext(0);
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v18);
  v88 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v74 - v22;
  v91 = type metadata accessor for GroupLayoutBindingContext(0);
  v83 = *(v91 - 1);
  MEMORY[0x1EEE9AC00](v91, v24);
  v26 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = *v3;
  v82 = *(v3 + 1);
  v27 = v3[16];
  *&v98 = 4;
  if (GroupLayoutBindingContext.count(for:)(&v98))
  {
    sub_1D5C17350();
    swift_allocError();
    *v28 = 0u;
    *(v28 + 16) = 0u;
    *(v28 + 32) = 0;
    *(v28 + 40) = 13;
    swift_willThrow();
  }

  else
  {
    v102 = v13;
    v92 = v9;
    v79 = a1;
    sub_1D5BE3ED8(a1, v26, type metadata accessor for GroupLayoutBindingContext);
    v78 = type metadata accessor for GroupLayoutContext;
    v77 = v23;
    sub_1D5BE3ED8(v89, v23, type metadata accessor for GroupLayoutContext);
    sub_1D725894C();
    v76 = sub_1D725893C();
    v75 = v29;
    (*(v81 + 8))(v17, v14);
    v100 = &type metadata for A12_V15;
    v81 = sub_1D5ECECB8();
    v101 = v81;
    v30 = v84;
    LOBYTE(v98) = v84;
    v31 = v82;
    *(&v98 + 1) = v82;
    v99 = v27;
    type metadata accessor for GroupLayoutKey(0);
    v32 = swift_allocObject();
    sub_1D5BEE8A0(v31, v27);
    v93[0] = sub_1D7264C5C();
    v93[1] = v33;
    v96 = 95;
    v97 = 0xE100000000000000;
    v94 = 45;
    v95 = 0xE100000000000000;
    sub_1D5BF4D9C();
    v34 = sub_1D7263A6C();
    v36 = v35;

    *(v32 + 16) = v34;
    *(v32 + 24) = v36;
    v37 = (v32 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
    v38 = v75;
    *v37 = v76;
    v37[1] = v38;
    sub_1D5B68374(&v98, v32 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
    v39 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
    sub_1D5BDA904(v26, v32 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
    (*(v83 + 56))(v32 + v39, 0, 1, v91);
    v40 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
    sub_1D5BDA904(v77, v32 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
    v41 = *(v85 + 56);
    v85 = v32;
    v41(v32 + v40, 0, 1, v86);
    __swift_destroy_boxed_opaque_existential_1(&v98);
    v100 = &type metadata for A12_V15;
    v101 = v81;
    LOBYTE(v98) = v30;
    *(&v98 + 1) = v31;
    v99 = v27;
    v42 = v88;
    sub_1D5BE3ED8(v89, v88, v78);
    sub_1D5BD3920(0, qword_1EDF39B38, type metadata accessor for FeedHeadline, type metadata accessor for FeedItemSorter);
    inited = swift_initStackObject();
    v44 = MEMORY[0x1E69E7CC0];
    v89 = inited;
    *(inited + 16) = MEMORY[0x1E69E7CC0];
    v45 = (inited + 16);
    swift_beginAccess();
    sub_1D5BEE8A0(v31, v27);
    v46 = sub_1D5C0F8FC(0, 1, 1, v44);
    v48 = v46[2];
    v47 = v46[3];
    v49 = v48 + 1;
    if (v48 >= v47 >> 1)
    {
      goto LABEL_34;
    }

    while (1)
    {
      v50 = v87;
      v51 = v102;
      v46[2] = v49;
      v52 = &v46[2 * v48];
      v52[4] = sub_1D63106DC;
      v52[5] = 0;
      *v45 = v46;
      swift_endAccess();
      if (!*(*&v79[v91[14]] + 16))
      {
        break;
      }

      sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0);
      if ((v53 & 1) == 0)
      {
        break;
      }

      v49 = sub_1D5C14D80(v54);

      if (!v49)
      {
        break;
      }

      v42 = *(v49 + 16);
      if (v42)
      {
        v55 = 0;
        v48 = MEMORY[0x1E69E7CC0];
        v45 = v90;
        v46 = v92;
        while (1)
        {
          v47 = *(v49 + 16);
          if (v55 >= v47)
          {
            break;
          }

          v56 = (v45[80] + 32) & ~v45[80];
          v57 = *(v45 + 9);
          sub_1D5BE3ED8(v49 + v56 + v57 * v55, v51, type metadata accessor for FeedHeadline);
          sub_1D5BDA904(v51, v46, type metadata accessor for FeedHeadline);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v93[0] = v48;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D5C0F91C(0, *(v48 + 16) + 1, 1);
            v45 = v90;
            v48 = v93[0];
          }

          v60 = *(v48 + 16);
          v59 = *(v48 + 24);
          if (v60 >= v59 >> 1)
          {
            sub_1D5C0F91C((v59 > 1), v60 + 1, 1);
            v45 = v90;
            v48 = v93[0];
          }

          ++v55;
          *(v48 + 16) = v60 + 1;
          v46 = v92;
          sub_1D5BDA904(v92, v48 + v56 + v60 * v57, type metadata accessor for FeedHeadline);
          v51 = v102;
          if (v42 == v55)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        v48 = MEMORY[0x1E69E7CC0];
LABEL_22:
        if ((*v79 & 1) == 0)
        {

          sub_1D62F071C(v48);
          v66 = v65;

          v48 = v66;
        }

        v45 = v79;
        v67 = *&v79[v91[18]];
        v68 = *&v79[v91[19]];
        if (__OFSUB__(v67, v68))
        {
          goto LABEL_36;
        }

        v69 = sub_1D5C0FAD4(v48, v67 - v68);
        v46 = sub_1D5C11E10(&unk_1F5113C98, v69, v49);

        if (v46)
        {

LABEL_28:
          strcpy(v93, "FeedHeadline");
          BYTE5(v93[1]) = 0;
          HIWORD(v93[1]) = -5120;
          v93[2] = 0;
          v93[3] = 0;

          v71 = sub_1D5C107C4(v70);

          sub_1D5BDACA8(v93, v71);
          swift_setDeallocating();

          v42 = v88;
          v50 = v87;
          goto LABEL_29;
        }

        v46 = sub_1D5C11E10(&unk_1F5113C98, v48, v49);

        if (v46)
        {
          goto LABEL_28;
        }

        v93[0] = &unk_1F5113C98;
        v4 = v80;
        sub_1D5E239F4(v93);
        if (v4)
        {
          goto LABEL_37;
        }

        v62 = v93[0];
        v47 = *(v93[0] + 2);
        v42 = v88;
        if (v47)
        {
          goto LABEL_19;
        }

        __break(1u);
      }

      __break(1u);
LABEL_34:
      v46 = sub_1D5C0F8FC((v47 > 1), v49, 1, v46);
    }

    v61 = v80;
    if (!qword_1F5113CB8)
    {

      v46 = MEMORY[0x1E69E7CC0];
LABEL_29:
      v72 = type metadata accessor for A12_V15.Bound(0);
      v50[3] = v72;
      v50[4] = sub_1D6B53AB4(&qword_1EC8925F8, type metadata accessor for A12_V15.Bound, &unk_1D73294A8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
      *boxed_opaque_existential_1 = v85;
      sub_1D5B63F14(&v98, (boxed_opaque_existential_1 + 1));
      sub_1D5BDA904(v42, boxed_opaque_existential_1 + *(v72 + 24), type metadata accessor for GroupLayoutContext);
      *(boxed_opaque_existential_1 + *(v72 + 28)) = v46;
      return;
    }

    v93[0] = &unk_1F5113C98;
    v4 = v80;
    sub_1D5E239F4(v93);
    if (!v61)
    {

      v62 = v93[0];
      if (*(v93[0] + 2))
      {
LABEL_19:
        v63 = *(v62 + 4);

        sub_1D5ED8048();
        swift_allocError();
        strcpy(v64, "FeedHeadline");
        v64[13] = 0;
        *(v64 + 7) = -5120;
        *(v64 + 2) = 0;
        *(v64 + 3) = 0;
        *(v64 + 4) = 0;
        *(v64 + 5) = v63;
        *(v64 + 6) = 0;
        *(v64 + 7) = 0;
        v64[64] = 0;
        swift_willThrow();
        swift_setDeallocating();

        sub_1D5BE798C(v42, type metadata accessor for GroupLayoutContext);
        __swift_destroy_boxed_opaque_existential_1(&v98);
        return;
      }

      __break(1u);
LABEL_36:
      __break(1u);
    }

LABEL_37:

    __break(1u);
  }
}

void sub_1D6B517F4(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D725A36C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + *(type metadata accessor for A12_V15.Bound(0) + 28));
  v25 = v2;
  v10 = sub_1D5ECA650(sub_1D6B53388, v24, v9);
  v11 = *MEMORY[0x1E69D7130];
  v12 = sub_1D7259D1C();
  (*(*(v12 - 8) + 104))(v8, v11, v12);
  (*(v5 + 104))(v8, *MEMORY[0x1E69D7370], v4);
  v23 = v10;
  sub_1D6B534AC(0, &qword_1EC892618, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  v22 = sub_1D725A4CC();
  sub_1D725A4DC();
  v13 = v29;
  sub_1D5BD3920(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
  sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  sub_1D5BD48FC();
  v14 = sub_1D5ED1E1C(&qword_1EDF1B260, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  v20 = v28;
  v21 = v27;
  v26 = v13;
  *&v27 = v10;
  MEMORY[0x1EEE9AC00](v14, v15);

  v16 = sub_1D725C00C();

  *a1 = 0;
  v17 = v21;
  *(a1 + 24) = v20;
  *(a1 + 8) = v17;
  *&v27 = v16;
  sub_1D5B49714(0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5ED1E1C(&qword_1EDF1B4C0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5BDEFF8();
  v18 = sub_1D72623BC();

  v19 = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = v18;
  *(a1 + 48) = v19;
}

uint64_t sub_1D6B51BA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  sub_1D5BE3ED8(a1, v9, type metadata accessor for FeedHeadline);
  v11 = a2 + *(type metadata accessor for A12_V15.Bound(0) + 24);
  v12 = type metadata accessor for GroupLayoutContext(0);
  v13 = *(*&v11[*(v12 + 40)] + 16);
  v14 = *&v11[*(v12 + 32)];
  sub_1D5B68374(v13 + 16, v21);
  sub_1D5B68374(v13 + 56, v20);
  v15 = v14 * *(v13 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  inited = swift_initStackObject();
  sub_1D5B63F14(v21, inited + 16);
  sub_1D5B63F14(v20, inited + 56);
  *(inited + 96) = v15;
  v19 = 2;

  FeedLayoutStylerFactory.styler(withHeading:)(&v19, v22);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 16));
  __swift_destroy_boxed_opaque_existential_1((inited + 56));
  return HeadlineViewLayout.Context.init(key:model:styler:)(v10, v9, v22, a3);
}

uint64_t sub_1D6B51D30(uint64_t a1, uint64_t a2)
{
  sub_1D6B53A4C(0, &qword_1EC892630, sub_1D6B533B0, &type metadata for A12_V15.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13[-v8];
  v15 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 12;
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D7490], v5);
  v14 = a2;
  v11 = MEMORY[0x1E69D7150];
  sub_1D6B534AC(0, &qword_1EC892638, MEMORY[0x1E69D7150]);
  sub_1D6B53468(&qword_1EC892640, &qword_1EC892638, v11, MEMORY[0x1E69D7158]);
  sub_1D7259A2C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D6B51F1C(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v23 = sub_1D6B533B0;
  sub_1D6B53A4C(0, &qword_1EC892630, sub_1D6B533B0, &type metadata for A12_V15.Layout, MEMORY[0x1E69D74B0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = (v22 - v7);
  v26 = a1;
  v9 = sub_1D725994C();
  v10 = swift_allocBox();
  (*(*(v9 - 8) + 104))(v11, *MEMORY[0x1E69D6F50], v9);
  *v8 = v10;
  v12 = *(v5 + 104);
  v12(v8, *MEMORY[0x1E69D73C0], v4);
  v13 = MEMORY[0x1E69D6F38];
  sub_1D6B534AC(0, &qword_1EC892648, MEMORY[0x1E69D6F38]);
  v22[1] = v14;
  sub_1D6B53468(&qword_1EC892650, &qword_1EC892648, v13, MEMORY[0x1E69D6F40]);
  sub_1D7259A9C();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v26 = a1;
  v12(v8, *MEMORY[0x1E69D74A8], v4);
  sub_1D6B53530(0);
  sub_1D6B53A4C(0, &qword_1EC892660, v23, &type metadata for A12_V15.Layout, MEMORY[0x1E69D70D8]);
  v17 = v16;
  v18 = *(v16 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D7273AE0;
  (*(v18 + 104))(v20 + v19, *MEMORY[0x1E69D7098], v17);
  v25 = v24;
  sub_1D72599EC();

  return (v15)(v8, v4);
}

uint64_t sub_1D6B52288(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v18 = a1;
  sub_1D6B53A4C(0, &qword_1EC892630, sub_1D6B533B0, &type metadata for A12_V15.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v17 - v8);
  v21 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 6;
  *v9 = v10;
  v11 = *MEMORY[0x1E69D7490];
  v12 = *(v6 + 104);
  v12(v9, v11, v5);
  v20 = a2;
  v13 = MEMORY[0x1E69D6F38];
  sub_1D6B534AC(0, &qword_1EC892648, MEMORY[0x1E69D6F38]);
  sub_1D6B53468(&qword_1EC892650, &qword_1EC892648, v13, MEMORY[0x1E69D6F40]);
  sub_1D7259A2C();
  v14 = *(v6 + 8);
  v14(v9, v5);
  v21 = v18;
  v15 = swift_allocObject();
  *(v15 + 16) = 6;
  *v9 = v15;
  v12(v9, v11, v5);
  v19 = v17;
  sub_1D7259A2C();
  return (v14)(v9, v5);
}

uint64_t sub_1D6B5252C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725A19C();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B53A4C(0, &qword_1EC892630, sub_1D6B533B0, &type metadata for A12_V15.Layout, MEMORY[0x1E69D74B0]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v41 - v24;
  v48 = a1;
  KeyPath = swift_getKeyPath();
  (*(v22 + 104))(v25, *MEMORY[0x1E69D7460], v21);
  if (!*(a2 + 16))
  {
    __break(1u);
    goto LABEL_5;
  }

  v41 = KeyPath;
  v42 = v21;
  sub_1D5BE3ED8(a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v19, type metadata accessor for HeadlineViewLayout.Context);
  v27 = v11[5];
  v28 = *MEMORY[0x1E69D7348];
  v29 = sub_1D725A34C();
  v30 = *(v29 - 8);
  (*(v30 + 104))(&v14[v27], v28, v29);
  (*(v30 + 56))(&v14[v27], 0, 1, v29);
  v31 = MEMORY[0x1E69DDC70];
  *v14 = 2;
  *&v14[v11[6]] = 5;
  v32 = *v31;
  *&v14[v11[7]] = v32;
  v33 = qword_1EDF386E8;
  v34 = v32;
  if (v33 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  *(&v41 - 4) = v19;
  *(&v41 - 3) = v14;
  v40 = v10;
  (*(v43 + 104))(v45, *MEMORY[0x1E69D7378], v44, v37);
  sub_1D5BED904(0);
  swift_allocObject();
  sub_1D725A4CC();
  (*(v46 + 8))(v10, v47);
  sub_1D5BE798C(v14, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE798C(v19, type metadata accessor for HeadlineViewLayout.Context);
  v38 = MEMORY[0x1E69D6F38];
  sub_1D6B534AC(0, &qword_1EC892648, MEMORY[0x1E69D6F38]);
  sub_1D6B53468(&qword_1EC892650, &qword_1EC892648, v38, MEMORY[0x1E69D6F40]);
  v40 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v22 + 8))(v25, v42);
}

uint64_t sub_1D6B52AF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725A19C();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HeadlineViewLayout.Context(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B53A4C(0, &qword_1EC892630, sub_1D6B533B0, &type metadata for A12_V15.Layout, MEMORY[0x1E69D74B0]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v41 - v24;
  v48 = a1;
  KeyPath = swift_getKeyPath();
  (*(v22 + 104))(v25, *MEMORY[0x1E69D7460], v21);
  if (*(a2 + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v41 = KeyPath;
  v42 = v21;
  sub_1D5BE3ED8(a2 + *(v16 + 72) + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v19, type metadata accessor for HeadlineViewLayout.Context);
  v27 = v11[5];
  v28 = *MEMORY[0x1E69D7348];
  v29 = sub_1D725A34C();
  v30 = *(v29 - 8);
  (*(v30 + 104))(&v14[v27], v28, v29);
  (*(v30 + 56))(&v14[v27], 0, 1, v29);
  v31 = MEMORY[0x1E69DDC70];
  *v14 = 2;
  *&v14[v11[6]] = 5;
  v32 = *v31;
  *&v14[v11[7]] = v32;
  v33 = qword_1EDF386E8;
  v34 = v32;
  if (v33 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  *(&v41 - 4) = v19;
  *(&v41 - 3) = v14;
  v40 = v10;
  (*(v43 + 104))(v45, *MEMORY[0x1E69D7378], v44, v37);
  sub_1D5BED904(0);
  swift_allocObject();
  sub_1D725A4CC();
  (*(v46 + 8))(v10, v47);
  sub_1D5BE798C(v14, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE798C(v19, type metadata accessor for HeadlineViewLayout.Context);
  v38 = MEMORY[0x1E69D6F38];
  sub_1D6B534AC(0, &qword_1EC892648, MEMORY[0x1E69D6F38]);
  sub_1D6B53468(&qword_1EC892650, &qword_1EC892648, v38, MEMORY[0x1E69D6F40]);
  v40 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v22 + 8))(v25, v42);
}

uint64_t sub_1D6B530D0@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  memcpy(v21, __src, sizeof(v21));
  sub_1D5BE5E28(0);
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *(v10 + 64);
  sub_1D5BE3ED8(a3, v12, type metadata accessor for HeadlineViewLayout.Context);
  memcpy((v13 + v14), v21, 0x130uLL);
  v16 = a4 + *(type metadata accessor for A12_V15.Bound(0) + 24);
  result = type metadata accessor for GroupLayoutContext(0);
  v18 = *(v16 + *(result + 28));
  v19 = __OFADD__(v18, a2);
  v20 = v18 + a2;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v13 + v15) = v20;
    *a5 = v11 | 0x4000000000000000;
  }

  return result;
}

unint64_t sub_1D6B531E4(uint64_t a1)
{
  *(a1 + 8) = sub_1D6B53214();
  result = sub_1D6B53268();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6B53214()
{
  result = qword_1EC8925E8;
  if (!qword_1EC8925E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8925E8);
  }

  return result;
}

unint64_t sub_1D6B53268()
{
  result = qword_1EC8925F0;
  if (!qword_1EC8925F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8925F0);
  }

  return result;
}

uint64_t type metadata accessor for A12_V15.Bound(uint64_t a1)
{
  result = qword_1EC892600;
  if (!qword_1EC892600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6B53330(uint64_t a1)
{
  result = sub_1D6B53AB4(&qword_1EC892610, type metadata accessor for A12_V15.Bound, &unk_1D7329480);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B533B0()
{
  result = qword_1EC892620;
  if (!qword_1EC892620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892620);
  }

  return result;
}

unint64_t sub_1D6B53404()
{
  result = qword_1EC892628;
  if (!qword_1EC892628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892628);
  }

  return result;
}

uint64_t sub_1D6B53468(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D6B534AC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6B534AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A12_V15.Layout;
    v8[1] = &type metadata for A12_V15.Layout.Attributes;
    v8[2] = sub_1D6B533B0();
    v8[3] = sub_1D6B53404();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6B53530(uint64_t a1)
{
  if (!qword_1EC892658)
  {
    sub_1D6B53A4C(255, &qword_1EC892660, sub_1D6B533B0, &type metadata for A12_V15.Layout, MEMORY[0x1E69D70D8]);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC892658);
    }
  }
}

unint64_t sub_1D6B535FC()
{
  result = qword_1EC892668;
  if (!qword_1EC892668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892668);
  }

  return result;
}

unint64_t sub_1D6B53654()
{
  result = qword_1EC892670;
  if (!qword_1EC892670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892670);
  }

  return result;
}

unint64_t sub_1D6B536AC()
{
  result = qword_1EC892678;
  if (!qword_1EC892678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892678);
  }

  return result;
}

unint64_t sub_1D6B53704()
{
  result = qword_1EC892680;
  if (!qword_1EC892680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892680);
  }

  return result;
}

uint64_t sub_1D6B53758@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D6B53A4C(0, &qword_1EC892688, sub_1D6B539F8, &type metadata for A12_V15.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B539F8();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D6B53AB4(&qword_1EDF1A740, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  v20 = 1;
  sub_1D5BD47D0(&qword_1EDF1B258, sub_1D5BEE208, MEMORY[0x1E69E6330]);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

unint64_t sub_1D6B539F8()
{
  result = qword_1EC892690;
  if (!qword_1EC892690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892690);
  }

  return result;
}

void sub_1D6B53A4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D6B53AB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D6B53B10()
{
  result = qword_1EC8926A0;
  if (!qword_1EC8926A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8926A0);
  }

  return result;
}

unint64_t sub_1D6B53B68()
{
  result = qword_1EC8926A8;
  if (!qword_1EC8926A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8926A8);
  }

  return result;
}

unint64_t sub_1D6B53BC0()
{
  result = qword_1EC8926B0;
  if (!qword_1EC8926B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8926B0);
  }

  return result;
}

uint64_t sub_1D6B53C14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_1D6B53C5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D6B53CC4(void *a1)
{
  v3 = v1;
  sub_1D6B54704(0, &qword_1EC8926C8, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B546B0();
  sub_1D7264B5C();
  LOBYTE(v13) = 0;
  sub_1D72643FC();
  if (!v2)
  {
    v13 = *(v3 + 16);
    v12[7] = 1;
    sub_1D5BBE0A8();
    sub_1D5B99688(&qword_1EDF04A90, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1D72643BC();
    LOBYTE(v13) = 2;
    sub_1D72643FC();
    LOBYTE(v13) = 3;
    sub_1D726441C();
    LOBYTE(v13) = 4;
    sub_1D726439C();
    LOBYTE(v13) = 5;
    sub_1D726441C();
    LOBYTE(v13) = 6;
    sub_1D726441C();
    LOBYTE(v13) = 7;
    sub_1D72643EC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6B53F74()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x6973736572706D69;
  if (v1 != 6)
  {
    v3 = 0x756F43746E657665;
  }

  v4 = 0x6B63696C43776172;
  if (v1 != 4)
  {
    v4 = 0x736B63696C63;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x696669746E656469;
  if (v1 != 2)
  {
    v5 = 7500899;
  }

  if (*v0)
  {
    v2 = 1936154996;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D6B5406C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6B54880(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6B54094(uint64_t a1)
{
  v2 = sub_1D6B546B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B540D0(uint64_t a1)
{
  v2 = sub_1D6B546B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6B5410C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1D6B54178(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    a1[2] = v7[2];
    a1[3] = v5;
    a1[4] = v8[0];
    *(a1 + 73) = *(v8 + 9);
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    a1[1] = v6;
  }

  return result;
}

void sub_1D6B54178(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D6B54704(0, &qword_1EC8926B8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v32 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B546B0();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v44[0]) = 0;
    v11 = sub_1D72642BC();
    v13 = v12;
    v38 = a2;
    sub_1D5BBE0A8();
    LOBYTE(v39) = 1;
    sub_1D5B99688(&qword_1EDF3C830, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1D726427C();
    v37 = v44[0];
    LOBYTE(v44[0]) = 2;
    v35 = sub_1D72642BC();
    v36 = v14;
    LOBYTE(v44[0]) = 3;
    sub_1D72642DC();
    v16 = v15;
    LOBYTE(v44[0]) = 4;
    v17 = sub_1D726424C();
    v54 = v18 & 1;
    LOBYTE(v44[0]) = 5;
    sub_1D72642DC();
    v20 = v19;
    LOBYTE(v44[0]) = 6;
    sub_1D72642DC();
    v34 = v17;
    v22 = v21;
    v51 = 7;
    v23 = sub_1D72642AC();
    LOBYTE(v17) = v24;
    (*(v7 + 8))(v10, v6);
    v25 = v17 & 1;
    v52 = v17 & 1;
    *&v39 = v11;
    *(&v39 + 1) = v13;
    v26 = v37;
    *&v40 = v37;
    v27 = v35;
    *(&v40 + 1) = v35;
    v28 = v36;
    *&v41 = v36;
    *(&v41 + 1) = v16;
    *&v42 = v34;
    v33 = v54;
    BYTE8(v42) = v54;
    *(&v42 + 9) = *v53;
    HIDWORD(v42) = *&v53[3];
    *v43 = v20;
    *&v43[8] = v22;
    *&v43[16] = v23;
    v43[24] = v25;
    sub_1D693E2F8(&v39, v44);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v44[0] = v11;
    v44[1] = v13;
    v44[2] = v26;
    v44[3] = v27;
    v44[4] = v28;
    v44[5] = v16;
    v44[6] = v34;
    v45 = v33;
    *v46 = *v53;
    *&v46[3] = *&v53[3];
    v47 = v20;
    v48 = v22;
    v49 = v23;
    v50 = v25;
    sub_1D693E354(v44);
    v29 = v42;
    v30 = v38;
    v38[2] = v41;
    v30[3] = v29;
    v30[4] = *v43;
    *(v30 + 73) = *&v43[9];
    v31 = v40;
    *v30 = v39;
    v30[1] = v31;
  }
}

unint64_t sub_1D6B546B0()
{
  result = qword_1EC8926C0;
  if (!qword_1EC8926C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8926C0);
  }

  return result;
}

void sub_1D6B54704(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6B546B0();
    v7 = a3(a1, &type metadata for DebugInspectionAggregate.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6B5477C()
{
  result = qword_1EC8926D0;
  if (!qword_1EC8926D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8926D0);
  }

  return result;
}

unint64_t sub_1D6B547D4()
{
  result = qword_1EC8926D8;
  if (!qword_1EC8926D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8926D8);
  }

  return result;
}

unint64_t sub_1D6B5482C()
{
  result = qword_1EC8926E0;
  if (!qword_1EC8926E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8926E0);
  }

  return result;
}

uint64_t sub_1D6B54880(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1936154996 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7500899 && a2 == 0xE300000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6B63696C43776172 && a2 == 0xE900000000000073 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736B63696C63 && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6973736572706D69 && a2 == 0xEB00000000736E6FLL || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x756F43746E657665 && a2 == 0xEA0000000000746ELL)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

void (*sub_1D6B54B8C(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1D6B54C1C;
}

void sub_1D6B54C1C(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    Strong = swift_unknownObjectWeakLoadStrong();
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
  }

  free(v3);
}

uint64_t sub_1D6B54CD0(void *a1, double *a2, void *a3, char *a4)
{
  v200 = a4;
  v201 = a3;
  v211 = a1;
  v6 = MEMORY[0x1E69E6720];
  sub_1D5BF525C(0, &qword_1EDF3B7E8, MEMORY[0x1E69D75E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v196 = &v182 - v9;
  v208 = type metadata accessor for HeadlineViewLayout.Context(0);
  v187 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208, v10);
  v195 = &v182 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v197 = &v182 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v188 = v18;
  v189 = &v182 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v186 = &v182 - v21;
  v185 = type metadata accessor for ImageRequestOptions(0);
  MEMORY[0x1EEE9AC00](v185, v22);
  v202 = (&v182 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24, v25);
  v210 = (&v182 - v26);
  sub_1D5BF525C(0, &qword_1EDF34AF0, type metadata accessor for FeedHeadline.State, v6);
  *&v29 = MEMORY[0x1EEE9AC00](v27 - 8, v28).n128_u64[0];
  v205 = &v182 - v30;
  v199 = *&a4[qword_1EDF33620];
  v31 = v199;
  [v199 setNumberOfLines_];
  v32 = *&a4[qword_1EDF33610];
  [v32 setNumberOfLines_];
  v33 = *&a4[qword_1EDF33600];
  [v33 setAttributedText_];
  v34 = *&a4[qword_1EDF33630];
  sub_1D725FBBC();
  v35 = *&a4[qword_1EDF33628];
  sub_1D725FBBC();
  v36 = *&a4[qword_1EDF33608];
  [v36 setHidden_];
  [*&v35[qword_1EDF1BA28] setHidden_];
  v37 = v31;
  v38 = a2;
  [v37 setFrame_];
  v39 = a2[16];
  v40 = a2[17];
  v41 = a2[18];
  v42 = a2[19];
  v207 = v32;
  [v32 setFrame_];
  v43 = a2[28];
  v44 = a2[29];
  v45 = a2[30];
  v46 = a2[31];
  v204 = v35;
  [v35 setFrame_];
  v47 = a2[34];
  v48 = a2[35];
  v49 = a2[36];
  v50 = a2[37];
  v183 = v34;
  [v34 setFrame_];
  v51 = a2[8];
  v52 = a2[9];
  v53 = a2[10];
  v54 = a2[11];
  v184 = v33;
  [v33 setFrame_];
  v55 = a2[12];
  v56 = a2[13];
  v57 = a2[14];
  v58 = a2[15];
  v198 = v36;
  [v36 setFrame_];
  v59 = *&a4[qword_1EDF33638];
  v60 = v201;
  v61 = a2[24];
  v62 = a2[25];
  v63 = a2[26];
  v64 = a2[27];
  v203 = v59;
  [v59 setFrame_];
  v65 = v208;
  v66 = v211;
  v67 = v60[3];
  v68 = __swift_project_boxed_opaque_existential_1(v60, v67);
  v220[3] = v67;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v220);
  (*(*(v67 - 8) + 16))(boxed_opaque_existential_1, v68, v67);
  v70 = sub_1D5BF9C38(v220);
  __swift_destroy_boxed_opaque_existential_1(v220);
  [v199 setAttributedText_];

  v71 = *(v66 + *(v65 + 32));
  if (v71)
  {
    v72 = v60[3];
    v73 = __swift_project_boxed_opaque_existential_1(v60, v72);
    v220[3] = v72;
    v74 = __swift_allocate_boxed_opaque_existential_1(v220);
    (*(*(v72 - 8) + 16))(v74, v73, v72);
    v71 = sub_1D5BF9C38(v220);
    __swift_destroy_boxed_opaque_existential_1(v220);
  }

  [v207 setAttributedText_];

  v75 = v208;
  v76 = v211;
  v77 = v60[3];
  v78 = __swift_project_boxed_opaque_existential_1(v60, v77);
  v220[3] = v77;
  v79 = __swift_allocate_boxed_opaque_existential_1(v220);
  (*(*(v77 - 8) + 16))(v79, v78, v77);
  v80 = sub_1D5BF9C38(v220);
  __swift_destroy_boxed_opaque_existential_1(v220);
  v81 = v198;
  [v198 setAttributedText_];

  [v81 setHidden_];
  v82 = v60[3];
  v83 = v60[4];
  __swift_project_boxed_opaque_existential_1(v60, v82);
  (*(v83 + 80))(v204, v82, v83, v38[33]);
  v84 = v60[3];
  v85 = v60[4];
  __swift_project_boxed_opaque_existential_1(v60, v84);
  v86 = v76 + *(v75 + 20);
  v193 = *(type metadata accessor for FeedHeadline(0) + 40);
  v87 = v205;
  sub_1D5BFA07C(&v86[v193], v205, type metadata accessor for FeedHeadline.State);
  v88 = type metadata accessor for FeedHeadline.State(0);
  v89 = *(v88 - 8);
  v191 = *(v89 + 56);
  v192 = v88;
  v190 = v89 + 56;
  v191(v87, 0, 1);
  (*(v85 + 88))(v203, v87, v84, v85);
  sub_1D5BFA5EC(v87);
  v209 = *(v86 + 5);
  v90 = [v209 articleID];
  v91 = v200;
  [v200 setAccessibilityIdentifier_];

  MEMORY[0x1EEE9AC00](v92, v93);
  sub_1D5BFDF44(0);
  sub_1D5BFDEFC(qword_1EDF329C8, sub_1D5BFDF44, &protocol conformance descriptor for CellAutomation<A>);
  sub_1D72634BC();
  [v91 setIsAccessibilityElement_];
  sub_1D5BF525C(0, &qword_1EDF195A0, sub_1D5B58D88, MEMORY[0x1E69E6F90]);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_1D7270C10;
  v95 = v60[3];
  v96 = __swift_project_boxed_opaque_existential_1(v60, v95);
  v220[3] = v95;
  v97 = __swift_allocate_boxed_opaque_existential_1(v220);
  (*(*(v95 - 8) + 16))(v97, v96, v95);
  *(v94 + 32) = sub_1D5BFDFA0(v220);
  *(v94 + 40) = v98;

  __swift_destroy_boxed_opaque_existential_1(v220);
  LOBYTE(v220[0]) = v86[56];
  *(v94 + 48) = sub_1D5BFE2F4();
  *(v94 + 56) = v99;
  sub_1D725CE4C();
  v101 = v100;

  if (v101)
  {
    v102 = sub_1D726203C();
  }

  else
  {
    v102 = 0;
  }

  v103 = v200;
  [v200 setAccessibilityLabel_];

  v104 = v209;
  v105 = [v209 language];
  [v103 setAccessibilityLanguage_];

  [v207 frame];
  if (CGRectIsEmpty(v221))
  {
    v106 = 0;
  }

  else
  {
    v106 = [v104 shortExcerpt];
  }

  [v103 setAccessibilityValue_];

  v107 = *&v103[qword_1EDF33618];
  v108 = *v211;
  v109 = *v38;
  v110 = v38[1];
  v111 = v38[2];
  v112 = v38[3];
  v182 = v206[14];
  sub_1D5BFE544(v107, v108, v182, v109, v110, v111, v112);
  v113 = *(v86 + 2);
  v194 = v86;
  v114 = v86[24];
  v220[0] = v113;
  LOBYTE(v220[1]) = v114;
  sub_1D5BFB840(0, &qword_1EDF19A18, qword_1EDF35078, &protocol descriptor for FeedItemViewLayoutDirectionAdjustable, MEMORY[0x1E69E6F90]);
  v115 = swift_allocObject();
  *(v115 + 16) = xmmword_1D7279960;
  *(v115 + 56) = sub_1D725FBCC();
  *(v115 + 64) = &off_1F51E4308;
  v116 = v183;
  *(v115 + 32) = v183;
  v117 = sub_1D5BFE56C();
  *(v115 + 96) = v117;
  *(v115 + 104) = &off_1F51E42F8;
  v119 = v198;
  v118 = v199;
  *(v115 + 72) = v199;
  *(v115 + 136) = v117;
  *(v115 + 144) = &off_1F51E42F8;
  *(v115 + 112) = v119;
  *(v115 + 176) = v117;
  *(v115 + 184) = &off_1F51E42F8;
  v120 = v207;
  *(v115 + 152) = v207;
  *(v115 + 216) = v117;
  *(v115 + 224) = &off_1F51E42F8;
  v121 = v184;
  *(v115 + 192) = v184;
  v183 = v116;
  v122 = v118;
  v123 = v119;
  v124 = v120;
  v125 = v121;
  sub_1D5BFE5B8(v220, v103, v115);
  swift_setDeallocating();
  sub_1D5B49474(0, qword_1EDF35078, &protocol descriptor for FeedItemViewLayoutDirectionAdjustable);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v126 = [objc_opt_self() mainScreen];
  [v126 scale];
  v128 = v127;

  v129 = [v103 traitCollection];
  v130 = *(v185 + 24);
  v131 = sub_1D725CB5C();
  v132 = *(v131 - 1);
  v133 = *(v132 + 56);
  v134 = v210;
  v207 = v131;
  v198 = (v132 + 56);
  v199 = v133;
  (v133)(v210 + v130, 1, 1);
  *v134 = v128;
  v134[1] = v129;
  v135 = type metadata accessor for PublisherLogoProcessorRequest(0);
  v136 = (v211 + *(v208 + 24));
  v137 = v136[3];
  v138 = v136[4];
  v139 = __swift_project_boxed_opaque_existential_1(v136, v137);
  v140 = v202;
  sub_1D5BFA07C(v134, v202, type metadata accessor for ImageRequestOptions);
  v141 = memcpy(v220, v38, 0x130uLL);
  v143 = MEMORY[0x1EEE9AC00](v141, v142);
  v145 = &v182 - v144;
  (*(v146 + 16))(&v182 - v144, v139, v137, v143);
  v147 = *(v138 + 8);
  v148 = swift_unknownObjectRetain_n();
  v149 = sub_1D5BFE7AC(v148, v220, v145, v140, v135, &type metadata for HeadlineViewLayout.Attributes, v137, &protocol witness table for HeadlineViewLayout.Attributes, v147);
  v150 = v149;
  if (v149)
  {
    v149 = sub_1D5BFDEFC(&qword_1EDF20D90, type metadata accessor for PublisherLogoProcessorRequest, &protocol conformance descriptor for PublisherLogoProcessorRequest);
  }

  else
  {
    v135 = 0;
    v220[1] = 0;
    v220[2] = 0;
  }

  v151 = v195;
  v152 = v189;
  v153 = v201;
  v220[0] = v150;
  v220[3] = v135;
  v220[4] = v149;
  v154 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v155 = v186;
  sub_1D5BFA07C(v211, v186, type metadata accessor for HeadlineViewLayout.Context);
  sub_1D5B68374(v153, v219);
  sub_1D5BFA07C(v155, v152, type metadata accessor for HeadlineViewLayout.Context);
  sub_1D5B68374(v219, &v217);
  v156 = v197;
  sub_1D5BFA07C(v155, v197, type metadata accessor for HeadlineViewLayout.Context);
  sub_1D5B68374(v219, v216);
  sub_1D5BFA07C(v155, v151, type metadata accessor for HeadlineViewLayout.Context);
  sub_1D5B68374(v219, v215);
  v157 = (*(v187 + 80) + 24) & ~*(v187 + 80);
  v158 = (v188 + v157 + 7) & 0xFFFFFFFFFFFFFFF8;
  v159 = swift_allocObject();
  *(v159 + 16) = v154;
  sub_1D5C165B8(v155, v159 + v157);
  sub_1D5B63F14(v219, v159 + v158);
  sub_1D5BFED1C(v220, &v212);
  v160 = v213;
  swift_retain_n();
  if (v160)
  {
    sub_1D5BFF260(v152, type metadata accessor for HeadlineViewLayout.Context);
    __swift_destroy_boxed_opaque_existential_1(&v217);
    sub_1D5B63F14(&v212, v214);
    v161 = v206;
    __swift_project_boxed_opaque_existential_1(v206 + 9, v206[12]);
    v162 = sub_1D725D0BC();
    if (v162)
    {
      v163 = v162;
      sub_1D5BFF260(v197, type metadata accessor for HeadlineViewLayout.Context);
      __swift_destroy_boxed_opaque_existential_1(v216);
      sub_1D5C167D4(0, v154, v151, v215);
      v164 = v163;
      sub_1D725FBBC();

      sub_1D5BFF260(v151, type metadata accessor for HeadlineViewLayout.Context);
      __swift_destroy_boxed_opaque_existential_1(v215);

      __swift_destroy_boxed_opaque_existential_1(v214);
    }

    else
    {
      v165 = v197;
      sub_1D5C167D4(1, v154, v197, v216);
      sub_1D725FBBC();
      LODWORD(v211) = [objc_opt_self() areAnimationsEnabled];
      v166 = swift_allocObject();
      swift_weakInit();
      v167 = swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_1D5BFF260(v165, type metadata accessor for HeadlineViewLayout.Context);
      __swift_destroy_boxed_opaque_existential_1(v216);
      v168 = swift_allocObject();
      *(v168 + 16) = v167;
      *(v168 + 24) = v166;
      *(v168 + 32) = sub_1D6B5676C;
      *(v168 + 40) = v159;
      *(v168 + 48) = v211;
      sub_1D725FB6C();

      v161 = v206;
      sub_1D5BFF260(v151, type metadata accessor for HeadlineViewLayout.Context);
      __swift_destroy_boxed_opaque_existential_1(v215);
      __swift_destroy_boxed_opaque_existential_1(v214);
    }
  }

  else
  {
    swift_retain_n();
    sub_1D5C1661C(&v212);
    sub_1D5C167D4(5, v154, v152, &v217);
    sub_1D725FBBC();

    sub_1D5BFF260(v151, type metadata accessor for HeadlineViewLayout.Context);
    __swift_destroy_boxed_opaque_existential_1(v215);

    sub_1D5BFF260(v156, type metadata accessor for HeadlineViewLayout.Context);
    __swift_destroy_boxed_opaque_existential_1(v216);

    sub_1D5BFF260(v152, type metadata accessor for HeadlineViewLayout.Context);
    __swift_destroy_boxed_opaque_existential_1(&v217);

    v161 = v206;
  }

  sub_1D5C1661C(v220);
  v169 = v202;
  sub_1D5BFA07C(v210, v202, type metadata accessor for ImageRequestOptions);
  v170 = v196;
  (v199)(v196, 1, 1, v207);
  memset(v220, 0, 40);
  v171 = sub_1D5BFF2C0(v209, v38, v169, v170, v220);
  v172 = v171;
  if (v171)
  {
    v173 = type metadata accessor for ThumbnailProcessorRequest(0);
    v171 = sub_1D5BFDEFC(qword_1EDF23E18, type metadata accessor for ThumbnailProcessorRequest, &protocol conformance descriptor for ThumbnailProcessorRequest);
  }

  else
  {
    v173 = 0;
    v220[1] = 0;
    v220[2] = 0;
  }

  v220[0] = v172;
  v220[3] = v173;
  v220[4] = v171;
  sub_1D5BFED1C(v220, &v217);
  if (v218)
  {
    sub_1D5B63F14(&v217, v219);
    __swift_project_boxed_opaque_existential_1(v161 + 4, v161[7]);
    v174 = sub_1D725D0BC();
    if (v174)
    {
      v175 = v174;
      sub_1D725FBBC();

      __swift_destroy_boxed_opaque_existential_1(v219);
    }

    else
    {
      sub_1D725FBBC();
      v176 = [objc_opt_self() areAnimationsEnabled];
      v177 = swift_allocObject();
      swift_weakInit();
      v178 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v179 = swift_allocObject();
      *(v179 + 16) = v178;
      *(v179 + 24) = v177;
      *(v179 + 32) = 0;
      *(v179 + 40) = 0;
      *(v179 + 48) = v176;

      sub_1D725FB6C();

      __swift_destroy_boxed_opaque_existential_1(v219);
    }
  }

  else
  {
    sub_1D5C1661C(&v217);
    sub_1D725FBBC();
  }

  sub_1D5C1661C(v220);
  v180 = v205;
  sub_1D5BFA07C(&v194[v193], v205, type metadata accessor for FeedHeadline.State);
  (v191)(v180, 0, 1, v192);
  sub_1D5BFFE28(v203, v180);
  sub_1D5BFA5EC(v180);
  return sub_1D5BFF260(v210, type metadata accessor for ImageRequestOptions);
}

void sub_1D6B5610C(void *a1, const void *a2, char *a3, uint64_t a4, uint64_t a5)
{
  memcpy(__dst, a2, sizeof(__dst));
  v9 = type metadata accessor for HeadlineViewLayout.Context(0);
  sub_1D6B54CD0(a1, __dst, (a1 + *(v9 + 24)), a3);
  v10 = *&a3[qword_1EDF33628];
  [*(v10 + qword_1EDF1BA08) setHidden_];
  [*(v10 + qword_1EDF1BA30) setHidden_];
  [*(v10 + qword_1EDF1BA38) setHidden_];
  [*(v10 + qword_1EDF1BA40) setHidden_];
  v11 = qword_1EDF1BA28;
  v12 = __dst[21];
  rect.origin.x = __dst[20];
  v13 = __dst[22];
  v14 = __dst[23];
  v15 = __dst[28];
  v16 = __dst[29];
  v17 = __dst[30];
  v18 = __dst[31];
  v19 = *(v10 + qword_1EDF1BA28);
  v32.origin.x = v15;
  v32.origin.y = v16;
  v32.size.width = v17;
  v32.size.height = v18;
  v20 = -CGRectGetMinX(v32);
  v33.origin.x = v15;
  v33.origin.y = v16;
  v33.size.width = v17;
  v33.size.height = v18;
  MinY = CGRectGetMinY(v33);
  v34.origin.x = rect.origin.x;
  v34.origin.y = v12;
  v34.size.width = v13;
  v34.size.height = v14;
  v35 = CGRectOffset(v34, v20, MinY);
  [v19 setFrame_];

  [*(v10 + v11) setHidden_];
  v22 = *(v10 + v11);
  v23 = swift_allocObject();
  v23[2] = a4;
  v23[3] = a5;
  v23[4] = a3;
  v29 = sub_1D6B56758;
  v30 = v23;
  *&rect.origin.y = MEMORY[0x1E69E9820];
  *&rect.size.width = 1107296256;
  *&rect.size.height = sub_1D5B6B06C;
  v28 = &block_descriptor_81;
  v24 = _Block_copy(&rect.origin.y);
  v25 = v22;

  v26 = a3;

  [v25 onTouchUpInside_];
  _Block_release(v24);
}

uint64_t sub_1D6B56384(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for FeedActionSender(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v9 = 0;
  type metadata accessor for FeedAction(0);
  swift_storeEnumTagMultiPayload();
  v10 = *(a3 + qword_1EDF33628);
  *&v9[*(v6 + 28)] = v10;
  v11 = v10;
  a1(v9);
  return sub_1D5BFF260(v9, type metadata accessor for FeedActionSender);
}

__n128 sub_1D6B56468@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5BF525C(0, &qword_1EDF43990, MEMORY[0x1E69B3E58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v17 - v6;
  v8 = type metadata accessor for FeedHeadline(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HeadlineViewLayout.Context(0);
  sub_1D5BFA07C(a1 + *(v13 + 20), v12, type metadata accessor for FeedHeadline);
  sub_1D5BC7A6C(&v12[*(v9 + 52)], v7);
  v14 = swift_unknownObjectRetain();
  sub_1D7155764(v14, v7, v18);
  sub_1D5BFF260(v12, type metadata accessor for FeedHeadline);
  v15 = v18[3];
  *(a2 + 48) = v18[2];
  *(a2 + 64) = v15;
  *(a2 + 80) = v19;
  result = v18[1];
  *(a2 + 16) = v18[0];
  *(a2 + 32) = result;
  *a2 = 0x656C6369747261;
  *(a2 + 8) = 0xE700000000000000;
  return result;
}

uint64_t sub_1D6B56604()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return swift_deallocClassInstance();
}

void sub_1D6B5665C(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1D6B566E4(uint64_t **a1))(void *a1)
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
  v2[4] = sub_1D6B54B8C(v2);
  return sub_1D5FE8C5C;
}

void sub_1D6B56770(char a1)
{
  v3 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  sub_1D5C167D4(a1, *(v1 + 16), v1 + v4, (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t getEnumTagSinglePayload for FormatWorkspaceSettings(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = v4 - 2;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

unint64_t sub_1D6B568F4(void *a1)
{
  a1[1] = sub_1D6658ADC();
  a1[2] = sub_1D6658E10();
  result = sub_1D6B5692C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6B5692C()
{
  result = qword_1EC8926E8;
  if (!qword_1EC8926E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8926E8);
  }

  return result;
}

unint64_t sub_1D6B56980(uint64_t a1)
{
  result = sub_1D6B569A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B569A8()
{
  result = qword_1EC8926F0;
  if (!qword_1EC8926F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8926F0);
  }

  return result;
}

uint64_t TraversalOnlyEncoder.init(codingPath:userInfo:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t TraversalOnlyEncoder.unkeyedContainer()@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  a1[3] = &type metadata for TraversalOnlyEncoder.UnkeyedContainer;
  a1[4] = sub_1D5D2A614();
  *a1 = v4;
  a1[1] = v3;
  a1[2] = 0;
}

uint64_t TraversalOnlyEncoder.singleValueContainer()@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  a1[3] = &type metadata for TraversalOnlyEncoder.SingleValueContainer;
  a1[4] = sub_1D5D2A55C();
  *a1 = v4;
  a1[1] = v3;
}

double sub_1D6B56B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 + 16);
  v9 = *(a3 + 24);

  sub_1D5D29028(a2, v8, v9, &v13);

  TraversalOnlyEncoder.container<A>(keyedBy:)(v10, a4, a5, v11);

  return result;
}

double sub_1D6B56BF4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);

  sub_1D5D29028(a1, v5, v6, &v8);

  *(a3 + 24) = &type metadata for TraversalOnlyEncoder.UnkeyedContainer;
  *(a3 + 32) = sub_1D5D2A614();
  result = *&v8;
  *a3 = v8;
  *(a3 + 16) = 0;
  return result;
}

void *sub_1D6B56C9C@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  a1[3] = &type metadata for TraversalOnlyEncoder;
  a1[4] = sub_1D5D28FD4();
  sub_1D5D290FC(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 56) = &type metadata for TraversalOnlyEncoder.AnyCodingKey;
  *(inited + 64) = sub_1D5D2A838();
  v6 = swift_allocObject();
  *(inited + 32) = v6;
  *(v6 + 16) = 0x7265707573;
  *(v6 + 24) = 0xE500000000000000;
  *(v6 + 32) = 0;
  *(v6 + 40) = 1;

  result = sub_1D5D291B8(inited);
  *a1 = v4;
  a1[1] = v3;
  return result;
}

double sub_1D6B56D80@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[3] = &type metadata for TraversalOnlyEncoder;
  a3[4] = sub_1D5D28FD4();
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);

  sub_1D5D29028(a1, v7, v6, a3);

  return result;
}

void sub_1D6B571B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v4 + 1;
    sub_1D5D290FC(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;

    v8 = sub_1D72644BC();
    v10 = v9;
    *(inited + 56) = &type metadata for TraversalOnlyEncoder.AnyCodingKey;
    *(inited + 64) = sub_1D5D2A838();
    v11 = swift_allocObject();
    *(inited + 32) = v11;
    *(v11 + 16) = v8;
    *(v11 + 24) = v10;
    *(v11 + 32) = v4;
    *(v11 + 40) = 0;
    v12 = sub_1D5D291B8(inited);
    TraversalOnlyEncoder.container<A>(keyedBy:)(v12, a2, a3, v13);
  }
}

void sub_1D6B572E4(void *a1@<X8>)
{
  v3 = v1[2];
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = *v1;
    v4 = v1[1];
    v1[2] = v3 + 1;
    sub_1D5D290FC(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;

    v7 = sub_1D72644BC();
    v9 = v8;
    *(inited + 56) = &type metadata for TraversalOnlyEncoder.AnyCodingKey;
    *(inited + 64) = sub_1D5D2A838();
    v10 = swift_allocObject();
    *(inited + 32) = v10;
    *(v10 + 16) = v7;
    *(v10 + 24) = v9;
    *(v10 + 32) = v3;
    *(v10 + 40) = 0;
    sub_1D5D291B8(inited);
    a1[3] = &type metadata for TraversalOnlyEncoder.UnkeyedContainer;
    a1[4] = sub_1D5D2A614();
    *a1 = v5;
    a1[1] = v4;
    a1[2] = 0;
  }
}

void sub_1D6B573F8(void *a1@<X8>)
{
  v3 = v1[2];
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = *v1;
    v4 = v1[1];
    v1[2] = v3 + 1;
    a1[3] = &type metadata for TraversalOnlyEncoder;
    a1[4] = sub_1D5D28FD4();
    sub_1D5D290FC(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;

    v7 = sub_1D72644BC();
    v9 = v8;
    *(inited + 56) = &type metadata for TraversalOnlyEncoder.AnyCodingKey;
    *(inited + 64) = sub_1D5D2A838();
    v10 = swift_allocObject();
    *(inited + 32) = v10;
    *(v10 + 16) = v7;
    *(v10 + 24) = v9;
    *(v10 + 32) = v3;
    *(v10 + 40) = 0;
    sub_1D5D291B8(inited);
    *a1 = v5;
    a1[1] = v4;
  }
}

uint64_t sub_1D6B57894()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1D7264A0C();
  sub_1D72621EC();
  sub_1D7264A2C();
  if (v2 != 1)
  {
    MEMORY[0x1DA6FC0B0](v1);
  }

  return sub_1D7264A5C();
}

uint64_t sub_1D6B57920(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1D72621EC();
  if (v3 == 1)
  {
    return sub_1D7264A2C();
  }

  sub_1D7264A2C();
  return MEMORY[0x1DA6FC0B0](v2);
}

uint64_t sub_1D6B57984(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1D7264A0C();
  sub_1D72621EC();
  sub_1D7264A2C();
  if (v3 != 1)
  {
    MEMORY[0x1DA6FC0B0](v2);
  }

  return sub_1D7264A5C();
}

uint64_t sub_1D6B57A0C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

uint64_t sub_1D6B57A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D72644BC();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_1D6B57A7C(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v6 || (v7 = sub_1D72646CC(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v9 = v5;
      }

      else
      {
        v9 = 1;
      }

      if ((v9 & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1D6B57B00(uint64_t a1)
{
  v2 = sub_1D5D2A838();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B57B3C(uint64_t a1)
{
  v2 = sub_1D5D2A838();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D6B57BBC()
{
  result = qword_1EC8926F8;
  if (!qword_1EC8926F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8926F8);
  }

  return result;
}

uint64_t UILegibilityWeight.description.getter(uint64_t a1)
{
  v1 = 1684828002;
  v2 = 0x6E776F6E6B6E75;
  if (!a1)
  {
    v2 = 0x72616C75676572;
  }

  if (a1 != 1)
  {
    v1 = v2;
  }

  if (a1 == -1)
  {
    return 0x6669636570736E75;
  }

  else
  {
    return v1;
  }
}

BOOL UILegibilityWeight.isBoldTextEnabled.getter(_BOOL8 result)
{
  if (result >= 2)
  {
    return UIAccessibilityIsBoldTextEnabled();
  }

  return result;
}

uint64_t sub_1D6B57CB4()
{
  v1 = *v0;
  v2 = 1684828002;
  v3 = 0x6E776F6E6B6E75;
  if (!*v0)
  {
    v3 = 0x72616C75676572;
  }

  if (v1 != 1)
  {
    v2 = v3;
  }

  if (v1 == -1)
  {
    return 0x6669636570736E75;
  }

  else
  {
    return v2;
  }
}

NewsFeed::FormatImageGravity_optional __swiftcall FormatImageGravity.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D6B57D8C(uint64_t a1)
{
  v1 = FormatImageGravity.description.getter(a1);
  v3 = v2;
  if (v1 == FormatImageGravity.description.getter(v1) && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1D72646CC();
  }

  return v6 & 1;
}

uint64_t sub_1D6B57E28()
{
  v0 = sub_1D7264A0C();
  FormatImageGravity.description.getter(v0);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6B57E90(uint64_t a1)
{
  FormatImageGravity.description.getter(a1);
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6B57EF4(uint64_t a1)
{
  v1 = sub_1D7264A0C();
  FormatImageGravity.description.getter(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6B57F64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = FormatImageGravity.description.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1D6B58008()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 0x657A69736572;
    v8 = 0x7341657A69736572;
    if (v1 != 10)
    {
      v8 = 0xD000000000000010;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 0x7468676952706F74;
    v10 = 0x654C6D6F74746F62;
    if (v1 != 7)
    {
      v10 = 0x69526D6F74746F62;
    }

    if (v1 != 6)
    {
      v9 = v10;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x7265746E6563;
    v3 = 1952867692;
    v4 = 0x7468676972;
    if (v1 != 4)
    {
      v4 = 0x7466654C706F74;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 7368564;
    if (v1 != 1)
    {
      v5 = 0x6D6F74746F62;
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
}

unint64_t sub_1D6B5817C()
{
  result = qword_1EC892700;
  if (!qword_1EC892700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892700);
  }

  return result;
}

unint64_t sub_1D6B581D0(uint64_t a1)
{
  *(a1 + 8) = sub_1D6B58200();
  result = sub_1D6B58254();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6B58200()
{
  result = qword_1EC892708;
  if (!qword_1EC892708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892708);
  }

  return result;
}

unint64_t sub_1D6B58254()
{
  result = qword_1EC892710;
  if (!qword_1EC892710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892710);
  }

  return result;
}

unint64_t sub_1D6B582A8(uint64_t a1)
{
  result = sub_1D6B582D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B582D0()
{
  result = qword_1EC892718;
  if (!qword_1EC892718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892718);
  }

  return result;
}

unint64_t sub_1D6B58324(void *a1)
{
  a1[1] = sub_1D666B730();
  a1[2] = sub_1D666B9E4();
  result = sub_1D6B5817C();
  a1[3] = result;
  return result;
}

uint64_t sub_1D6B58464()
{
  sub_1D5B67084(0, &qword_1EC892730, &type metadata for SportsStandingConcern, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B67084(0, &qword_1EC892738, &type metadata for SportsStandingConcern, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EC892720 = result;
  return result;
}

uint64_t sub_1D6B585D0()
{
  sub_1D5B67084(0, &qword_1EC892730, &type metadata for SportsStandingConcern, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B67084(0, &qword_1EC892738, &type metadata for SportsStandingConcern, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EC892728 = result;
  return result;
}

uint64_t static Commands.Sports.ReportStanding.all.getter()
{
  sub_1D5B67084(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D72816D0;
  if (qword_1EC87D910 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_1EC892720;
  v1 = qword_1EC87D918;

  if (v1 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_1EC892728;

  return v0;
}

uint64_t static ContextMenuItem.report(scoreConcern:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_1D725DC6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((1 << v2) & 9) != 0)
  {
    if (qword_1EDF3ADE0 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (((1 << v2) & 0x12) != 0)
  {
    if (qword_1EDF3AD98 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (qword_1EDF3ADC8 != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_8:

  sub_1D6B16ACC(a1, v2);
  (*(v5 + 104))(v8, *MEMORY[0x1E69D7B48], v4);
  v10 = a1;
  v11 = v2;
  swift_allocObject();
  sub_1D6B58EA8(a1, v2);
  return sub_1D725D3AC();
}

uint64_t static ContextMenuItem.report(standingConcern:)(uint64_t a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) == 0)
  {
    if (qword_1EC87D910 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_1EC87D918 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:

  sub_1D6D0FA44(a1);
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
  v8[1] = a1;
  swift_allocObject();

  return sub_1D725D3AC();
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE14manageMySportsACyFZ_0()
{
  v0 = sub_1D725DC6C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF169E8 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();

  v7 = [v6 bundleForClass_];
  sub_1D725811C();

  v8 = sub_1D726203C();
  v9 = [objc_opt_self() systemImageNamed_];

  (*(v1 + 104))(v4, *MEMORY[0x1E69D7B48], v0);
  sub_1D725D3DC();
  swift_allocObject();
  return sub_1D725D3AC();
}

double sub_1D6B58EA8(uint64_t a1, unsigned __int8 a2)
{
  if (a2 > 2u)
  {
    if (a2 == 3 || a2 == 4 || a2 == 5)
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
  }

  return result;
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE15openSportsEvent3forAcD0I22ScoreDataVisualizationC_tFZ_0(uint64_t a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF3AD30 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();

  v9 = [v8 bundleForClass_];
  sub_1D725811C();

  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
  v11 = a1;
  v12 = 0;
  sub_1D725D3DC();
  swift_allocObject();
  return sub_1D725D3AC();
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE15openSportsEvent3forACSo19FCHeadlineProviding_p_tFZ_0(uint64_t a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF3AD30 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();

  swift_unknownObjectRetain();
  v9 = [v8 bundleForClass_];
  sub_1D725811C();

  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
  v11 = a1;
  v12 = 1;
  sub_1D725D3DC();
  swift_allocObject();
  return sub_1D725D3AC();
}

uint64_t sub_1D6B592F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725DC6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF3AD10 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();

  v11 = [v10 bundleForClass_];
  sub_1D725811C();

  v12 = sub_1D726203C();
  v13 = [objc_opt_self() systemImageNamed_];

  (*(v5 + 104))(v8, *MEMORY[0x1E69D7B48], v4);
  v15[0] = a1;
  v15[1] = a2;
  sub_1D725D3DC();
  swift_allocObject();
  return sub_1D725D3AC();
}

uint64_t _s5TeaUI15SharingActivityC8NewsFeedE15openSportsEvent3forACSo19FCHeadlineProviding_p_tFZ_0(uint64_t a1)
{
  v1 = sub_1D725DFEC();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  if (qword_1EDF3AD30 != -1)
  {
    swift_once();
  }

  swift_unknownObjectRetain();
  sub_1D726203C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
  sub_1D725DFDC();
  sub_1D725D5DC();
  swift_allocObject();
  return sub_1D725D5CC();
}

uint64_t _s8NewsFeed14FormatResizingO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v2 + 16);
  swift_beginAccess();
  v5 = *(v3 + 16);

  v6 = sub_1D5E1F5F0(v4, v5);

  return v6 & 1;
}

unint64_t sub_1D6B598B0(uint64_t a1)
{
  result = sub_1D6B598D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B598D8()
{
  result = qword_1EC892740;
  if (!qword_1EC892740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892740);
  }

  return result;
}

unint64_t sub_1D6B5992C(void *a1)
{
  a1[1] = sub_1D5F8FC50();
  a1[2] = sub_1D5F8F3E0();
  result = sub_1D6B59964();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6B59964()
{
  result = qword_1EC892748;
  if (!qword_1EC892748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892748);
  }

  return result;
}

uint64_t FormatProgressCircleOptions.clockwise.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1D5E04CC4(v2, v3, v4);
}

void FormatProgressCircleOptions.radius.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
}

uint64_t sub_1D6B59A64(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  sub_1D5E04CC4(*a1, v4, v5);
  result = sub_1D5D2F2C4(v6, v7, v8);
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  return result;
}

uint64_t FormatProgressCircleOptions.clockwise.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_1D5D2F2C4(*(v1 + 8), *(v1 + 16), *(v1 + 24));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

void FormatProgressCircleOptions.stepPercentage.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 32) = v2;
}

void FormatProgressCircleOptions.minPercentage.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 40) = v2;
}

void FormatProgressCircleOptions.maxPercentage.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 48) = v2;
}

void FormatProgressCircleOptions.value(contextLayoutOptions:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 40);
  v17 = *(v2 + 32);
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);

  v12 = sub_1D5E02AFC(a1, v5);

  if (!v3)
  {
    sub_1D5E04CC4(v6, v7, v8);
    v13 = FormatBoolean.value(contextLayoutOptions:)(a1);
    sub_1D5D2F2C4(v6, v7, v8);

    v14 = sub_1D5E02AFC(a1, v17);

    v15 = sub_1D5E02AFC(a1, v9);

    v16 = sub_1D5E02AFC(a1, v10);

    *a2 = v12;
    *(a2 + 8) = v13 & 1;
    *(a2 + 16) = v14;
    *(a2 + 24) = v15;
    *(a2 + 32) = v16;
    *(a2 + 40) = v11;
  }
}

uint64_t sub_1D6B59F4C()
{
  v1 = *v0;
  v2 = 0x737569646172;
  v3 = 0x65637265506E696DLL;
  v4 = 0x656372655078616DLL;
  if (v1 != 4)
  {
    v4 = 0x706143656E696CLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7369776B636F6C63;
  if (v1 != 1)
  {
    v5 = 0x6372655070657473;
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

uint64_t sub_1D6B5A02C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6B5AC48(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6B5A054(uint64_t a1)
{
  v2 = sub_1D6B5A814();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B5A090(uint64_t a1)
{
  v2 = sub_1D6B5A814();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatProgressCircleOptionsResolved.encode(to:)(void *a1)
{
  sub_1D6B5A868(0, &qword_1EC892750, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v12 - v8;
  v12[3] = *(v1 + 8);
  v10 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B5A814();
  sub_1D7264B5C();
  v19 = 0;
  sub_1D726441C();
  if (!v2)
  {
    v18 = 1;
    sub_1D726440C();
    v17 = 2;
    sub_1D726441C();
    v16 = 3;
    sub_1D726441C();
    v15 = 4;
    sub_1D726441C();
    v14 = v10;
    v13 = 5;
    sub_1D666B294();
    sub_1D726443C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t FormatProgressCircleOptionsResolved.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6B5A868(0, &qword_1EC892760, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v22 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B5A814();
  sub_1D7264B0C();
  if (!v2)
  {
    v30 = 0;
    sub_1D72642DC();
    v12 = v11;
    v29 = 1;
    v23 = sub_1D72642CC() & 1;
    v28 = 2;
    sub_1D72642DC();
    v14 = v13;
    v27 = 3;
    sub_1D72642DC();
    v16 = v15;
    v26 = 4;
    sub_1D72642DC();
    v18 = v17;
    v24 = 5;
    sub_1D666B130();
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    v20 = v25;
    v21 = v23;
    *a2 = v12;
    *(a2 + 8) = v21;
    *(a2 + 16) = v14;
    *(a2 + 24) = v16;
    *(a2 + 32) = v18;
    *(a2 + 40) = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t _s8NewsFeed27FormatProgressCircleOptionsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v28 = *(a1 + 48);
  v29 = *(a1 + 40);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 40);
  v27 = *(a2 + 48);
  v25 = *(a1 + 56);
  v26 = *(a2 + 56);

  sub_1D633A310(v2, v6);
  v12 = v11;

  if (v12 & 1) != 0 && (v33 = v3, v34 = v4, v35 = v5, v30 = v7, v31 = v8, v32 = v9, sub_1D5E04CC4(v3, v4, v5), sub_1D5E04CC4(v7, v8, v9), v13 = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(&v33, &v30), sub_1D5D2F2C4(v30, v31, v32), sub_1D5D2F2C4(v33, v34, v35), (v13) && (, , sub_1D633A310(v29, v10), v15 = v14, , , (v15) && (, , sub_1D633A310(v28, v27), v17 = v16, , , (v17))
  {
    v18 = 1953789282;
    if (v25)
    {
      v19 = v26;
      if (v25 == 1)
      {
        v22 = 0xE500000000000000;
        v23 = 0x646E756F72;
      }

      else
      {
        v22 = 0xE600000000000000;
        v23 = 0x657261757173;
      }
    }

    else
    {
      v22 = 0xE400000000000000;
      v23 = 1953789282;
      v19 = v26;
    }

    if (v19)
    {
      if (v19 == 1)
      {
        v24 = 0xE500000000000000;
        v18 = 0x646E756F72;
      }

      else
      {
        v24 = 0xE600000000000000;
        v18 = 0x657261757173;
      }
    }

    else
    {
      v24 = 0xE400000000000000;
    }

    if (v23 == v18 && v22 == v24)
    {
      v20 = 1;
    }

    else
    {
      v20 = sub_1D72646CC();
    }
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

unint64_t sub_1D6B5A814()
{
  result = qword_1EC892758;
  if (!qword_1EC892758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892758);
  }

  return result;
}

void sub_1D6B5A868(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6B5A814();
    v7 = a3(a1, &type metadata for FormatProgressCircleOptionsResolved.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6B5A8CC(uint64_t a1)
{
  result = sub_1D6B5A8F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B5A8F4()
{
  result = qword_1EC892768;
  if (!qword_1EC892768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892768);
  }

  return result;
}

unint64_t sub_1D6B5A948(void *a1)
{
  a1[1] = sub_1D66ABFF4();
  a1[2] = sub_1D66FA708();
  result = sub_1D6B5A980();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6B5A980()
{
  result = qword_1EC892770;
  if (!qword_1EC892770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892770);
  }

  return result;
}

uint64_t sub_1D6B5A9D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1D6B5AA1C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1D6B5AA7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D6B5AAD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1D6B5AB44()
{
  result = qword_1EC892778;
  if (!qword_1EC892778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892778);
  }

  return result;
}

unint64_t sub_1D6B5AB9C()
{
  result = qword_1EC892780;
  if (!qword_1EC892780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892780);
  }

  return result;
}

unint64_t sub_1D6B5ABF4()
{
  result = qword_1EC892788;
  if (!qword_1EC892788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892788);
  }

  return result;
}

uint64_t sub_1D6B5AC48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737569646172 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7369776B636F6C63 && a2 == 0xE900000000000065 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6372655070657473 && a2 == 0xEE00656761746E65 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65637265506E696DLL && a2 == 0xED0000656761746ELL || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656372655078616DLL && a2 == 0xED0000656761746ELL || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x706143656E696CLL && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D72646CC();

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

void sub_1D6B5AE90(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F69746172 && a2 == 0xE500000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D6B5AF14(uint64_t a1)
{
  v2 = sub_1D6B5B0D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B5AF50(uint64_t a1)
{
  v2 = sub_1D6B5B0D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedGroupGlobalBundleArticleQuota.encode(to:)(void *a1)
{
  sub_1D6B5B2B0(0, &qword_1EC892790, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B5B0D4();
  sub_1D7264B5C();
  sub_1D726441C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D6B5B0D4()
{
  result = qword_1EC892798;
  if (!qword_1EC892798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892798);
  }

  return result;
}

uint64_t FeedGroupGlobalBundleArticleQuota.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  sub_1D6B5B2B0(0, &qword_1EC8927A0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B5B0D4();
  sub_1D7264B0C();
  if (!v2)
  {
    sub_1D72642DC();
    v12 = v11;
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D6B5B2B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6B5B0D4();
    v7 = a3(a1, &type metadata for FeedGroupGlobalBundleArticleQuota.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6B5B32C(void *a1)
{
  sub_1D6B5B2B0(0, &qword_1EC892790, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B5B0D4();
  sub_1D7264B5C();
  sub_1D726441C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D6B5B4AC()
{
  result = qword_1EC8927A8;
  if (!qword_1EC8927A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8927A8);
  }

  return result;
}

unint64_t sub_1D6B5B504()
{
  result = qword_1EC8927B0;
  if (!qword_1EC8927B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8927B0);
  }

  return result;
}

unint64_t sub_1D6B5B55C()
{
  result = qword_1EC8927B8;
  if (!qword_1EC8927B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8927B8);
  }

  return result;
}

void FormatMenuItemData.title.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  sub_1D5F26358(v2, v3, v4);
}

void FormatMenuItemData.image.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  sub_1D62B5FC8(v2, v3);
}

uint64_t sub_1D6B5B5E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_1D6B5B63C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

void sub_1D6B5B898(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  *a2 = v3;
}

uint64_t sub_1D6B5B918(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D72600DC();
}

void sub_1D6B5B98C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1D6B5BCF4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D72600CC();

    if (v9 >> 62)
    {
      goto LABEL_16;
    }

    v4 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      while (1)
      {
        v5 = 0;
        while ((v9 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1DA6FB460](v5);
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            sub_1D6B5CE98(v2, 0);

            return;
          }

LABEL_8:
          swift_getKeyPath();
          swift_getKeyPath();
          sub_1D72600CC();

          v2 = sub_1D6B5D760(v9, a1, a2, v7);

          if (v2)
          {
            goto LABEL_14;
          }

          ++v5;
          if (v6 == v4)
          {
            goto LABEL_17;
          }
        }

        if (v5 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_16:
        v4 = sub_1D7263BFC();
        if (!v4)
        {
          goto LABEL_17;
        }
      }

      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

LABEL_17:
  }

  sub_1D6B5BCF4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  if (v9)
  {

    swift_getKeyPath();
    swift_getKeyPath();

    sub_1D72600DC();
  }
}

id sub_1D6B5BC18()
{
  v1 = OBJC_IVAR____TtC8NewsFeed35DebugFormatLayoutTreeViewController____lazy_storage___layoutTreeViewController;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed35DebugFormatLayoutTreeViewController____lazy_storage___layoutTreeViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed35DebugFormatLayoutTreeViewController____lazy_storage___layoutTreeViewController);
  }

  else
  {
    v4 = v0;
    sub_1D6B5BCF4();
    type metadata accessor for DebugFormatLayoutTree(0);
    sub_1D6B5E9E4(&qword_1EC881188, type metadata accessor for DebugFormatLayoutTree, &unk_1D72F7CA0);
    sub_1D7260F8C();
    sub_1D6B5EA2C(0);
    v6 = objc_allocWithZone(v5);
    v7 = sub_1D726126C();
    v8 = *(v0 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_1D6B5BCF4()
{
  v1 = OBJC_IVAR____TtC8NewsFeed35DebugFormatLayoutTreeViewController____lazy_storage___model;
  if (*(v0 + OBJC_IVAR____TtC8NewsFeed35DebugFormatLayoutTreeViewController____lazy_storage___model))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed35DebugFormatLayoutTreeViewController____lazy_storage___model);
  }

  else
  {
    type metadata accessor for DebugFormatLayoutTree(0);
    swift_allocObject();

    v2 = sub_1D6846974(v3);
    *(v0 + v1) = v2;
  }

  return v2;
}

char *sub_1D6B5BD90(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_1D6B5E60C(0, v4);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC8NewsFeed35DebugFormatLayoutTreeViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC8NewsFeed35DebugFormatLayoutTreeViewController_styler;
  type metadata accessor for DebugFormatStyler();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *&v1[v11] = v12;
  *&v1[OBJC_IVAR____TtC8NewsFeed35DebugFormatLayoutTreeViewController____lazy_storage___layoutTreeViewController] = 0;
  *&v1[OBJC_IVAR____TtC8NewsFeed35DebugFormatLayoutTreeViewController____lazy_storage___model] = 0;
  *&v1[OBJC_IVAR____TtC8NewsFeed35DebugFormatLayoutTreeViewController_subscribers] = MEMORY[0x1E69E7CD0];
  *&v1[OBJC_IVAR____TtC8NewsFeed35DebugFormatLayoutTreeViewController_editor] = a1;
  v21.receiver = v1;
  v21.super_class = ObjectType;

  v13 = objc_msgSendSuper2(&v21, sel_initWithNibName_bundle_, 0, 0);

  sub_1D725B33C();

  sub_1D725B2EC();

  sub_1D725B33C();

  sub_1D725B2EC();

  v14 = sub_1D6B5BCF4();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = (v14 + OBJC_IVAR____TtC8NewsFeed21DebugFormatLayoutTree_onDidTapTreeItem);
  v17 = *(v14 + OBJC_IVAR____TtC8NewsFeed21DebugFormatLayoutTree_onDidTapTreeItem);
  v18 = *(v14 + OBJC_IVAR____TtC8NewsFeed21DebugFormatLayoutTree_onDidTapTreeItem + 8);
  *v16 = sub_1D6B5E6A4;
  v16[1] = v15;

  sub_1D5B74328(v17, v18);

  swift_beginAccess();
  sub_1D6B5E640(0, &qword_1EC88C8B8, sub_1D68470FC, MEMORY[0x1E695C070]);

  sub_1D72600AC();
  swift_endAccess();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1D6B5E9E4(&qword_1EC8927F8, sub_1D6B5E60C, MEMORY[0x1E695C068]);
  sub_1D72600FC();

  (*(v7 + 8))(v10, v6);
  swift_beginAccess();
  sub_1D726007C();
  swift_endAccess();

  return v13;
}

void sub_1D6B5C1C8(uint64_t a1)
{
  v2 = v1;
  v75 = type metadata accessor for DebugFormatLayoutModel(0);
  MEMORY[0x1EEE9AC00](v75, v4);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1D6B5BCF4();
    swift_getKeyPath();
    swift_getKeyPath();
    v83 = v15;
    sub_1D72600DC();
    swift_getKeyPath();
    swift_getKeyPath();
    v83 = v15;

    sub_1D72600DC();
    swift_getKeyPath();
    swift_getKeyPath();
    v83 = 0;

    sub_1D72600DC();
    return;
  }

  sub_1D6B5BCF4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v7 = v83;
  v74 = a1;
  v8 = a1 + OBJC_IVAR____TtC8NewsFeed27DebugFormatCanvasViewResult_bindResult;
  v76 = type metadata accessor for DebugFormatCanvasBindResult(0);
  v77 = v8;
  v9 = *(v8 + *(v76 + 20));
  if (v9 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
  {
    v72 = v2;
    if (i)
    {
      break;
    }

    v71 = MEMORY[0x1E69E7CC0];
LABEL_14:
    v85 = 0;
    if (v7 >> 62)
    {
      v81 = sub_1D7263BFC();
    }

    else
    {
      v81 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v69 = OBJC_IVAR____TtC8NewsFeed35DebugFormatLayoutTreeViewController____lazy_storage___model;
    if (v81)
    {
      v78 = v7 & 0xFFFFFFFFFFFFFF8;
      v79 = v7 & 0xC000000000000001;
      v16 = v71 & 0xFFFFFFFFFFFFFF8;
      if (v71 < 0)
      {
        v17 = v71;
      }

      else
      {
        v17 = v71 & 0xFFFFFFFFFFFFFF8;
      }

      v67 = v17;
      v70 = v71 & 0xC000000000000001;
      v18 = 4;
      v73 = v71 >> 62;
      v68 = v71 & 0xFFFFFFFFFFFFFF8;
      do
      {
        v9 = v18 - 4;
        if (v79)
        {
          v23 = MEMORY[0x1DA6FB460](v18 - 4, v7);
          v22 = v18 - 3;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_59;
          }
        }

        else
        {
          if (v9 >= *(v78 + 16))
          {
            goto LABEL_60;
          }

          v23 = *(v7 + 8 * v18);

          v22 = v18 - 3;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_59;
          }
        }

        if (v73)
        {
          if (v9 == sub_1D7263BFC())
          {
LABEL_48:

            break;
          }
        }

        else if (v9 == *(v16 + 16))
        {
          goto LABEL_48;
        }

        if (v70)
        {
          v24 = MEMORY[0x1DA6FB460](v18 - 4, v71);
        }

        else
        {
          if (v9 >= *(v16 + 16))
          {
            goto LABEL_61;
          }

          v24 = *(v71 + 8 * v18);
        }

        v25 = *(v23 + OBJC_IVAR____TtC8NewsFeed28DebugFormatLayoutTreePackage_layoutResult);
        v26 = *(v25 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_inventory);
        v27 = *(v24 + OBJC_IVAR____TtC8NewsFeed28DebugFormatLayoutTreePackage_layoutResult);
        v28 = *(v27 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_inventory);
        v29 = *(v26 + 16) == *(v28 + 16) && *(v26 + 24) == *(v28 + 24);
        if (v29 || (sub_1D72646CC()) && (*(v25 + 16) == *(v27 + 16) ? (v30 = *(v25 + 24) == *(v27 + 24)) : (v30 = 0), v30 || (sub_1D72646CC()))
        {
          swift_getKeyPath();
          v80 = v22;
          swift_getKeyPath();
          sub_1D72600CC();

          v19 = v83;
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v83) = v19;

          sub_1D72600DC();
          swift_getKeyPath();
          swift_getKeyPath();
          sub_1D72600CC();

          v20 = v83;
          swift_getKeyPath();
          swift_getKeyPath();
          sub_1D72600CC();

          v21 = v83;
          swift_getKeyPath();
          swift_getKeyPath();

          sub_1D72600CC();
          v2 = v72;

          v22 = v80;

          sub_1D6E391E0(v20, v21, v83, &v85);
          v16 = v68;
        }

        else
        {
        }

        ++v18;
      }

      while (v22 != v81);
    }

    v31 = *(v2 + v69);
    v9 = *(v77 + *(v76 + 24));
    v32 = MEMORY[0x1E69E7CC0];
    v84 = MEMORY[0x1E69E7CC0];
    v33 = *(v9 + 16);
    v73 = OBJC_IVAR____TtC8NewsFeed27DebugFormatCanvasViewResult_debugView;
    v70 = v31;

    v2 = &off_1E84D3000;
    v34 = v32;
LABEL_50:
    v35 = v33;
    while (1)
    {
      if (!v35)
      {

        type metadata accessor for DebugFormatLayoutTreeItem(0);
        v65 = sub_1D72626EC();

        swift_getKeyPath();
        swift_getKeyPath();
        v83 = v65;
        sub_1D72600DC();
        swift_getKeyPath();
        swift_getKeyPath();
        v83 = v71;

        sub_1D72600DC();
        v66 = v85;
        swift_getKeyPath();
        swift_getKeyPath();
        v83 = v66;

        sub_1D72600DC();

        return;
      }

      v33 = v35 - 1;
      if (v35 - 1 >= *(v9 + 16))
      {
        break;
      }

      v36 = *(v9 + 8 * v35-- + 24);
      if (v36 >> 61 == 5)
      {
        v7 = v36 & 0x1FFFFFFFFFFFFFFFLL;
        v37 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v38 = *(v74 + v73);
        swift_retain_n();

        [v38 bounds];
        v80 = v40;
        v81 = v39;
        v78 = v42;
        v79 = v41;
        [v38 bounds];
        v44 = v43;
        v46 = v45;
        v48 = v47;
        v50 = v49;
        [v38 bounds];
        v52 = v51;
        v54 = v53;
        v56 = v55;
        v58 = v57;
        v59 = *(v37 + 16);
        v60 = *(v37 + 24);

        sub_1D69F7E68(v59, v60, &v6[*(v75 + 32)]);

        *v6 = v37;
        v61 = v80;
        *(v6 + 1) = v81;
        *(v6 + 2) = v61;
        v62 = v78;
        *(v6 + 3) = v79;
        *(v6 + 4) = v62;
        v6[40] = 0;
        *(v6 + 6) = v44;
        *(v6 + 7) = v46;
        *(v6 + 8) = v48;
        *(v6 + 9) = v50;
        *(v6 + 5) = 0u;
        *(v6 + 6) = 0u;
        *(v6 + 14) = v52;
        *(v6 + 15) = v54;
        *(v6 + 16) = v56;
        *(v6 + 17) = v58;
        type metadata accessor for DebugFormatLayoutTreeItem(0);
        v63 = swift_allocObject();
        sub_1D725894C();
        *(v63 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_stateMachine) = 0;
        sub_1D6B5E6B4(v6, v63 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_model, type metadata accessor for DebugFormatLayoutModel);
        swift_beginAccess();
        LOBYTE(v82) = 1;
        sub_1D726009C();
        swift_endAccess();
        *(v63 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_isEnabled) = 1;
        swift_beginAccess();
        v82 = v34;
        sub_1D6B5E640(0, &qword_1EC881110, type metadata accessor for DebugFormatLayoutTreeItem, MEMORY[0x1E69E62F8]);
        sub_1D726009C();
        swift_endAccess();
        sub_1D6B5E984(v6, type metadata accessor for DebugFormatLayoutModel);

        MEMORY[0x1DA6F9CE0](v64);
        if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

  v83 = MEMORY[0x1E69E7CC0];

  sub_1D7263ECC();
  if ((i & 0x8000000000000000) == 0)
  {
    v11 = v7;
    v12 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1DA6FB460](v12, v9);
      }

      else
      {
        v13 = *(v9 + 8 * v12 + 32);
      }

      ++v12;
      type metadata accessor for DebugFormatLayoutTreePackage(0);
      swift_allocObject();

      sub_1D6CCB9F4(v14, v13);

      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
    }

    while (i != v12);

    v71 = v83;
    v2 = v72;
    v7 = v11;
    goto LABEL_14;
  }

  __break(1u);
}

void sub_1D6B5CD74(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = objc_allocWithZone(MEMORY[0x1E69DD060]);
    v5 = v2;
    v6 = [v4 initWithTarget:a1 action:sel_didTapOnOverlay_];
    [v5 addGestureRecognizer_];
  }
}

void sub_1D6B5CE28(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1D6B5CE98(a1, a2 & 1);
  }
}

uint64_t sub_1D6B5CE98(uint64_t a1, char a2)
{
  sub_1D68D696C(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v13 - v9;
  sub_1D6B5BCF4();
  swift_getKeyPath();
  swift_getKeyPath();
  v13[1] = a1;

  sub_1D72600DC();
  sub_1D6B5E6B4(a1 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_model, v10, type metadata accessor for DebugFormatLayoutModel);
  v11 = type metadata accessor for DebugFormatLayoutModelSelection(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  sub_1D6B5E6B4(v10, v6, sub_1D68D696C);

  sub_1D725B32C();

  return sub_1D6B5E984(v10, sub_1D68D696C);
}

void sub_1D6B5D074(uint64_t *a1, uint64_t a2)
{
  sub_1D68D696C(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v31 - v9;
  v11 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;

    sub_1D725B31C();

    a = v31.a;
    if (*&v31.a)
    {
      if (v11)
      {
        v15 = *(v11 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_model + 48);
        v16 = *(v11 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_model + 64);
      }

      else
      {
        v15 = 0uLL;
        v16 = 0uLL;
      }

      v17 = (*&v31.a + OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_selectionFrame);
      *v17 = v15;
      v17[1] = v16;
      sub_1D6B5F198();
    }

    sub_1D725B31C();

    v18 = v31.a;
    if (*&v31.a)
    {
      if (v11)
      {
        v19 = *(v11 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_model + 80);
        v20 = *(v11 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_model + 88);
        v21 = *(v11 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_model + 96);
        v22 = *(v11 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_model + 104);
      }

      else
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
      }

      v23 = (*&v31.a + OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_selectionContentFrame);
      *v23 = v19;
      v23[1] = v20;
      v23[2] = v21;
      v23[3] = v22;
      v24 = *(*&v18 + OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_selectionView);
      v25 = *(*&v18 + OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_contentTransformation + 16);
      v26 = *(*&v18 + OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_contentTransformation + 32);
      *&v31.a = *(*&v18 + OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_contentTransformation);
      *&v31.c = v25;
      *&v31.tx = v26;
      *(v24 + OBJC_IVAR____TtC8NewsFeed24DebugFormatSelectionView_contentFrame) = CGRectApplyAffineTransform(*&v19, &v31);
      [*(v24 + OBJC_IVAR____TtC8NewsFeed24DebugFormatSelectionView_contentView) setFrame_];
    }

    v27 = &v13[OBJC_IVAR____TtC8NewsFeed35DebugFormatLayoutTreeViewController_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v28 = *(v27 + 1);
      ObjectType = swift_getObjectType();
      (*(v28 + 8))(v13, v11, ObjectType, v28);
      swift_unknownObjectRelease();
    }

    if (v11)
    {
      sub_1D6B5E6B4(v11 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_model, v10, type metadata accessor for DebugFormatLayoutModel);
      v30 = type metadata accessor for DebugFormatLayoutModelSelection(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v30 - 8) + 56))(v10, 0, 1, v30);
      sub_1D6B5E6B4(v10, v6, sub_1D68D696C);

      sub_1D725B32C();

      sub_1D6B5E984(v10, sub_1D68D696C);
    }
  }
}

void sub_1D6B5D408()
{
  v1 = v0;
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2;
  v4 = [objc_opt_self() systemBackgroundColor];
  [v3 setBackgroundColor_];

  v5 = sub_1D6B5BC18();
  [v1 addChildViewController_];

  v6 = [v1 view];
  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtC8NewsFeed35DebugFormatLayoutTreeViewController____lazy_storage___layoutTreeViewController;
  v9 = [*&v1[OBJC_IVAR____TtC8NewsFeed35DebugFormatLayoutTreeViewController____lazy_storage___layoutTreeViewController] view];
  if (v9)
  {
    v10 = v9;
    [v7 addSubview_];

    [*&v1[v8] didMoveToParentViewController_];

    sub_1D725974C();

    sub_1D725975C();

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1D6B5D5C0(uint64_t a1)
{
  v1 = sub_1D7262FBC();
  if (v1)
  {
    v2 = v1;
    sub_1D725E68C();
  }
}

uint64_t sub_1D6B5D760(unint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v6 = a1;
  if (a1 >> 62)
  {
    goto LABEL_56;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    while ((v6 & 0xC000000000000001) != 0)
    {
      for (i = 0; ; ++i)
      {
        v9 = MEMORY[0x1DA6FB460](i, v6);
        v11 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v12 = v9;
        v13 = (v9 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_model);
        v14 = *(v9 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_model);
        v15 = *(v9 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_model + 40);
        if (v15 > 2)
        {
          if (v15 == 3)
          {
            v42 = *v13;
            v19 = sub_1D6EE8B60(v10);
            v18 = v20;
            goto LABEL_19;
          }

          if (v15 == 4)
          {
            v17 = v13[1];
          }

          else
          {
            v17 = *(v13[2] + 32);
          }
        }

        else
        {
          if (!*(v9 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_model + 40))
          {
            v19 = *(v14 + 16);
            v18 = *(v14 + 24);
            goto LABEL_19;
          }

          if (v15 == 1)
          {
            v16 = &OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes;
          }

          else
          {
            v16 = &OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes;
          }

          v17 = *(v14 + *v16);
        }

        v19 = *(v17 + 48);
        v18 = *(v17 + 56);
LABEL_19:

        if (v19 == a2 && v18 == a3)
        {
          goto LABEL_51;
        }

        v22 = sub_1D72646CC();

        if (v22)
        {
          return v12;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_1D72600CC();

        v23 = sub_1D6B5D760(v42, a2, a3);

        swift_unknownObjectRelease();
        if (v23)
        {
          return v23;
        }

        if (v11 == v7)
        {
          return 0;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      v7 = sub_1D7263BFC();
      if (!v7)
      {
        return 0;
      }
    }

    v24 = (v6 + 32);
    for (j = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; --j)
    {
      if (!j)
      {
        goto LABEL_55;
      }

      v12 = *v24;
      v26 = *v24 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_model;
      v27 = *v26;
      v28 = *(v26 + 40);
      if (v28 <= 2)
      {
        break;
      }

      if (v28 == 3)
      {
        v42 = *v26;
        v34 = sub_1D6EE8B60(a4);
        v33 = v35;
LABEL_40:

        goto LABEL_43;
      }

      v31 = *(v26 + 8);
      v30 = *(v26 + 16);
      v32 = *(v26 + 24);
      v41 = *(v26 + 32);
      if (v28 == 4)
      {

        sub_1D6AC2C20(v27, v31, v30, v32, v41, 4u);

        v34 = *(v31 + 48);
        v33 = *(v31 + 56);
      }

      else
      {

        sub_1D6AC2C20(v27, v31, v30, v32, v41, 5u);

        v37 = *(v30 + 32);

        v34 = *(v37 + 48);
        v33 = *(v37 + 56);
      }

LABEL_43:
      if (v34 == a2 && v33 == a3)
      {
LABEL_51:

        return v12;
      }

      v39 = sub_1D72646CC();

      if (v39)
      {
        return v12;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1D72600CC();

      v6 = v42;
      v23 = sub_1D6B5D760(v42, a2, a3);

      if (v23)
      {
        return v23;
      }

      ++v24;
      if (!--v7)
      {
        return 0;
      }
    }

    if (*(v26 + 40))
    {
      if (v28 == 1)
      {
        v29 = &OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes;
      }

      else
      {
        v29 = &OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes;
      }

      v36 = *(v27 + *v29);
      v34 = *(v36 + 48);
      v33 = *(v36 + 56);
    }

    else
    {
      v34 = *(v27 + 16);
      v33 = *(v27 + 24);
    }

    goto LABEL_40;
  }

  return 0;
}

uint64_t sub_1D6B5DB7C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>, __n128 a3@<Q0>)
{
  result = 0;
  v5 = *a1 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_model;
  v6 = *v5;
  v7 = *(v5 + 40);
  if (v7 > 2)
  {
    if ((v7 - 4) >= 2)
    {
      result = sub_1D6EE65AC(a3);
      *a2 = result;
      return result;
    }

    goto LABEL_9;
  }

  if (v7)
  {
    if (v7 != 1)
    {
      if (*(v6 + 56))
      {
        result = 0;
      }

      else
      {
        result = *(v6 + 48);
      }

      *a2 = result;
      return result;
    }

LABEL_9:
    *a2 = 0;
    return result;
  }

  if (*(v6 + 88))
  {
    result = -100;
  }

  else
  {
    result = *(v6 + 80);
  }

  *a2 = result;
  return result;
}

void sub_1D6B5DC3C(void *a1)
{

  sub_1D725B31C();

  if (!v40)
  {
    return;
  }

  v2 = v40;
  [a1 locationInView_];
  v4 = v3;
  v6 = v5;
  [v2 frame];
  v8 = v7;
  [v2 frame];
  v10 = v9;
  v39 = v2;

  v11 = swift_allocObject();
  *(v11 + 16) = MEMORY[0x1E69E7CC0];
  v38 = v11 + 16;
  sub_1D6B5BCF4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  if (v40 >> 62)
  {
    v12 = sub_1D7263BFC();
    if (v12)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v12 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
LABEL_4:
      if (v12 < 1)
      {
LABEL_38:
        __break(1u);
        return;
      }

      v13 = 0;
      v14 = v4 + v8;
      v15 = v6 + v10;
      do
      {
        if ((v40 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1DA6FB460](v13);
        }

        else
        {
        }

        ++v13;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1D72600CC();

        sub_1D6B5E078(v40, v2, v11, v14, v15);
      }

      while (v12 != v13);
    }
  }

  swift_beginAccess();
  v16 = *v38;
  v17 = *(*v38 + 16);
  if (v17)
  {
    v18 = *(v16 + 40);
    v19 = *(v16 + 32);

    v20 = 1;
LABEL_13:
    v21 = (v16 + 40 + 16 * v20);
    while (1)
    {
      if (v17 == v20)
      {
        v26 = *(v16 + 16);
        goto LABEL_21;
      }

      if (v20 >= *(v16 + 16))
      {
        break;
      }

      ++v20;
      v22 = v21 + 2;
      v23 = *v21;
      v24 = *v21 < v18;
      v21 += 2;
      if (v24)
      {
        v25 = *(v22 - 3);

        v19 = v25;
        v18 = v23;
        goto LABEL_13;
      }
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v26 = 0;
  v19 = 0;
  v18 = 0.0;
LABEL_21:
  v27 = 0;
  v28 = MEMORY[0x1E69E7CC0];
LABEL_22:
  v29 = v16 + 40 + 16 * v27;
  while (v26 != v27)
  {
    v30 = v29;
    if (v27 >= *(v16 + 16))
    {
      __break(1u);
      goto LABEL_37;
    }

    ++v27;
    v29 += 16;
    if (v19)
    {
      v31 = *v30;
      if (*v30 == v18)
      {
        v32 = *(v30 - 1);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D6999E7C(0, *(v28 + 16) + 1, 1);
        }

        v34 = *(v28 + 16);
        v33 = *(v28 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_1D6999E7C((v33 > 1), v34 + 1, 1);
        }

        *(v28 + 16) = v34 + 1;
        v35 = v28 + 16 * v34;
        *(v35 + 32) = v32;
        *(v35 + 40) = v31;
        goto LABEL_22;
      }
    }
  }

  v36 = *(v28 + 16);
  if (v36)
  {
    v37 = *(v28 + 16 + 16 * v36);

    sub_1D6B5CE98(v37, 1);
  }
}

void sub_1D6B5E078(unint64_t a1, char *a2, uint64_t a3, double a4, double a5)
{
  v9 = a1;
  if (a1 >> 62)
  {
    v10 = sub_1D7263BFC();
    if (!v10)
    {
      return;
    }
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      return;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
  }

  else
  {
    v11 = 0;
    v12 = &a2[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_contentTransformation];
    v13 = v9 & 0xC000000000000001;
    v36 = a4;
    v35 = v10;
    do
    {
      if (v13)
      {
        v15 = MEMORY[0x1DA6FB460](v11, v9);
      }

      else
      {
        v15 = *(v9 + 8 * v11 + 32);
      }

      if (*(v15 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_isEnabled))
      {
        v16 = v9;
        v39 = *(v15 + OBJC_IVAR____TtC8NewsFeed25DebugFormatLayoutTreeItem_model + 48);
        v17 = *(v12 + 1);
        *&v37.a = *v12;
        *&v37.c = v17;
        *&v37.tx = *(v12 + 2);
        v40 = CGRectApplyAffineTransform(v39, &v37);
        x = v40.origin.x;
        y = v40.origin.y;
        width = v40.size.width;
        v21 = a5;
        height = v40.size.height;
        [a2 frame];
        v24 = x + v23;
        [a2 frame];
        v26 = y + v25;
        v41.origin.x = x;
        v41.origin.y = y;
        v41.size.width = width;
        v41.size.height = height;
        v27 = CGRectGetWidth(v41);
        v42.origin.x = x;
        v42.origin.y = y;
        v42.size.width = width;
        v42.size.height = height;
        a5 = v21;
        v28 = CGRectGetHeight(v42);
        v43.origin.x = v24;
        v43.origin.y = v26;
        v43.size.width = v27;
        v43.size.height = v28;
        v38.x = v36;
        v38.y = v21;
        if (CGRectContainsPoint(v43, v38))
        {

          v44.origin.x = v24;
          v44.origin.y = v26;
          v44.size.width = v27;
          v44.size.height = v28;
          v29 = CGRectGetWidth(v44);
          v45.origin.x = v24;
          v45.origin.y = v26;
          v45.size.width = v27;
          v45.size.height = v28;
          v30 = CGRectGetHeight(v45);
          swift_beginAccess();
          v31 = *(a3 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(a3 + 16) = v31;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v31 = sub_1D6995DD0(0, v31[2] + 1, 1, v31);
            *(a3 + 16) = v31;
          }

          v34 = v31[2];
          v33 = v31[3];
          if (v34 >= v33 >> 1)
          {
            v31 = sub_1D6995DD0((v33 > 1), v34 + 1, 1, v31);
          }

          v31[2] = v34 + 1;
          v14 = &v31[2 * v34];
          *(v14 + 4) = v15;
          v14[5] = v29 * v30;
          *(a3 + 16) = v31;
          swift_endAccess();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_1D72600CC();

        sub_1D6B5E078(*&v37.a, a2, a3, v36, v21);

        v9 = v16;
        v10 = v35;
      }

      else
      {
      }

      ++v11;
    }

    while (v10 != v11);
  }
}

uint64_t sub_1D6B5E514()
{

  sub_1D725972C();

  if (v1)
  {
    return 0x656E657474616C46;
  }

  else
  {
    return 0;
  }
}

id sub_1D6B5E594()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  return v1;
}

void sub_1D6B5E640(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6B5E6B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D6B5E780(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  *a4 = v5;
}

uint64_t sub_1D6B5E810(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D72600DC();
}

void sub_1D6B5E888(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  *a2 = v3;
}

uint64_t sub_1D6B5E908(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D72600DC();
}

uint64_t sub_1D6B5E984(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6B5E9E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D6B5EA2C(uint64_t a1)
{
  if (!qword_1EC892800)
  {
    sub_1D6B5EA88();
    v1 = sub_1D726127C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC892800);
    }
  }
}

unint64_t sub_1D6B5EA88()
{
  result = qword_1EC892808;
  if (!qword_1EC892808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892808);
  }

  return result;
}

void sub_1D6B5EADC()
{
  *(v0 + OBJC_IVAR____TtC8NewsFeed35DebugFormatLayoutTreeViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC8NewsFeed35DebugFormatLayoutTreeViewController_styler;
  type metadata accessor for DebugFormatStyler();
  v2 = swift_allocObject();
  *(v0 + v1) = v2;
  *(v2 + 16) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed35DebugFormatLayoutTreeViewController____lazy_storage___layoutTreeViewController) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed35DebugFormatLayoutTreeViewController____lazy_storage___model) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed35DebugFormatLayoutTreeViewController_subscribers) = MEMORY[0x1E69E7CD0];
  sub_1D726402C();
  __break(1u);
}

void sub_1D6B5F0B4()
{
  v1 = &v0[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_viewResultFrame];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  v2 = &v0[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_contentFrame];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v6.origin.x = 0.0;
  v6.origin.y = 0.0;
  v6.size.width = 0.0;
  v6.size.height = 0.0;
  v7 = CGRectOffset(v6, *&v0[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_contentOffset], *&v0[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_contentOffset + 8]);
  [v0 setFrame_];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    *(Strong + OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_separators) = MEMORY[0x1E69E7CC0];

    sub_1D63213F4();
  }
}

void sub_1D6B5F1BC(void *a1, void *a2, void *a3, void *a4)
{
  v7 = *(v4 + *a1);
  v22 = *(v4 + *a2);
  v8 = *(v4 + OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_contentTransformation + 16);
  *&v21.a = *(v4 + OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_contentTransformation);
  *&v21.c = v8;
  *&v21.tx = *(v4 + OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_contentTransformation + 32);
  v23 = CGRectApplyAffineTransform(v22, &v21);
  [v7 setFrame_];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    [v7 frame];
    v11 = &v10[*a3];
    *v11 = v12;
    *(v11 + 1) = v13;
    *(v11 + 2) = v14;
    *(v11 + 3) = v15;
    v16 = *&v10[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_verticalRulerEdgeView];
    v17 = &v16[*a4];
    *v17 = v12;
    *(v17 + 1) = v13;
    *(v17 + 2) = v14;
    *(v17 + 3) = v15;
    [v16 setNeedsLayout];
    v18 = *&v10[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_horizontalRulerEdgeView];
    v19 = &v18[*a4];
    v20 = *(v11 + 1);
    *v19 = *v11;
    *(v19 + 1) = v20;
    [v18 setNeedsLayout];
  }
}

void sub_1D6B5F2CC(char *a1)
{
  v34 = CGRectOffset(*&a1[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_contentFrame], *&a1[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_contentOffset], *&a1[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_contentOffset + 8]);
  v2 = &a1[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_contentTransformation];
  v3 = *&a1[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_contentTransformation + 16];
  *&v33.a = *&a1[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_contentTransformation];
  *&v33.c = v3;
  *&v33.tx = *&a1[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_contentTransformation + 32];
  v35 = CGRectApplyAffineTransform(v34, &v33);
  [a1 setFrame_];
  v4 = *&a1[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_selectionView];
  v36 = *&a1[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_selectionFrame];
  v5 = *(v2 + 1);
  *&v33.a = *v2;
  *&v33.c = v5;
  *&v33.tx = *(v2 + 2);
  v37 = CGRectApplyAffineTransform(v36, &v33);
  [v4 setFrame_];
  v38 = *&a1[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_selectionContentFrame];
  v6 = *(v2 + 1);
  *&v33.a = *v2;
  *&v33.c = v6;
  *&v33.tx = *(v2 + 2);
  *&v4[OBJC_IVAR____TtC8NewsFeed24DebugFormatSelectionView_contentFrame] = CGRectApplyAffineTransform(v38, &v33);
  [*&v4[OBJC_IVAR____TtC8NewsFeed24DebugFormatSelectionView_contentView] setFrame_];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [v4 frame];
    v9 = &v8[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_selectionFrame];
    *v9 = v10;
    *(v9 + 1) = v11;
    *(v9 + 2) = v12;
    *(v9 + 3) = v13;
    v14 = *&v8[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_verticalRulerEdgeView];
    v15 = &v14[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_selectionFrame];
    *v15 = v10;
    *(v15 + 1) = v11;
    *(v15 + 2) = v12;
    *(v15 + 3) = v13;
    [v14 setNeedsLayout];
    v16 = *&v8[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_horizontalRulerEdgeView];
    v17 = &v16[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_selectionFrame];
    v18 = *(v9 + 1);
    *v17 = *v9;
    *(v17 + 1) = v18;
    [v16 setNeedsLayout];
  }

  v19 = *&a1[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_metricSelectionView];
  v39 = *&a1[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_metricSelectionFrame];
  v20 = *(v2 + 1);
  *&v33.a = *v2;
  *&v33.c = v20;
  *&v33.tx = *(v2 + 2);
  v40 = CGRectApplyAffineTransform(v39, &v33);
  [v19 setFrame_];
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = v21;
    [v19 frame];
    v23 = &v22[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_metricSelectionFrame];
    *v23 = v24;
    *(v23 + 1) = v25;
    *(v23 + 2) = v26;
    *(v23 + 3) = v27;
    v28 = *&v22[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_verticalRulerEdgeView];
    v29 = &v28[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_metricSelectionFrame];
    *v29 = v24;
    *(v29 + 1) = v25;
    *(v29 + 2) = v26;
    *(v29 + 3) = v27;
    [v28 setNeedsLayout];
    v30 = *&v22[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_horizontalRulerEdgeView];
    v31 = &v30[OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_metricSelectionFrame];
    v32 = *(v23 + 1);
    *v31 = *v23;
    *(v31 + 1) = v32;
    [v30 setNeedsLayout];
  }
}

void sub_1D6B5F610()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  if ((objc_msgSendSuper2(&v10, sel_isUserInteractionEnabled) & 1) == 0)
  {
    v1 = &v0[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_selectionFrame];
    *v1 = 0u;
    *(v1 + 1) = 0u;
    sub_1D6B5F1BC(&OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_selectionView, &OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_selectionFrame, &OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_selectionFrame, &OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_selectionFrame);
    v2 = &v0[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_selectionContentFrame];
    *v2 = 0u;
    *(v2 + 1) = 0u;
    v3 = *&v0[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_selectionView];
    v4 = *&v0[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_contentTransformation + 16];
    *&v9.a = *&v0[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_contentTransformation];
    *&v9.c = v4;
    *&v9.tx = *&v0[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_contentTransformation + 32];
    v5 = 0;
    *&v4 = 0;
    v6 = 0;
    v7 = 0;
    *(v3 + OBJC_IVAR____TtC8NewsFeed24DebugFormatSelectionView_contentFrame) = CGRectApplyAffineTransform(*(&v4 - 8), &v9);
    [*(v3 + OBJC_IVAR____TtC8NewsFeed24DebugFormatSelectionView_contentView) setFrame_];
    v8 = &v0[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_metricSelectionFrame];
    *v8 = 0u;
    *(v8 + 1) = 0u;
    sub_1D6B5F1BC(&OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_metricSelectionView, &OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_metricSelectionFrame, &OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_metricSelectionFrame, &OBJC_IVAR____TtC8NewsFeed24DebugFormatRulerEdgeView_metricSelectionFrame);
  }
}

char *sub_1D6B5F740(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_selectionFrame];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v5 = &v1[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_selectionContentFrame];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v6 = &v1[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_metricSelectionFrame];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v7 = &v1[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_contentOffset];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v1[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_contentFrame];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v9 = &v1[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_contentTransformation];
  *v9 = 0x3FF0000000000000;
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0x3FF0000000000000;
  *(v9 + 4) = 0;
  *(v9 + 5) = 0;
  v10 = OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_selectionView;
  v11 = type metadata accessor for DebugFormatSelectionView();
  v12 = objc_allocWithZone(v11);
  *&v1[v10] = sub_1D71532B8(0, 0.0, 0.0, 0.0, 0.0);
  v13 = OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_metricSelectionView;
  v14 = objc_allocWithZone(v11);
  *&v1[v13] = sub_1D71532B8(1, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  v15 = &v1[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_viewResultFrame];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  swift_unknownObjectWeakAssign();
  v21.receiver = v1;
  v21.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v21, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v17 = *&v16[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_selectionView];
  v18 = v16;
  [v18 addSubview_];
  [v18 addSubview_];
  v20.receiver = v18;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, sel_setUserInteractionEnabled_, 1);
  sub_1D6B5F610();

  return v18;
}

void sub_1D6B5F948(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_viewResultFrame];
  v4 = *&v1[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_viewResultFrame];
  v5 = *&v1[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_viewResultFrame + 8];
  v6 = *&v1[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_viewResultFrame + 16];
  v7 = *&v1[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_viewResultFrame + 24];
  [*(a1 + OBJC_IVAR____TtC8NewsFeed27DebugFormatCanvasViewResult_debugView) frame];
  v40.origin.x = v8;
  v40.origin.y = v9;
  v40.size.width = v10;
  v40.size.height = v11;
  v36.origin.x = v4;
  v36.origin.y = v5;
  v36.size.width = v6;
  v36.size.height = v7;
  v37 = CGRectUnion(v36, v40);
  *v3 = v37;
  *&v1[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_contentFrame] = v37;
  v38 = CGRectOffset(v37, *&v1[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_contentOffset], *&v1[OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_contentOffset + 8]);
  [v1 setFrame_];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v34 = Strong;
  v13 = a1 + OBJC_IVAR____TtC8NewsFeed27DebugFormatCanvasViewResult_bindResult;
  v14 = *(v13 + *(type metadata accessor for DebugFormatCanvasBindResult(0) + 20));
  if (v14 >> 62)
  {
LABEL_24:
    v15 = sub_1D7263BFC();
    if (v15)
    {
LABEL_4:
      v16 = 0;
      v17 = MEMORY[0x1E69E7CC0];
      do
      {
        v18 = v16;
        while (1)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x1DA6FB460](v18, v14);
            v16 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              goto LABEL_22;
            }
          }

          else
          {
            if (v18 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_23;
            }

            v19 = *(v14 + 8 * v18 + 32);

            v16 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
LABEL_22:
              __break(1u);
LABEL_23:
              __break(1u);
              goto LABEL_24;
            }
          }

          v20 = (v19 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_debugGroupLayoutAttributes);
          if ((sub_1D726337C() & 1) == 0)
          {
            break;
          }

          ++v18;
          if (v16 == v15)
          {
            goto LABEL_26;
          }
        }

        v21 = *(v19 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_workspaceGroup + 8);
        v32 = *(v19 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_workspaceGroup);
        v22 = v20[1];
        v23 = v20[2];
        v24 = v20[3];
        v25 = v20[4];

        v39.origin.x = v22;
        v39.origin.y = v23;
        v39.size.width = v24;
        v39.size.height = v25;
        MaxY = CGRectGetMaxY(v39);
        v27 = *(v19 + 24);
        v31 = *(v19 + 16);

        v33 = v21;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1D6995F18(0, *(v17 + 2) + 1, 1, v17);
        }

        v29 = *(v17 + 2);
        v28 = *(v17 + 3);
        if (v29 >= v28 >> 1)
        {
          v17 = sub_1D6995F18((v28 > 1), v29 + 1, 1, v17);
        }

        *(v17 + 2) = v29 + 1;
        v30 = &v17[40 * v29];
        *(v30 + 4) = v32;
        *(v30 + 5) = v33;
        v30[6] = MaxY;
        *(v30 + 7) = v31;
        *(v30 + 8) = v27;
      }

      while (v16 != v15);
      goto LABEL_26;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_4;
    }
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_26:
  *&v34[OBJC_IVAR____TtC8NewsFeed20DebugFormatRulerView_separators] = v17;

  sub_1D63213F4();
}

void sub_1D6B5FD24()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_selectionFrame);
  *v1 = 0u;
  v1[1] = 0u;
  v2 = (v0 + OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_selectionContentFrame);
  *v2 = 0u;
  v2[1] = 0u;
  v3 = (v0 + OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_metricSelectionFrame);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = (v0 + OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_contentOffset);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_contentFrame);
  *v5 = 0u;
  v5[1] = 0u;
  v6 = (v0 + OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_contentTransformation);
  *v6 = 0x3FF0000000000000;
  v6[1] = 0;
  v6[2] = 0;
  v6[3] = 0x3FF0000000000000;
  v6[4] = 0;
  v6[5] = 0;
  v7 = OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_selectionView;
  v8 = type metadata accessor for DebugFormatSelectionView();
  v9 = objc_allocWithZone(v8);
  *(v0 + v7) = sub_1D71532B8(0, 0.0, 0.0, 0.0, 0.0);
  v10 = OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_metricSelectionView;
  v11 = objc_allocWithZone(v8);
  *(v0 + v10) = sub_1D71532B8(1, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  v12 = (v0 + OBJC_IVAR____TtC8NewsFeed22DebugFormatOverlayView_viewResultFrame);
  *v12 = 0u;
  v12[1] = 0u;
  sub_1D726402C();
  __break(1u);
}

__n128 ArticleThumbnailViewLayoutOptions.init(origin:sizeConstraint:aspectRatio:shadowRadius:cornerRadius:roundedCorners:layeredMedia:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unsigned __int8 a3@<W2>, __n128 *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>)
{
  v9 = a1[1].n128_u8[0];
  a4->n128_f64[0] = a5;
  a4->n128_f64[1] = a6;
  result = *a1;
  a4[1] = *a1;
  a4[2].n128_u8[0] = v9;
  a4[2].n128_f64[1] = a7;
  a4[3].n128_f64[0] = a8;
  a4[3].n128_f64[1] = a9;
  a4[4].n128_u64[0] = a2;
  a4[4].n128_u8[8] = a3;
  return result;
}

__n128 ArticleThumbnailViewLayoutOptions.sizeConstraint.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u8[0];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

uint64_t sub_1D6B5FEF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 73))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 72);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D6B5FF4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1D6B5FFDC()
{
  v1 = 0x676E6964646170;
  if (*v0 != 1)
  {
    v1 = 0x726F697270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E656E6F707865;
  }
}

uint64_t sub_1D6B60034@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6B606D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6B6005C(uint64_t a1)
{
  v2 = sub_1D6B60270();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B60098(uint64_t a1)
{
  v2 = sub_1D6B60270();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedLowFlowEstimationConfiguration.encode(to:)(void *a1)
{
  sub_1D6B604B4(0, &qword_1EC892860, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B60270();
  sub_1D7264B5C();
  v13 = 0;
  sub_1D726441C();
  if (!v1)
  {
    v12 = 1;
    sub_1D726441C();
    v11 = 2;
    sub_1D726441C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D6B60270()
{
  result = qword_1EC892868;
  if (!qword_1EC892868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892868);
  }

  return result;
}

uint64_t FeedLowFlowEstimationConfiguration.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  sub_1D6B604B4(0, &qword_1EC892870, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v18[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B60270();
  sub_1D7264B0C();
  if (!v2)
  {
    v18[15] = 0;
    sub_1D72642DC();
    v12 = v11;
    v18[14] = 1;
    sub_1D72642DC();
    v14 = v13;
    v18[13] = 2;
    sub_1D72642DC();
    v17 = v16;
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
    *(a2 + 1) = v14;
    *(a2 + 2) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D6B604B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6B60270();
    v7 = a3(a1, &type metadata for FeedLowFlowEstimationConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

id lowFlowEstimationConfiguration(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  [a1 exponent];
  v5 = v4;
  [a1 padding];
  v7 = v6;
  result = [a1 prior];
  *a2 = v5;
  a2[1] = v7;
  a2[2] = v9;
  return result;
}

unint64_t sub_1D6B605D4()
{
  result = qword_1EC892878;
  if (!qword_1EC892878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892878);
  }

  return result;
}

unint64_t sub_1D6B6062C()
{
  result = qword_1EC892880;
  if (!qword_1EC892880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892880);
  }

  return result;
}

unint64_t sub_1D6B60684()
{
  result = qword_1EC892888;
  if (!qword_1EC892888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892888);
  }

  return result;
}

uint64_t sub_1D6B606D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E656E6F707865 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E6964646170 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F697270 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t type metadata accessor for FormatAction(uint64_t a1)
{
  result = qword_1EDF33B68;
  if (!qword_1EDF33B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6B60838(uint64_t a1)
{
  result = type metadata accessor for FormatCommandAction();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FormatPurchaseData(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D6B608F0()
{
  v1 = type metadata accessor for FormatAction(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B609DC(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        return 1;
      }

      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if ((EnumCaseMultiPayload - 4) >= 2)
    {
      return 1;
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 7)
  {
LABEL_12:
    sub_1D6B60A40(v4);
    return 0;
  }

  if (EnumCaseMultiPayload == 8)
  {
LABEL_10:
    sub_1D6B60A40(v4);
    return 1;
  }

  return 0;
}

uint64_t sub_1D6B609DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6B60A40(uint64_t a1)
{
  v2 = type metadata accessor for FormatAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FormatStateViewNodeState.state.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatStateViewNodeState.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v36 = a2;
  v4 = sub_1D725895C();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B61B00(0);
  v9 = v8;
  v37 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B61C3C(0, &qword_1EDF19C98, MEMORY[0x1E69E6F48]);
  v38 = *(v13 - 8);
  v39 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v30 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B61B68();
  sub_1D7264B0C();
  if (v2)
  {
    v29 = a1;
  }

  else
  {
    v33 = a1;
    v17 = v37;
    v41 = 0;
    v18 = v39;
    v31 = sub_1D72642BC();
    v32 = v19;
    v40 = 1;
    sub_1D5C51470();
    v20 = v12;
    sub_1D726431C();
    v22 = sub_1D725A74C();
    (*(v17 + 8))(v20, v9);
    v23 = v7;
    sub_1D725894C();
    v24 = sub_1D725893C();
    v26 = v25;
    (*(v34 + 8))(v23, v35);
    (*(v38 + 8))(v16, v18);
    v27 = v36;
    *v36 = v24;
    v27[1] = v26;
    v28 = v32;
    v27[2] = v31;
    v27[3] = v28;
    v27[4] = v22;
    v29 = v33;
  }

  return __swift_destroy_boxed_opaque_existential_1(v29);
}

uint64_t FormatStateViewNodeState.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v69 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = v63 - v9;
  sub_1D6B61BBC(0, v8);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1[2];
  v17 = v1[3];
  v70 = v1[4];
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = sub_1D6B61B68();
  sub_1D5D2EE70(&type metadata for FormatStateViewNodeState, &type metadata for FormatStateViewNodeState.CodingKeys, v21, v18, &type metadata for FormatStateViewNodeState, &type metadata for FormatStateViewNodeState.CodingKeys, &type metadata for FormatVersions.JazzkonG, v19, v15, v20, &off_1F51F6BF8);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD18);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v67 = v23;
  v68 = v22;
  v65 = v24 + 16;
  v66 = v25;
  (v25)(v10);
  v63[1] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v76 = v16;
  v77 = v17;
  v78 = 0;
  v26 = &v15[*(v12 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v29 = swift_allocObject();
  v73 = v63;
  *(v29 + 16) = 0;
  *(v29 + 24) = v27;
  *(v29 + 32) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v63[-4] = sub_1D5B4AA6C;
  v63[-3] = 0;
  v61 = sub_1D6B61F48;
  v62 = v31;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  v64 = v27;
  *(v32 + 24) = v27;
  *(v32 + 32) = v28;
  sub_1D6B61C3C(0, &qword_1EDF02980, MEMORY[0x1E69E6F58]);
  v34 = v33;
  v35 = sub_1D6B61CA0();
  swift_retain_n();
  v71 = v35;
  v72 = v34;
  v36 = sub_1D72647CC();
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = 0;
  v38 = *(v12 + 36);
  v74 = v15;
  v39 = &v15[v38];
  v40 = *&v15[v38 + 24];
  v41 = *&v15[v38 + 32];
  v42 = __swift_project_boxed_opaque_existential_1(&v15[v38], v40);
  MEMORY[0x1EEE9AC00](v42, v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  v63[-4] = sub_1D60565EC;
  v63[-3] = &v63[-6];
  v61 = sub_1D6B61F48;
  v62 = v32;
  v46 = v75;
  sub_1D5D2BC70(v10, sub_1D60566B0, v47, sub_1D60565EC, &v63[-6], v40, v41);
  if (v46)
  {
    sub_1D5D2D0A8(v10, type metadata accessor for FormatVersionRequirement);

    v48 = v74;
  }

  else
  {

    v48 = v74;
    sub_1D72647EC();
    sub_1D5D2D0A8(v10, type metadata accessor for FormatVersionRequirement);

    v49 = v69;
    v66(v69, v67, v68);
    swift_storeEnumTagMultiPayload();
    v50 = swift_allocObject();
    *(v50 + 16) = 1;
    *(v50 + 24) = v64;
    *(v50 + 32) = v28;

    v51 = sub_1D72647CC();
    v52 = swift_allocObject();
    *(v52 + 16) = v51;
    *(v52 + 24) = 1;
    v53 = *(v39 + 3);
    v54 = *(v39 + 4);
    v55 = __swift_project_boxed_opaque_existential_1(v39, v53);
    MEMORY[0x1EEE9AC00](v55, v56);
    MEMORY[0x1EEE9AC00](v57, v58);
    v63[-4] = sub_1D5B4AA6C;
    v63[-3] = 0;
    v61 = sub_1D6B61D14;
    v62 = v50;
    LOBYTE(v53) = sub_1D5D2F7A4(v49, sub_1D60566B0, v59, sub_1D60565EC, &v63[-6], v53, v54);

    if (v53)
    {
      v78 = 1;
      v76 = v70;
      sub_1D6B61D40();
      sub_1D66594A0();
      sub_1D72647EC();

      sub_1D5D2D0A8(v49, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2D0A8(v49, type metadata accessor for FormatVersionRequirement);
    }
  }

  return sub_1D5D2D0A8(v48, sub_1D6B61BBC);
}

uint64_t sub_1D6B61600(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E6572646C696863;
  }

  else
  {
    v3 = 0x6574617473;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6E6572646C696863;
  }

  else
  {
    v5 = 0x6574617473;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6B616A4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6B61724(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6B61790(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6B6180C(char *a2@<X8>)
{
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D6B6186C(uint64_t *a1@<X8>)
{
  v2 = 0x6574617473;
  if (*v1)
  {
    v2 = 0x6E6572646C696863;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D6B618A8()
{
  if (*v0)
  {
    return 0x6E6572646C696863;
  }

  else
  {
    return 0x6574617473;
  }
}

void sub_1D6B618E0(char *a3@<X8>)
{
  v4 = sub_1D72641CC();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_1D6B61944(uint64_t a1)
{
  v2 = sub_1D6B61B68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B61980(uint64_t a1)
{
  v2 = sub_1D6B61B68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6B619BC(uint64_t a1, char *a2)
{
  v3 = *a2;
  sub_1D5D290FC(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 56) = &type metadata for FormatStateViewNodeState.CodingKeys;
  *(inited + 64) = sub_1D6B61B68();
  *(inited + 32) = v3;

  sub_1D5D291B8(inited);
  return a1;
}

uint64_t _s8NewsFeed019FormatStateViewNodeD0V2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  return sub_1D633E44C(v3, v7);
}

void sub_1D6B61B00(uint64_t a1)
{
  if (!qword_1EDF3BCF8)
  {
    sub_1D5C91044();
    sub_1D5C50B48();
    v1 = sub_1D725AAEC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3BCF8);
    }
  }
}

unint64_t sub_1D6B61B68()
{
  result = qword_1EDF3A600[0];
  if (!qword_1EDF3A600[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF3A600);
  }

  return result;
}

void sub_1D6B61BBC(uint64_t a1, __n128 a2)
{
  if (!qword_1EDF087D0)
  {
    sub_1D6B61C3C(255, &qword_1EDF02980, MEMORY[0x1E69E6F58]);
    v4 = v3;
    v5 = sub_1D6B61CA0();
    v7 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v4, v5, v6);
    if (!v8)
    {
      atomic_store(v7, &qword_1EDF087D0);
    }
  }
}

void sub_1D6B61C3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6B61B68();
    v7 = a3(a1, &type metadata for FormatStateViewNodeState.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6B61CA0()
{
  result = qword_1EDF02988;
  if (!qword_1EDF02988)
  {
    sub_1D6B61C3C(255, &qword_1EDF02980, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF02988);
  }

  return result;
}

void sub_1D6B61D40()
{
  if (!qword_1EDF04F10)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04F10);
    }
  }
}

unint64_t sub_1D6B61D90(void *a1)
{
  a1[1] = sub_1D66F7264();
  a1[2] = sub_1D66C08F8();
  result = sub_1D6B61DC8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6B61DC8()
{
  result = qword_1EC892890;
  if (!qword_1EC892890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892890);
  }

  return result;
}

unint64_t sub_1D6B61E40()
{
  result = qword_1EC892898;
  if (!qword_1EC892898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892898);
  }

  return result;
}

unint64_t sub_1D6B61E98()
{
  result = qword_1EDF3A5F0;
  if (!qword_1EDF3A5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3A5F0);
  }

  return result;
}

unint64_t sub_1D6B61EF0()
{
  result = qword_1EDF3A5F8;
  if (!qword_1EDF3A5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3A5F8);
  }

  return result;
}

uint64_t FormatSlotItemValidate.hashValue.getter()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

unint64_t sub_1D6B62014()
{
  result = qword_1EC8928A0;
  if (!qword_1EC8928A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8928A0);
  }

  return result;
}

unint64_t sub_1D6B62068(uint64_t a1)
{
  result = sub_1D6B62090();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6B62090()
{
  result = qword_1EC8928A8;
  if (!qword_1EC8928A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8928A8);
  }

  return result;
}

unint64_t sub_1D6B620E4(void *a1)
{
  a1[1] = sub_1D66B9080();
  a1[2] = sub_1D66F864C();
  result = sub_1D6B62014();
  a1[3] = result;
  return result;
}

uint64_t sub_1D6B6214C(uint64_t a1, void *a2)
{
  v69 = a2;
  sub_1D5B5B2A0(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v64 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v63 = &v60 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v62 = &v60 - v11;
  v12 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for FormatContentSlotItemResolution(0) - 8;
  MEMORY[0x1EEE9AC00](v16, v17);
  v70 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v23 = &v60 - v22;
  v24 = *(a1 + 16);
  v61 = a1;
  if (v24)
  {
    v71 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v25 = a1 + v71;
    v26 = MEMORY[0x1E69E7CC0];
    v72 = *(v21 + 72);
    v68 = v12;
    v27 = v70;
    while (1)
    {
      sub_1D61FE26C(v25, v23, type metadata accessor for FormatContentSlotItemResolution);
      sub_1D61FE26C(v23, v15, type metadata accessor for FormatContentSlotItemObject.Resolved);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 9)
      {
        if (((1 << EnumCaseMultiPayload) & 0x37C) != 0)
        {
          sub_1D5D1EAF8(v15, type metadata accessor for FormatContentSlotItemObject.Resolved);
LABEL_7:
          sub_1D61FE208(v23, v27);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v76 = v26;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D6997C80(0, *(v26 + 16) + 1, 1);
            v27 = v70;
            v26 = v76;
          }

          v31 = *(v26 + 16);
          v30 = *(v26 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_1D6997C80((v30 > 1), v31 + 1, 1);
            v27 = v70;
            v26 = v76;
          }

          *(v26 + 16) = v31 + 1;
          v32 = v26 + v71 + v31 * v72;
          v33 = v72;
          sub_1D61FE208(v27, v32);
          goto LABEL_3;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v34 = *v15;
          v35 = v69[6];
          v66 = v69[5];
          v67 = v34;
          v65 = __swift_project_boxed_opaque_existential_1(v69 + 2, v66);
          v36 = [v34 identifier];
          v37 = sub_1D726207C();
          v39 = v38;

          v73 = v37;
          v74 = v39;
          v75 = 1;
          v40 = v63;
          (*(v35 + 8))(&v73, v66, v35);
LABEL_16:

          goto LABEL_18;
        }

        if (EnumCaseMultiPayload == 7)
        {
          v41 = *v15;
          v42 = v69[6];
          v66 = v69[5];
          v67 = v41;
          v65 = __swift_project_boxed_opaque_existential_1(v69 + 2, v66);
          v43 = [v41 identifier];
          v44 = sub_1D726207C();
          v46 = v45;

          v73 = v44;
          v74 = v46;
          v75 = 2;
          v40 = v64;
          (*(v42 + 8))(&v73, v66, v42);
          goto LABEL_16;
        }
      }

      v48 = v69[5];
      v49 = v69[6];
      v66 = *v15;
      v47 = v66;
      v67 = v48;
      v65 = __swift_project_boxed_opaque_existential_1(v69 + 2, v48);
      v50 = [v47 articleID];
      v51 = sub_1D726207C();
      v53 = v52;

      v73 = v51;
      v74 = v53;
      v75 = 0;
      v40 = v62;
      (*(v49 + 8))(&v73, v67, v49);
      swift_unknownObjectRelease();
LABEL_18:
      sub_1D5DEA520(v73, v74, v75);
      v54 = v40;
      v55 = sub_1D725891C();
      v56 = (*(*(v55 - 8) + 48))(v40, 1, v55);
      sub_1D5D1EAF8(v54, sub_1D5B5B2A0);
      v57 = v56 == 1;
      v27 = v70;
      v33 = v72;
      if (v57)
      {
        goto LABEL_7;
      }

      sub_1D5D1EAF8(v23, type metadata accessor for FormatContentSlotItemResolution);
LABEL_3:
      v25 += v33;
      if (!--v24)
      {
        goto LABEL_22;
      }
    }
  }

  v26 = MEMORY[0x1E69E7CC0];
LABEL_22:
  v58 = *(v26 + 16);

  if (v58)
  {
  }

  type metadata accessor for FormatServiceError(0);
  sub_1D6B626FC();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return v61;
}

unint64_t sub_1D6B626FC()
{
  result = qword_1EDF102B8;
  if (!qword_1EDF102B8)
  {
    type metadata accessor for FormatServiceError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF102B8);
  }

  return result;
}

uint64_t sub_1D6B62794(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x6E && *(a1 + 16))
  {
    return (*a1 + 110);
  }

  v3 = ((((*(a1 + 8) >> 57) & 0x78 | *(a1 + 8) & 7) >> 2) & 0xFFFFFF9F | (32 * (*(a1 + 8) & 3))) ^ 0x7F;
  if (v3 >= 0x6D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D6B627F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x6D)
  {
    *result = a2 - 110;
    *(result + 8) = 0;
    if (a3 >= 0x6E)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x6E)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 5) & 3 | (4 * (-a2 & 0x7F));
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t type metadata accessor for DebugFormatLayoutModelSelection(uint64_t a1)
{
  result = qword_1EC8928B0;
  if (!qword_1EC8928B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6B6289C(uint64_t a1)
{
  result = type metadata accessor for DebugFormatLayoutModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t FeedCatalogItem.identifier.getter()
{
  sub_1D5F76E40(v0, &v15);
  if (v31)
  {
    if (v31 != 1)
    {
      v10 = v21;
      *v11 = *v22;
      *&v11[16] = *&v22[16];
      v12 = v23;
      v6 = v17;
      v7 = v18;
      v8 = v19;
      v9 = v20;
      v4 = v15;
      v5 = v16;
      v1 = v15;

      sub_1D5EE5B54(&v4);
      return v1;
    }

    v13[6] = v21;
    v14[0] = *v22;
    *(v14 + 9) = *&v22[9];
    v13[2] = v17;
    v13[3] = v18;
    v13[4] = v19;
    v13[5] = v20;
    v13[0] = v15;
    v13[1] = v16;
    v10 = v29;
    *v11 = *v30;
    *&v11[9] = *&v30[9];
    v6 = v25;
    v7 = v26;
    v8 = v27;
    v9 = v28;
    v4 = v23;
    v5 = v24;
    sub_1D6B63E68(&v4, sub_1D6B62A60);
    v1 = *(&v13[0] + 1);

    v2 = v13;
  }

  else
  {
    v4 = v15;
    v5 = v16;
    v10 = v21;
    *v11 = *v22;
    *&v11[9] = *&v22[9];
    v6 = v17;
    v7 = v18;
    v8 = v19;
    v9 = v20;
    v1 = *(&v15 + 1);

    v2 = &v4;
  }

  sub_1D5ECF320(v2);
  return v1;
}

void sub_1D6B62A60()
{
  if (!qword_1EDF34E30)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF34E30);
    }
  }
}

uint64_t FeedCatalogItem.layoutDirection.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D5F76E40(v1, &v24);
  if (!v40)
  {
    v14 = v30;
    *v15 = *v31;
    *&v15[9] = *&v31[9];
    v10 = v26;
    v11 = v27;
    v12 = v28;
    v13 = v29;
    v8 = v24;
    v9 = v25;
    result = sub_1D5ECF320(&v8);
    v4 = v10;
    v5 = BYTE8(v10);
    goto LABEL_5;
  }

  if (v40 == 1)
  {
    v22 = v30;
    v23[0] = *v31;
    *(v23 + 9) = *&v31[9];
    v18 = v26;
    v19 = v27;
    v20 = v28;
    v21 = v29;
    v17[0] = v24;
    v17[1] = v25;
    v14 = v38;
    *v15 = *v39;
    *&v15[9] = *&v39[9];
    v10 = v34;
    v11 = v35;
    v12 = v36;
    v13 = v37;
    v8 = v32;
    v9 = v33;
    sub_1D6B63E68(&v8, sub_1D6B62A60);
    result = sub_1D5ECF320(v17);
    v4 = v18;
    v5 = BYTE8(v18);
LABEL_5:
    *a1 = v4;
    *(a1 + 8) = v5;
    return result;
  }

  v14 = v30;
  *v15 = *v31;
  *&v15[16] = *&v31[16];
  v16 = v32;
  v10 = v26;
  v11 = v27;
  v12 = v28;
  v13 = v29;
  v8 = v24;
  v9 = v25;
  v6 = v26;
  v7 = BYTE8(v26);
  result = sub_1D5EE5B54(&v8);
  *a1 = v6;
  *(a1 + 8) = v7;
  return result;
}

uint64_t FeedCatalogItem.debugIdentifier.getter()
{
  sub_1D5F76E40(v0, &v24);
  if (v40)
  {
    if (v40 != 1)
    {
      LOBYTE(v15) = v32;
      v5 = [v25 identifier];
      v2 = sub_1D726207C();

      sub_1D5EE5B54(v7);
      return v2;
    }

    v22 = v30;
    v23[0] = *v31;
    *(v23 + 9) = *&v31[9];
    v18 = v26;
    v19 = v27;
    v20 = v28;
    v21 = v29;
    *v16 = v24;
    v17 = v25;
    v13 = v38;
    *v14 = *v39;
    *&v14[9] = *&v39[9];
    v9 = v34;
    v10 = v35;
    v11 = v36;
    v12 = v37;
    *v7 = v32;
    v8 = v33;
    sub_1D6B63E68(v7, sub_1D6B62A60);
    v1 = [v16[0] identifier];
    v2 = sub_1D726207C();

    v3 = v16;
  }

  else
  {
    v14[8] = v31[8];
    *&v14[9] = *&v31[9];
    v4 = [v24 identifier];
    v2 = sub_1D726207C();

    v3 = v7;
  }

  sub_1D5ECF320(v3);
  return v2;
}

uint64_t FeedCatalogItem.debugSourceName.getter()
{
  sub_1D5F76E40(v0, &v22);
  if (v31)
  {
    if (v31 != 1)
    {
      sub_1D5F76EF0(&v22);
      return 0;
    }

    v12 = v28;
    v13[0] = v29[0];
    *(v13 + 9) = *(v29 + 9);
    v8 = v24;
    v9 = v25;
    v10 = v26;
    v11 = v27;
    *v6 = v22;
    v7 = v23;
    v20 = v29[8];
    v21[0] = *v30;
    *(v21 + 9) = *&v30[9];
    v16 = v29[4];
    v17 = v29[5];
    v18 = v29[6];
    v19 = v29[7];
    *v14 = v29[2];
    v15 = v29[3];
    sub_1D6B63E68(v14, sub_1D6B62A60);
    v1 = [objc_msgSend(v6[0] sourceChannel)];
    swift_unknownObjectRelease();
    v2 = sub_1D726207C();

    v3 = v6;
  }

  else
  {
    v20 = v28;
    v21[0] = v29[0];
    *(v21 + 9) = *(v29 + 9);
    *v14 = v22;
    v15 = v23;
    v16 = v24;
    v17 = v25;
    v18 = v26;
    v19 = v27;
    v4 = [objc_msgSend(v22 sourceChannel)];
    swift_unknownObjectRelease();
    v2 = sub_1D726207C();

    v3 = v14;
  }

  sub_1D5ECF320(v3);
  return v2;
}

uint64_t FeedCatalogItem.debugTitle.getter()
{
  sub_1D5F76E40(v0, &v24);
  if (v40)
  {
    if (v40 != 1)
    {
      LOBYTE(v15) = v32;
      v5 = [v25 name];
      v2 = sub_1D726207C();

      sub_1D5EE5B54(v7);
      return v2;
    }

    v22 = v30;
    v23[0] = *v31;
    *(v23 + 9) = *&v31[9];
    v18 = v26;
    v19 = v27;
    v20 = v28;
    v21 = v29;
    *v16 = v24;
    v17 = v25;
    v13 = v38;
    *v14 = *v39;
    *&v14[9] = *&v39[9];
    v9 = v34;
    v10 = v35;
    v11 = v36;
    v12 = v37;
    *v7 = v32;
    v8 = v33;
    sub_1D6B63E68(v7, sub_1D6B62A60);
    v1 = [v16[0] coverDate];
    v2 = sub_1D726207C();

    v3 = v16;
  }

  else
  {
    v14[8] = v31[8];
    *&v14[9] = *&v31[9];
    v4 = [v24 coverDate];
    v2 = sub_1D726207C();

    v3 = v7;
  }

  sub_1D5ECF320(v3);
  return v2;
}

id FeedCatalogItem.debugAssetHandle.getter()
{
  sub_1D5F76E40(v0, &v21);
  if (v37)
  {
    if (v37 != 1)
    {
      v10 = v27;
      *v11 = *v28;
      *&v11[16] = *&v28[16];
      v12 = v29;
      v6 = v23;
      v7 = v24;
      v8 = v25;
      v9 = v26;
      *v4 = v21;
      v5 = v22;
      v1 = FeedTag.debugAssetHandle.getter();
      sub_1D5EE5B54(v4);
      return v1;
    }

    v19 = v27;
    v20[0] = *v28;
    *(v20 + 9) = *&v28[9];
    v15 = v23;
    v16 = v24;
    v17 = v25;
    v18 = v26;
    *v13 = v21;
    v14 = v22;
    v10 = v35;
    *v11 = *v36;
    *&v11[9] = *&v36[9];
    v6 = v31;
    v7 = v32;
    v8 = v33;
    v9 = v34;
    *v4 = v29;
    v5 = v30;
    sub_1D6B63E68(v4, sub_1D6B62A60);
    v1 = [v13[0] coverImageAssetHandle];
    v2 = v13;
  }

  else
  {
    v11[8] = v28[8];
    *&v11[9] = *&v28[9];
    v1 = [v21 coverImageAssetHandle];
    v2 = v4;
  }

  sub_1D5ECF320(v2);
  return v1;
}

id FeedCatalogItem.debugScoreProfile.getter()
{
  sub_1D5F76E40(v0, &v18);
  if (v27)
  {
    if (v27 != 1)
    {
      sub_1D5F76EF0(&v18);
      return 0;
    }

    v8 = v24;
    v9[0] = v25[0];
    *(v9 + 9) = *(v25 + 9);
    v4[2] = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v4[0] = v18;
    v4[1] = v19;
    v16 = v25[8];
    v17[0] = *v26;
    *(v17 + 9) = *&v26[9];
    v12 = v25[4];
    v13 = v25[5];
    v14 = v25[6];
    v15 = v25[7];
    v10 = v25[2];
    v11 = v25[3];
    sub_1D6B63E68(&v10, sub_1D6B62A60);
    v1 = *(&v5 + 1);
    v2 = v4;
  }

  else
  {
    v16 = v24;
    v17[0] = v25[0];
    *(v17 + 9) = *(v25 + 9);
    v12 = v20;
    v13 = v21;
    v14 = v22;
    v15 = v23;
    v10 = v18;
    v11 = v19;
    v1 = *(&v21 + 1);
    v2 = &v10;
  }

  sub_1D5ECF320(v2);
  return v1;
}

double FeedCatalogItem.kind.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1D72F4100;
  return result;
}

uint64_t _s8NewsFeed0B11CatalogItemO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1D5F76E40(a1, &v63);
  sub_1D5F76E40(a2, &v80);
  if (!v79)
  {
    __src[6] = v69;
    __src[7] = *v70;
    *(&__src[7] + 9) = *&v70[9];
    __src[2] = v65;
    __src[3] = v66;
    __src[5] = v68;
    __src[4] = v67;
    __src[0] = v63;
    __src[1] = v64;
    if (!v96)
    {
      __dst[6] = v86;
      __dst[7] = v87[0];
      *(&__dst[7] + 9) = *(v87 + 9);
      __dst[2] = v82;
      __dst[3] = v83;
      __dst[4] = v84;
      __dst[5] = v85;
      __dst[0] = v80;
      __dst[1] = v81;
      v61 = v69;
      v62[0] = *v70;
      *(v62 + 9) = *&v70[9];
      v57 = v65;
      v58 = v66;
      v60 = v68;
      v59 = v67;
      v56 = v64;
      v55 = v63;
      v53 = v86;
      v54[0] = v87[0];
      *(v54 + 9) = *(v87 + 9);
      v49 = v82;
      v50 = v83;
      v52 = v85;
      v51 = v84;
      v48 = v81;
      v47 = v80;
      v3 = _s8NewsFeed0B5IssueV2eeoiySbAC_ACtFZ_0(&v55, &v47);
      sub_1D5ECF320(__dst);
      sub_1D5ECF320(__src);
      return v3 & 1;
    }

    sub_1D5ECF320(__src);
    goto LABEL_14;
  }

  if (v79 != 1)
  {
    if (v96 == 2)
    {
      __src[6] = v69;
      __src[7] = *v70;
      __src[8] = *&v70[16];
      LOBYTE(__src[9]) = v71;
      __src[2] = v65;
      __src[3] = v66;
      __src[4] = v67;
      __src[5] = v68;
      __src[0] = v63;
      __src[1] = v64;
      __dst[6] = v86;
      __dst[7] = v87[0];
      __dst[8] = v87[1];
      LOBYTE(__dst[9]) = v88;
      __dst[2] = v82;
      __dst[3] = v83;
      __dst[4] = v84;
      __dst[5] = v85;
      __dst[0] = v80;
      __dst[1] = v81;
      v3 = _s8NewsFeed0B3TagV2eeoiySbAC_ACtFZ_0(__src, __dst);
      sub_1D5EE5B54(__dst);
      sub_1D5EE5B54(__src);
      return v3 & 1;
    }

    sub_1D5EE5B54(&v63);
    goto LABEL_14;
  }

  v53 = v69;
  v54[0] = *v70;
  *(v54 + 9) = *&v70[9];
  v49 = v65;
  v50 = v66;
  v52 = v68;
  v51 = v67;
  v48 = v64;
  v47 = v63;
  v61 = v77;
  v62[0] = *v78;
  *(v62 + 9) = *&v78[9];
  v57 = v73;
  v58 = v74;
  v60 = v76;
  v59 = v75;
  v56 = v72;
  v55 = v71;
  if (v96 != 1)
  {
    sub_1D6B63E68(&v55, sub_1D6B62A60);
    sub_1D5ECF320(&v47);
LABEL_14:
    sub_1D5F76EF0(&v80);
LABEL_15:
    v3 = 0;
    return v3 & 1;
  }

  v37[6] = v86;
  v38[0] = v87[0];
  *(v38 + 9) = *(v87 + 9);
  v37[2] = v82;
  v37[3] = v83;
  v37[5] = v85;
  v37[4] = v84;
  v37[1] = v81;
  v37[0] = v80;
  v45 = v94;
  v46[0] = *v95;
  *(v46 + 9) = *&v95[9];
  v41 = v90;
  v42 = v91;
  v44 = v93;
  v43 = v92;
  v40 = v89;
  v39 = v88;
  __src[6] = v69;
  __src[7] = *v70;
  *(&__src[7] + 9) = *&v70[9];
  __src[2] = v65;
  __src[3] = v66;
  __src[5] = v68;
  __src[4] = v67;
  __src[0] = v63;
  __src[1] = v64;
  __dst[6] = v86;
  __dst[7] = v87[0];
  *(&__dst[7] + 9) = *(v87 + 9);
  __dst[2] = v82;
  __dst[3] = v83;
  __dst[4] = v84;
  __dst[5] = v85;
  __dst[0] = v80;
  __dst[1] = v81;
  if ((_s8NewsFeed0B5IssueV2eeoiySbAC_ACtFZ_0(__src, __dst) & 1) == 0)
  {
    sub_1D5ECF320(v37);
    sub_1D5ECF320(&v47);
    sub_1D6B63E68(&v39, sub_1D6B62A60);
    sub_1D6B63E68(&v55, sub_1D6B62A60);
    goto LABEL_15;
  }

  __src[6] = v61;
  __src[7] = v62[0];
  *(&__src[7] + 9) = *(v62 + 9);
  __src[2] = v57;
  __src[3] = v58;
  __src[5] = v60;
  __src[4] = v59;
  __src[0] = v55;
  __src[1] = v56;
  *(&__src[16] + 9) = *(v46 + 9);
  __src[15] = v45;
  __src[16] = v46[0];
  __src[11] = v41;
  __src[12] = v42;
  __src[14] = v44;
  __src[13] = v43;
  __src[10] = v40;
  __src[9] = v39;
  v35[6] = v61;
  v36[0] = v62[0];
  *(v36 + 9) = *(v62 + 9);
  v35[2] = v57;
  v35[3] = v58;
  v35[5] = v60;
  v35[4] = v59;
  v35[1] = v56;
  v35[0] = v55;
  if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(v35) != 1)
  {
    v31 = __src[6];
    v32[0] = __src[7];
    *(v32 + 9) = *(&__src[7] + 9);
    v27 = __src[2];
    v28 = __src[3];
    v29 = __src[4];
    v30 = __src[5];
    v25 = __src[0];
    v26 = __src[1];
    v23 = __src[6];
    v24[0] = __src[7];
    *(v24 + 9) = *(&__src[7] + 9);
    v19 = __src[2];
    v20 = __src[3];
    v21 = __src[4];
    v22 = __src[5];
    v17 = __src[0];
    v18 = __src[1];
    __dst[6] = __src[15];
    __dst[7] = __src[16];
    *(&__dst[7] + 9) = *(&__src[16] + 9);
    __dst[2] = __src[11];
    __dst[3] = __src[12];
    __dst[4] = __src[13];
    __dst[5] = __src[14];
    __dst[0] = __src[9];
    __dst[1] = __src[10];
    if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(__dst) != 1)
    {
      v15 = __src[15];
      v16[0] = __src[16];
      *(v16 + 9) = *(&__src[16] + 9);
      v11 = __src[11];
      v12 = __src[12];
      v13 = __src[13];
      v14 = __src[14];
      v9 = __src[9];
      v10 = __src[10];
      sub_1D6B63F2C(&v55, v7);
      sub_1D6B63F2C(&v39, v7);
      sub_1D6B63F2C(&v25, v7);
      v3 = _s8NewsFeed0B5IssueV2eeoiySbAC_ACtFZ_0(&v17, &v9);
      sub_1D5ECF320(v37);
      sub_1D5ECF320(&v47);
      sub_1D6B63E68(&v39, sub_1D6B62A60);
      sub_1D6B63E68(&v55, sub_1D6B62A60);
      v5[6] = v15;
      v6[0] = v16[0];
      *(v6 + 9) = *(v16 + 9);
      v5[2] = v11;
      v5[3] = v12;
      v5[4] = v13;
      v5[5] = v14;
      v5[0] = v9;
      v5[1] = v10;
      sub_1D5ECF320(v5);
      v7[6] = v23;
      v8[0] = v24[0];
      *(v8 + 9) = *(v24 + 9);
      v7[2] = v19;
      v7[3] = v20;
      v7[4] = v21;
      v7[5] = v22;
      v7[0] = v17;
      v7[1] = v18;
      sub_1D5ECF320(v7);
      v15 = __src[6];
      v16[0] = __src[7];
      *(v16 + 9) = *(&__src[7] + 9);
      v11 = __src[2];
      v12 = __src[3];
      v13 = __src[4];
      v14 = __src[5];
      v9 = __src[0];
      v10 = __src[1];
      sub_1D6B63E68(&v9, sub_1D6B62A60);
      return v3 & 1;
    }

    sub_1D6B63F2C(&v25, &v9);
    sub_1D5ECF320(v37);
    sub_1D5ECF320(&v47);
    v15 = __src[6];
    v16[0] = __src[7];
    *(v16 + 9) = *(&__src[7] + 9);
    v11 = __src[2];
    v12 = __src[3];
    v13 = __src[4];
    v14 = __src[5];
    v9 = __src[0];
    v10 = __src[1];
    sub_1D5ECF320(&v9);
    goto LABEL_21;
  }

  sub_1D5ECF320(v37);
  sub_1D5ECF320(&v47);
  __dst[6] = __src[15];
  __dst[7] = __src[16];
  *(&__dst[7] + 9) = *(&__src[16] + 9);
  __dst[2] = __src[11];
  __dst[3] = __src[12];
  __dst[4] = __src[13];
  __dst[5] = __src[14];
  __dst[0] = __src[9];
  __dst[1] = __src[10];
  if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(__dst) != 1)
  {
LABEL_21:
    memcpy(__dst, __src, 0x119uLL);
    sub_1D6B63E68(__dst, sub_1D6B63EC8);
    goto LABEL_15;
  }

  v31 = __src[6];
  v32[0] = __src[7];
  *(v32 + 9) = *(&__src[7] + 9);
  v27 = __src[2];
  v28 = __src[3];
  v29 = __src[4];
  v30 = __src[5];
  v25 = __src[0];
  v26 = __src[1];
  sub_1D6B63E68(&v25, sub_1D6B62A60);
  v3 = 1;
  return v3 & 1;
}

unint64_t sub_1D6B63CD0(uint64_t a1)
{
  result = sub_1D6B63CF8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6B63CF8()
{
  result = qword_1EC8928C0;
  if (!qword_1EC8928C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8928C0);
  }

  return result;
}

uint64_t sub_1D6B63D60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 282))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 281);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6B63D9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 240) = 0u;
    *(result + 256) = 0u;
    *(result + 208) = 0u;
    *(result + 224) = 0u;
    *(result + 176) = 0u;
    *(result + 192) = 0u;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *(result + 266) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 282) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 282) = 0;
    }

    if (a2)
    {
      *(result + 281) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D6B63E0C(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 240) = 0u;
    *(result + 256) = 0u;
    v2 = a2 - 3;
    *(result + 208) = 0u;
    *(result + 224) = 0u;
    *(result + 176) = 0u;
    *(result + 192) = 0u;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *(result + 265) = 0u;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 281) = a2;
  return result;
}

uint64_t sub_1D6B63E68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6B63EC8(uint64_t a1)
{
  if (!qword_1EC8928C8)
  {
    sub_1D6B62A60();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8928C8);
    }
  }
}

uint64_t sub_1D6B63F2C(uint64_t a1, uint64_t a2)
{
  sub_1D6B62A60();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6B64078(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1D6B640C0(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

void sub_1D6B64124(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a2;
  v6 = type metadata accessor for DebugInspectionWebEmbed(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v40 = (&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = type metadata accessor for DebugInspectionArticleData(0);
  MEMORY[0x1EEE9AC00](v39, v9);
  v38 = (&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for DebugInspectionHeadline(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v37 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DebugInspectionItem(0);
  v14 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v15);
  v17 = (&v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v22 = &v36 - v21;
  v23 = *(v3 + 32);
  v41 = *(v23 + 16);
  if (v41)
  {
    v36 = a3;
    v24 = 0;
    v42 = v23 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    while (1)
    {
      if (v24 >= *(v23 + 16))
      {
        __break(1u);
        return;
      }

      sub_1D6B654D0(v42 + *(v14 + 72) * v24, v22, type metadata accessor for DebugInspectionItem);
      sub_1D6B654D0(v22, v17, type metadata accessor for DebugInspectionItem);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        if (EnumCaseMultiPayload <= 1)
        {
          if (EnumCaseMultiPayload)
          {
            memcpy(v45, v17, 0x210uLL);
            v34 = v45[0];
            v27 = v45[1];

            sub_1D693EDC8(v45);
            if (v34 != a1)
            {
              goto LABEL_17;
            }

            goto LABEL_16;
          }

          v28 = v37;
          sub_1D6B65468(v17, v37, type metadata accessor for DebugInspectionHeadline);
          v29 = v38;
          sub_1D6B654D0(v28, v38, type metadata accessor for DebugInspectionArticleData);
          sub_1D6B65538(v28, type metadata accessor for DebugInspectionHeadline);
          v30 = (v29 + *(v39 + 60));
          v31 = *v30;
          v27 = v30[1];

          v32 = type metadata accessor for DebugInspectionArticleData;
          goto LABEL_12;
        }

        if (EnumCaseMultiPayload != 2)
        {
          v29 = v40;
          sub_1D6B65468(v17, v40, type metadata accessor for DebugInspectionWebEmbed);
          v31 = *v29;
          v27 = v29[1];

          v32 = type metadata accessor for DebugInspectionWebEmbed;
LABEL_12:
          sub_1D6B65538(v29, v32);
          if (v31 != a1)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }

      else if (EnumCaseMultiPayload > 6)
      {
        v26 = *v17;
        v27 = v17[1];

        goto LABEL_15;
      }

      v26 = *v17;
      v27 = v17[1];
LABEL_15:

      if (v26 != a1)
      {
        goto LABEL_17;
      }

LABEL_16:
      if (v27 == v44)
      {

LABEL_24:
        a3 = v36;
        sub_1D6B65468(v22, v36, type metadata accessor for DebugInspectionItem);
        v35 = 0;
        goto LABEL_25;
      }

LABEL_17:
      v33 = sub_1D72646CC();

      if (v33)
      {
        goto LABEL_24;
      }

      ++v24;
      sub_1D6B65538(v22, type metadata accessor for DebugInspectionItem);
      if (v41 == v24)
      {
        v35 = 1;
        a3 = v36;
        goto LABEL_25;
      }
    }
  }

  v35 = 1;
LABEL_25:
  (*(v14 + 56))(a3, v35, 1, v43, v20);
}

uint64_t sub_1D6B645B0(void *a1)
{
  sub_1D6B652F0(0, &qword_1EC892940, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v23 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[5];
  v29 = v1[4];
  v30 = v10;
  v13 = v1[7];
  v27 = v1[6];
  v28 = v12;
  v14 = v1[9];
  v25 = v1[8];
  v26 = v13;
  v24 = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B651F0();

  sub_1D7264B5C();
  v33 = v8;
  v34 = v9;
  v35 = v30;
  v36 = v11;
  v15 = v4;
  v37 = 0;
  sub_1D6B65244();
  v16 = v31;
  sub_1D726443C();
  if (v16)
  {

    return (*(v32 + 8))(v7, v4);
  }

  else
  {
    v19 = v27;
    v18 = v28;
    v20 = v32;

    v33 = v29;
    v37 = 1;
    sub_1D6B65298(0, v21);
    sub_1D6B653A8(&qword_1EC892960, &qword_1EC892968, &unk_1D739C42C, MEMORY[0x1E69E6300], v22);
    sub_1D726443C();
    v33 = v18;
    v37 = 2;
    sub_1D5B81B04();
    sub_1D5CB5D1C(&qword_1EDF047E0, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
    sub_1D726443C();
    v33 = v19;
    v37 = 3;
    sub_1D726443C();
    v33 = v26;
    v37 = 4;
    sub_1D726443C();
    v33 = v25;
    v37 = 5;
    sub_1D614A45C();
    sub_1D614B6C0(&qword_1EC884448, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1D726443C();
    v33 = v24;
    v37 = 6;
    sub_1D726443C();
    return (*(v20 + 8))(v7, v15);
  }
}

void sub_1D6B649C4(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D6B652F0(0, &qword_1EC892970, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v23 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6B651F0();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v33) = 0;
    sub_1D6B65354();
    sub_1D726431C();
    v11 = v38;
    v31 = v39;
    v12 = v40;
    v32 = v41;
    sub_1D6B65298(0, v13);
    LOBYTE(v33) = 1;
    sub_1D6B653A8(&qword_1EC892980, &qword_1EC892988, &unk_1D739C404, MEMORY[0x1E69E6330], v14);
    sub_1D726431C();
    v26 = v12;
    v27 = v11;
    v30 = v38;
    sub_1D5B81B04();
    LOBYTE(v33) = 2;
    sub_1D5CB5D1C(&qword_1EDF3C7D0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
    v29 = 0;
    sub_1D726431C();
    v25 = v38;
    LOBYTE(v33) = 3;
    sub_1D726431C();
    v28 = v38;
    LOBYTE(v33) = 4;
    sub_1D726431C();
    v24 = v38;
    sub_1D614A45C();
    LOBYTE(v33) = 5;
    sub_1D614B6C0(&qword_1EC884430, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1D726431C();
    v23 = v38;
    v48[0] = 6;
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    v29 = v49;
    v15 = v31;
    *&v33 = v27;
    *(&v33 + 1) = v31;
    v16 = v32;
    *&v34 = v26;
    *(&v34 + 1) = v32;
    v17 = v30;
    v18 = v25;
    *&v35 = v30;
    *(&v35 + 1) = v25;
    v19 = v28;
    v20 = v24;
    *&v36 = v28;
    *(&v36 + 1) = v24;
    *&v37 = v23;
    *(&v37 + 1) = v49;
    v21 = v36;
    a2[2] = v35;
    a2[3] = v21;
    v22 = v34;
    *a2 = v33;
    a2[1] = v22;
    a2[4] = v37;
    sub_1D6B3357C(&v33, &v38);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v38 = v27;
    v39 = v15;
    v40 = v26;
    v41 = v16;
    v42 = v17;
    v43 = v18;
    v44 = v19;
    v45 = v20;
    v46 = v23;
    v47 = v29;
    sub_1D6B334D8(&v38);
  }
}

uint64_t sub_1D6B6503C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x736D657469;
    if (v1 != 1)
    {
      v5 = 0xD000000000000016;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x70756F7267;
    }
  }

  else
  {
    v2 = 0xD000000000000013;
    if (v1 != 5)
    {
      v2 = 0xD00000000000001ALL;
    }

    v3 = 0xD000000000000018;
    if (v1 != 3)
    {
      v3 = 0xD000000000000016;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D6B65120@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6B656B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6B65148(uint64_t a1)
{
  v2 = sub_1D6B651F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6B65184(uint64_t a1)
{
  v2 = sub_1D6B651F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D6B651F0()
{
  result = qword_1EC892948;
  if (!qword_1EC892948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892948);
  }

  return result;
}

unint64_t sub_1D6B65244()
{
  result = qword_1EC892950;
  if (!qword_1EC892950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892950);
  }

  return result;
}

void sub_1D6B65298(uint64_t a1, __n128 a2)
{
  if (!qword_1EC892958)
  {
    type metadata accessor for DebugInspectionItem(255);
    v2 = sub_1D72627FC();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC892958);
    }
  }
}

void sub_1D6B652F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6B651F0();
    v7 = a3(a1, &type metadata for DebugInspection.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6B65354()
{
  result = qword_1EC892978;
  if (!qword_1EC892978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892978);
  }

  return result;
}

uint64_t sub_1D6B653A8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  result = *a1;
  if (!result)
  {
    sub_1D6B65298(255, a5);
    sub_1D6B65424(a2, a3, v9);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6B65424(unint64_t *a1, uint64_t a2, __n128 a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DebugInspectionItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6B65468(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6B654D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6B65538(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D6B655AC()
{
  result = qword_1EC892990;
  if (!qword_1EC892990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892990);
  }

  return result;
}

unint64_t sub_1D6B65604()
{
  result = qword_1EC892998;
  if (!qword_1EC892998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC892998);
  }

  return result;
}

unint64_t sub_1D6B6565C()
{
  result = qword_1EC8929A0;
  if (!qword_1EC8929A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8929A0);
  }

  return result;
}

uint64_t sub_1D6B656B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x70756F7267 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D73D1DD0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D73D1DF0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D73D1E30 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73E71B0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D73E71D0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

void sub_1D6B658F4(uint64_t a1)
{
  v2 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  v40 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v39 - v8;
  v10 = MEMORY[0x1E69E7CC0];
  v43 = *(a1 + 16);
  if (!v43)
  {
    return;
  }

  v11 = 0;
  v42 = a1 + 32;
  v12 = MEMORY[0x1E69E7CC0];
  v39[1] = v2;
  while (1)
  {
    v45 = v11;
    v46[0] = v10;
    v14 = *(v42 + (v11 << 6) + 32);
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = v14 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
      v17 = *(v40 + 72);
      do
      {
        sub_1D5CEC7A0(v16, v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
        sub_1D5CEC7A0(v9, v5, type metadata accessor for FormatContentSlotItemObject.Resolved);
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v18 = sub_1D5D1EB58(v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
          MEMORY[0x1DA6F9CE0](v18);
          if (*((v46[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v47 = v12;
            sub_1D726272C();
            v12 = v47;
          }

          sub_1D726278C();
          v10 = v46[0];
        }

        else
        {
          sub_1D5D1EB58(v5, type metadata accessor for FormatContentSlotItemObject.Resolved);
          sub_1D5D1EB58(v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
        }

        v16 += v17;
        --v15;
      }

      while (v15);
    }

    v19 = v10 >> 62;
    if (v10 >> 62)
    {
      v20 = sub_1D7263BFC();
    }

    else
    {
      v20 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 = v12 >> 62;
    if (v12 >> 62)
    {
      v38 = sub_1D7263BFC();
      v23 = v38 + v20;
      if (__OFADD__(v38, v20))
      {
LABEL_41:
        __break(1u);
        return;
      }
    }

    else
    {
      v22 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v23 = v22 + v20;
      if (__OFADD__(v22, v20))
      {
        goto LABEL_41;
      }
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v21)
      {
        goto LABEL_24;
      }

LABEL_23:
      sub_1D7263BFC();
      goto LABEL_24;
    }

    if (v21)
    {
      goto LABEL_23;
    }

    v24 = v12 & 0xFFFFFFFFFFFFFF8;
    if (v23 <= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v47 = v12;
      goto LABEL_25;
    }

LABEL_24:
    v47 = sub_1D7263DDC();
    v24 = v47 & 0xFFFFFFFFFFFFFF8;
LABEL_25:
    v25 = *(v24 + 16);
    v26 = *(v24 + 24);
    if (v19)
    {
      break;
    }

    v27 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v27)
    {
      goto LABEL_3;
    }

LABEL_29:
    if (((v26 >> 1) - v25) < v20)
    {
      goto LABEL_44;
    }

    v30 = v24 + 8 * v25 + 32;
    v44 = v20;
    v41 = v24;
    if (v19)
    {
      if (v27 < 1)
      {
        goto LABEL_46;
      }

      sub_1D5B5AB88(0, &unk_1EDF1AE60, sub_1D5B7A2B8, MEMORY[0x1E69E62F8]);
      sub_1D6B67DF8();
      for (i = 0; i != v27; ++i)
      {
        v32 = sub_1D6D87760(v46, i, v10);
        v34 = *v33;
        swift_unknownObjectRetain();
        (v32)(v46, 0);
        *(v30 + 8 * i) = v34;
      }
    }

    else
    {
      sub_1D5B7A2B8();
      swift_arrayInitWithCopy();
    }

    v13 = v45;
    v10 = MEMORY[0x1E69E7CC0];
    v12 = v47;
    if (v44 >= 1)
    {
      v35 = *(v41 + 16);
      v36 = __OFADD__(v35, v44);
      v37 = v35 + v44;
      if (v36)
      {
        goto LABEL_45;
      }

      *(v41 + 16) = v37;
    }

LABEL_4:
    v11 = v13 + 1;
    if (v11 == v43)
    {
      return;
    }
  }

  v28 = v24;
  v29 = sub_1D7263BFC();
  v24 = v28;
  v27 = v29;
  if (v29)
  {
    goto LABEL_29;
  }

LABEL_3:

  v10 = MEMORY[0x1E69E7CC0];
  v13 = v45;
  v12 = v47;
  if (v20 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

uint64_t FormatContentSubgroup.Resolved.init(identifier:pluginIdentifier:layout:options:selectors:contents:sections:filters:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

uint64_t FormatContentSubgroup.Resolved.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatContentSubgroup.Resolved.pluginIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void FormatContentSubgroup.Resolved.puzzleStatistics.getter()
{
  sub_1D5B5AB88(0, qword_1EDF30E00, type metadata accessor for PuzzleStatistic, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v43 - v7;
  v56 = type metadata accessor for PuzzleStatistic(0);
  v9 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v10);
  v54 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  v44 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v43 - v17;
  v19 = v0[3];
  v59 = v0[2];
  v60 = v19;
  v61 = v0[4];
  v20 = v0[1];
  v57 = *v0;
  v58 = v20;
  sub_1D5CEBCF0();
  v47 = *(v21 + 16);
  if (v47)
  {
    v22 = 0;
    v46 = v21 + 32;
    v52 = (v9 + 56);
    v50 = v9;
    v23 = (v9 + 48);
    v49 = MEMORY[0x1E69E7CC0];
    v51 = v4;
    v45 = v21;
    while (v22 < *(v21 + 16))
    {
      v48 = v22;
      v24 = *(v46 + (v22 << 6) + 32);
      v25 = *(v24 + 16);
      if (v25)
      {
        v26 = v24 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
        v55 = *(v44 + 72);
        v27 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1D5CEC7A0(v26, v18, type metadata accessor for FormatContentSlotItemObject.Resolved);
          sub_1D5CEC7A0(v18, v14, type metadata accessor for FormatContentSlotItemObject.Resolved);
          if (swift_getEnumCaseMultiPayload() == 6)
          {
            sub_1D6B678B8(v14, v4, type metadata accessor for PuzzleStatistic);
            v28 = 0;
          }

          else
          {
            sub_1D5D1EB58(v14, type metadata accessor for FormatContentSlotItemObject.Resolved);
            v28 = 1;
          }

          v29 = v56;
          (*v52)(v4, v28, 1, v56);
          sub_1D5CEB448(v4, v8, qword_1EDF30E00, type metadata accessor for PuzzleStatistic);
          sub_1D5D1EB58(v18, type metadata accessor for FormatContentSlotItemObject.Resolved);
          if ((*v23)(v8, 1, v29) == 1)
          {
            sub_1D5D1ECD8(v8, qword_1EDF30E00, type metadata accessor for PuzzleStatistic);
          }

          else
          {
            sub_1D6B678B8(v8, v54, type metadata accessor for PuzzleStatistic);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v27 = sub_1D698C9D8(0, v27[2] + 1, 1, v27);
            }

            v31 = v27[2];
            v30 = v27[3];
            if (v31 >= v30 >> 1)
            {
              v27 = sub_1D698C9D8((v30 > 1), v31 + 1, 1, v27);
            }

            v27[2] = v31 + 1;
            sub_1D6B678B8(v54, v27 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v31, type metadata accessor for PuzzleStatistic);
            v4 = v51;
          }

          v26 += v55;
          --v25;
        }

        while (v25);
      }

      else
      {
        v27 = MEMORY[0x1E69E7CC0];
      }

      v32 = v27[2];
      v33 = v49;
      v34 = v49[2];
      v35 = v34 + v32;
      if (__OFADD__(v34, v32))
      {
        goto LABEL_36;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v35 <= v33[3] >> 1)
      {
        v4 = v51;
        v37 = v33;
      }

      else
      {
        if (v34 <= v35)
        {
          v38 = v34 + v32;
        }

        else
        {
          v38 = v34;
        }

        v37 = sub_1D698C9D8(isUniquelyReferenced_nonNull_native, v38, 1, v33);
        v4 = v51;
      }

      v39 = v27[2];
      v49 = v37;
      if (v39)
      {
        if ((v37[3] >> 1) - v37[2] < v32)
        {
          goto LABEL_38;
        }

        swift_arrayInitWithCopy();

        if (v32)
        {
          v40 = v49[2];
          v41 = __OFADD__(v40, v32);
          v42 = v40 + v32;
          if (v41)
          {
            goto LABEL_39;
          }

          v49[2] = v42;
        }
      }

      else
      {

        if (v32)
        {
          goto LABEL_37;
        }
      }

      v22 = v48 + 1;
      v21 = v45;
      if (v48 + 1 == v47)
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
LABEL_39:
    __break(1u);
  }

  else
  {
    v49 = MEMORY[0x1E69E7CC0];
LABEL_34:
  }
}

uint64_t sub_1D6B664A4(uint64_t (*a1)(void))
{
  sub_1D5CEBCF0();
  v2 = a1();

  return v2;
}

void FormatContentSubgroup.Resolved.customItems.getter()
{
  sub_1D5B5AB88(0, qword_1EDF306E0, type metadata accessor for FormatCustomItem.Resolved, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v43 - v7;
  v56 = type metadata accessor for FormatCustomItem.Resolved(0);
  v9 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v10);
  v54 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  v44 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v43 - v17;
  v19 = v0[3];
  v59 = v0[2];
  v60 = v19;
  v61 = v0[4];
  v20 = v0[1];
  v57 = *v0;
  v58 = v20;
  sub_1D5CEBCF0();
  v47 = *(v21 + 16);
  if (v47)
  {
    v22 = 0;
    v46 = v21 + 32;
    v52 = (v9 + 56);
    v50 = v9;
    v23 = (v9 + 48);
    v49 = MEMORY[0x1E69E7CC0];
    v51 = v4;
    v45 = v21;
    while (v22 < *(v21 + 16))
    {
      v48 = v22;
      v24 = *(v46 + (v22 << 6) + 32);
      v25 = *(v24 + 16);
      if (v25)
      {
        v26 = v24 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
        v55 = *(v44 + 72);
        v27 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1D5CEC7A0(v26, v18, type metadata accessor for FormatContentSlotItemObject.Resolved);
          sub_1D5CEC7A0(v18, v14, type metadata accessor for FormatContentSlotItemObject.Resolved);
          if (swift_getEnumCaseMultiPayload() == 8)
          {
            sub_1D6B678B8(v14, v4, type metadata accessor for FormatCustomItem.Resolved);
            v28 = 0;
          }

          else
          {
            sub_1D5D1EB58(v14, type metadata accessor for FormatContentSlotItemObject.Resolved);
            v28 = 1;
          }

          v29 = v56;
          (*v52)(v4, v28, 1, v56);
          sub_1D5CEB448(v4, v8, qword_1EDF306E0, type metadata accessor for FormatCustomItem.Resolved);
          sub_1D5D1EB58(v18, type metadata accessor for FormatContentSlotItemObject.Resolved);
          if ((*v23)(v8, 1, v29) == 1)
          {
            sub_1D5D1ECD8(v8, qword_1EDF306E0, type metadata accessor for FormatCustomItem.Resolved);
          }

          else
          {
            sub_1D6B678B8(v8, v54, type metadata accessor for FormatCustomItem.Resolved);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v27 = sub_1D699549C(0, v27[2] + 1, 1, v27);
            }

            v31 = v27[2];
            v30 = v27[3];
            if (v31 >= v30 >> 1)
            {
              v27 = sub_1D699549C((v30 > 1), v31 + 1, 1, v27);
            }

            v27[2] = v31 + 1;
            sub_1D6B678B8(v54, v27 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v31, type metadata accessor for FormatCustomItem.Resolved);
            v4 = v51;
          }

          v26 += v55;
          --v25;
        }

        while (v25);
      }

      else
      {
        v27 = MEMORY[0x1E69E7CC0];
      }

      v32 = v27[2];
      v33 = v49;
      v34 = v49[2];
      v35 = v34 + v32;
      if (__OFADD__(v34, v32))
      {
        goto LABEL_36;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v35 <= v33[3] >> 1)
      {
        v4 = v51;
        v37 = v33;
      }

      else
      {
        if (v34 <= v35)
        {
          v38 = v34 + v32;
        }

        else
        {
          v38 = v34;
        }

        v37 = sub_1D699549C(isUniquelyReferenced_nonNull_native, v38, 1, v33);
        v4 = v51;
      }

      v39 = v27[2];
      v49 = v37;
      if (v39)
      {
        if ((v37[3] >> 1) - v37[2] < v32)
        {
          goto LABEL_38;
        }

        swift_arrayInitWithCopy();

        if (v32)
        {
          v40 = v49[2];
          v41 = __OFADD__(v40, v32);
          v42 = v40 + v32;
          if (v41)
          {
            goto LABEL_39;
          }

          v49[2] = v42;
        }
      }

      else
      {

        if (v32)
        {
          goto LABEL_37;
        }
      }

      v22 = v48 + 1;
      v21 = v45;
      if (v48 + 1 == v47)
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
LABEL_39:
    __break(1u);
  }

  else
  {
    v49 = MEMORY[0x1E69E7CC0];
LABEL_34:
  }
}

uint64_t FormatContentSubgroup.Resolved.compilerOptionIdentifiers.getter()
{
  sub_1D5B56870(0, &qword_1EDF44038, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v76 = (v66 - v3);
  sub_1D5B56870(0, &qword_1EDF44030, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v75 = (v66 - v6);
  sub_1D5CB3BF0(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v74 = (v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B567C8(0, &qword_1EDF44020, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v73 = (v66 - v12);
  sub_1D5B567C8(0, &qword_1EDF44010, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v72 = (v66 - v15);
  sub_1D5B56870(0, &qword_1EDF44040, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v71 = (v66 - v18);
  v19 = type metadata accessor for FormatCompilerEnumProperty(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v70 = (v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B58AF0(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v69 = (v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B56870(0, &qword_1EDF44028, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v68 = (v66 - v27);
  sub_1D5B567C8(0, &qword_1EDF44018, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatCompilerPrimitiveProperty);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v67 = (v66 - v30);
  v77 = type metadata accessor for FormatCompilerProperty(0);
  v31 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77, v32);
  v34 = v66 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = v66 - v37;
  v39 = type metadata accessor for FormatCompilerOptions(0);
  MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v42 = (v66 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5CEC7A0(*(v0 + 32) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions, v42, type metadata accessor for FormatCompilerOptions);
  v43 = *v42;

  sub_1D5D1EB58(v42, type metadata accessor for FormatCompilerOptions);
  v44 = *(v43 + 16);
  if (!v44)
  {

    v45 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  v78 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, v44, 0);
  v45 = v78;
  v46 = *(v31 + 80);
  v66[1] = v43;
  v47 = v43 + ((v46 + 32) & ~v46);
  v48 = *(v31 + 72);
  do
  {
    sub_1D5CEC7A0(v47, v38, type metadata accessor for FormatCompilerProperty);
    sub_1D5CEC7A0(v38, v34, type metadata accessor for FormatCompilerProperty);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload <= 6)
      {
        if (EnumCaseMultiPayload == 5)
        {
          v56 = v72;
          sub_1D6680CD4(v34, v72);
          v51 = *v56;
          v52 = v56[1];

          sub_1D66810E4(v56);
        }

        else
        {
          v60 = v73;
          sub_1D5CB5494(v34, v73);
          v51 = *v60;
          v52 = v60[1];

          sub_1D5D67638(v60);
        }
      }

      else
      {
        if (EnumCaseMultiPayload == 7)
        {
          v50 = v74;
          sub_1D6B678B8(v34, v74, sub_1D5CB3BF0);
          v51 = *v50;
          v52 = v50[1];

          v53 = sub_1D5CB3BF0;
          goto LABEL_18;
        }

        if (EnumCaseMultiPayload == 8)
        {
          v54 = v75;
          sub_1D6680BB4(v34, v75);
          v51 = *v54;
          v52 = v54[1];

          sub_1D6681050(v54);
        }

        else
        {
          v58 = v76;
          sub_1D6680A88(v34, v76);
          v51 = *v58;
          v52 = v58[1];

          sub_1D6680FBC(v58);
        }
      }
    }

    else if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v59 = v68;
        sub_1D6680F20(v34, v68);
        v51 = *v59;
        v52 = v59[1];

        sub_1D6681200(v59);
      }

      else
      {
        v55 = v67;
        sub_1D5CB55A8(v34, v67);
        v51 = *v55;
        v52 = v55[1];

        sub_1D5D676C0(v55);
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        v50 = v69;
        sub_1D6B678B8(v34, v69, sub_1D5B58AF0);
        v51 = *v50;
        v52 = v50[1];

        v53 = sub_1D5B58AF0;
        goto LABEL_18;
      }

      if (EnumCaseMultiPayload == 3)
      {
        v50 = v70;
        sub_1D6B678B8(v34, v70, type metadata accessor for FormatCompilerEnumProperty);
        v51 = *v50;
        v52 = v50[1];

        v53 = type metadata accessor for FormatCompilerEnumProperty;
LABEL_18:
        sub_1D5D1EB58(v50, v53);
        goto LABEL_23;
      }

      v57 = v71;
      sub_1D6680DF4(v34, v71);
      v51 = *v57;
      v52 = v57[1];

      sub_1D668116C(v57);
    }

LABEL_23:
    sub_1D5D1EB58(v38, type metadata accessor for FormatCompilerProperty);
    v78 = v45;
    v62 = *(v45 + 16);
    v61 = *(v45 + 24);
    if (v62 >= v61 >> 1)
    {
      sub_1D5BFC364((v61 > 1), v62 + 1, 1);
      v45 = v78;
    }

    *(v45 + 16) = v62 + 1;
    v63 = v45 + 16 * v62;
    *(v63 + 32) = v51;
    *(v63 + 40) = v52;
    v47 += v48;
    --v44;
  }

  while (v44);

LABEL_28:
  v64 = sub_1D5B86020(v45);

  return v64;
}