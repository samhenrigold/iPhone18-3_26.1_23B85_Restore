uint64_t static Transformer<>.overrideVerbForApp(originalVerb:usoApp:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    UsoEntity_common_App.applicationId.getter();
    if (v4)
    {
      v5 = v3;
      v6 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_424FF0;
      *(inited + 32) = 0xD000000000000012;
      *(inited + 40) = 0x80000000004574F0;
      if (one-time initialization token for macFaceTimeBundleId != -1)
      {
        swift_once();
      }

      v8 = *algn_599C28;
      *(inited + 48) = static PhoneCallAppNameConstants.macFaceTimeBundleId;
      *(inited + 56) = v8;

      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5(inited, v9, v10, v11, v12, v13, v14, v15, v27, v28, v29, var88[0], var88[1], var88[2], var88[3], var88[4], var88[5], var88[6], var88[7], var88[8], var88[9], var88[10], var88[11], var88[12], var88[13], var88[14], var88[15], var88[16], var88[17], var88[18]);
      v17 = specialized Set.contains(_:)(v5, v6, v16);

      if (v17)
      {
        if (one-time initialization token for siriPhone != -1)
        {
          swift_once();
        }

        v18 = type metadata accessor for Logger();
        __swift_project_value_buffer(v18, static Logger.siriPhone);
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          var88[0] = swift_slowAlloc();
          *v21 = 136315394;
          if (one-time initialization token for logPrefix != -1)
          {
            swift_once();
          }

          DefaultStringInterpolation.appendInterpolation(type:tags:function:)(static NLv4Transformer.logPrefix, unk_599B70, qword_599B78, unk_599B80);
          v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, var88);

          *(v21 + 4) = v22;
          *(v21 + 12) = 2080;
          v23 = PhoneCallVerb.rawValue.getter(a1);
          v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, var88);

          *(v21 + 14) = v25;
          _os_log_impl(&dword_0, v19, v20, "%s overriding verb from .%s to .facetime because user specified FaceTime app", v21, 0x16u);
          a1 = 2;
          swift_arrayDestroy();
        }

        else
        {

          return 2;
        }
      }
    }
  }

  return a1;
}

uint64_t closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  __chkstk_darwin(v3 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  dispatch thunk of UsoEntity_common_Agent.name.getter();
  if (v9)
  {
  }

  else
  {
    result = dispatch thunk of UsoEntity_common_Agent.specifyingContactAddress.getter();
    if (!result)
    {
      v22 = 0;
      goto LABEL_15;
    }
  }

  v11 = dispatch thunk of UsoEntity_common_Agent.name.getter();
  v13 = v12;
  if (one-time initialization token for transformer != -1)
  {
    swift_once();
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySSSg10Foundation20PersonNameComponentsVSgGMd, &_s13SiriUtilities11TransformerVySSSg10Foundation20PersonNameComponentsVSgGMR);
  __swift_project_value_buffer(v14, static Transformer<>.transformer);
  v15 = Transformer.transform.getter();
  v26[0] = v11;
  v26[1] = v13;
  v15(v26);
  if (v1)
  {
  }

  v16 = objc_allocWithZone(INPersonHandle);
  v17 = @nonobjc INPersonHandle.init(value:type:)(0, 0, 0);
  v18 = dispatch thunk of UsoEntity_common_Agent.specifyingContactAddress.getter();
  v25 = a1;
  if (v18)
  {
    v19 = v18;
    if (one-time initialization token for transfomer != -1)
    {
      swift_once();
    }

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology31UsoEntity_common_ContactAddressCSgSo14INPersonHandleCGMd, &_s13SiriUtilities11TransformerVy0A8Ontology31UsoEntity_common_ContactAddressCSgSo14INPersonHandleCGMR);
    __swift_project_value_buffer(v20, static Transformer<>.transfomer);
    v21 = Transformer.transform.getter();
    v26[0] = v19;

    v21(&v27, v26);

    v17 = v27;
  }

  outlined init with copy of ButtonConfigurationModel?(v8, v5, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v23 = objc_allocWithZone(INPerson);
  v22 = @nonobjc INPerson.init(personHandle:nameComponents:displayName:image:contactIdentifier:customIdentifier:relationship:)(v17, v5, v11, v13, 0, 0, 0, 0, 0, 0);
  result = outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v8, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  a1 = v25;
LABEL_15:
  *a1 = v22;
  return result;
}

uint64_t closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  __chkstk_darwin(v5 - 8);
  v7 = &v48 - v6;
  v65 = type metadata accessor for UtteranceAlignment();
  v53 = *(v65 - 8);
  __chkstk_darwin(v65);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UsoIdentifier();
  v52 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  static Signpost.begin(_:)();
  v63 = v15;
  v64 = v14;
  v17 = v16;
  v62 = v18;
  dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
  if (v66)
  {
    v58 = v17;
    v59 = a2;
    v61 = v2;
    v19 = CodeGenBase.entity.getter();

    type metadata accessor for UsoEntityBuilder_common_PhoneCall();
    swift_allocObject();
    v20 = UsoEntityBuilder_common_PhoneCall.init()();
    type metadata accessor for UsoEntityBuilder_common_PhoneNumber();
    swift_allocObject();
    v21 = UsoEntityBuilder_common_PhoneNumber.init()();
    v57 = v19;
    static UsoBuilderConversionUtils.copyEntityDataToEntityBuilder(entityBuilder:entity:copyValueType:copyIdentifiers:copyUtteranceAlignments:)();
    type metadata accessor for UsoEntityBuilder_common_Person();
    swift_allocObject();
    v22 = UsoEntityBuilder_common_Person.init()();

    dispatch thunk of UsoEntityBuilder_common_Person.setSpecifyingContactAddress(value:)();
    v56 = v21;

    v55 = v20;
    dispatch thunk of UsoEntityBuilder_common_PhoneCall.addRecipients(value:)();
    v54 = v22;

    type metadata accessor for UsoTaskBuilder_call_common_PhoneCall();
    swift_allocObject();
    v60 = UsoTaskBuilder_call_common_PhoneCall.init()();
    dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
    if (v66)
    {
      v50 = v13;
      v23 = dispatch thunk of CodeGenBase.usoIdentifiers.getter();

      v24 = *(v23 + 16);
      if (v24)
      {
        v49 = v9;
        v51 = v7;
        v25 = v52 + 16;
        v26 = *(v52 + 16);
        v27 = (*(v52 + 80) + 32) & ~*(v52 + 80);
        v52 = v23;
        v28 = v23 + v27;
        v29 = *(v25 + 56);
        v30 = (v25 - 8);
        do
        {
          v31 = v10;
          v32 = v10;
          v33 = v25;
          v26(v12, v28, v31);
          dispatch thunk of UsoBuilder.addUsoIdentifier(usoIdentifier:)();
          (*v30)(v12, v32);
          v25 = v33;
          v10 = v32;
          v28 += v29;
          --v24;
        }

        while (v24);

        a2 = v59;
        v7 = v51;
        v9 = v49;
      }

      else
      {

        a2 = v59;
      }
    }

    else
    {
      a2 = v59;
    }

    dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
    if (v66)
    {
      v35 = dispatch thunk of CodeGenBase.utteranceAlignments.getter();

      v36 = *(v35 + 16);
      if (v36)
      {
        v51 = v7;
        v38 = v53 + 16;
        v37 = *(v53 + 16);
        v39 = (*(v53 + 80) + 32) & ~*(v53 + 80);
        v53 = v35;
        v40 = v35 + v39;
        v41 = *(v38 + 56);
        v42 = v65;
        do
        {
          v37(v9, v40, v42);
          dispatch thunk of UsoBuilder.addUtteranceAlignment(utteranceAlignment:)();
          v42 = v65;
          (*(v38 - 8))(v9, v65);
          v40 += v41;
          --v36;
        }

        while (v36);

        a2 = v59;
        v7 = v51;
      }

      else
      {
      }
    }

    v43 = v60;
    dispatch thunk of Uso_VerbTemplateBuilder_Target.setTarget(value:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_426260;
    *(v44 + 32) = v43;
    v45 = type metadata accessor for UsoBuilderOptions();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v45);

    static UsoGraphBuilder.buildGraphWithOptions(taskBuilders:options:)();

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v7, &_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
    v46 = static UsoConversionUtils.convertGraphToTasks(graph:)();
    if (specialized Array.count.getter(v46))
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v46 & 0xC000000000000001) == 0, v46);
      if ((v46 & 0xC000000000000001) != 0)
      {
        v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v34 = *(v46 + 32);
      }
    }

    else
    {

      v34 = 0;
    }
  }

  else
  {
    v34 = 0;
  }

  *a2 = v34;
  Signpost.OpenSignpost.end()();
}

uint64_t one-time initialization function for transfomer()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology31UsoEntity_common_ContactAddressCSgSo14INPersonHandleCGMd, &_s13SiriUtilities11TransformerVy0A8Ontology31UsoEntity_common_ContactAddressCSgSo14INPersonHandleCGMR);
  __swift_allocate_value_buffer(v0, static Transformer<>.transfomer);
  __swift_project_value_buffer(v0, static Transformer<>.transfomer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology31UsoEntity_common_ContactAddressCSgMd, &_s12SiriOntology31UsoEntity_common_ContactAddressCSgMR);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPersonHandle, INPersonHandle_ptr);
  return Transformer.init(transform:)();
}

uint64_t closure #1 in closure #1 in variable initialization expression of static Transformer<>.transfomer@<X0>(uint64_t *a1@<X0>, id *a2@<X8>)
{
  v3 = *a1;
  static Signpost.begin(_:)();
  if (v3)
  {
    v4 = dispatch thunk of UsoEntity_common_ContactAddress.value.getter();
    v6 = v5;
    dispatch thunk of UsoEntity_common_ContactAddress.label.getter();
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

LABEL_6:
  v8 = String._bridgeToObjectiveC()();

  if (!v3)
  {
    v19 = 0;
    goto LABEL_30;
  }

  v29 = a2;
  CodeGenBase.entity.getter();
  v9 = UsoEntity.valueTypeString.getter();
  v11 = v10;

  if (v9 == 0xD000000000000010 && 0x800000000045CB80 == v11)
  {
    goto LABEL_18;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    goto LABEL_19;
  }

  CodeGenBase.entity.getter();
  v14 = UsoEntity.valueTypeString.getter();
  v16 = v15;

  if (v14 == 0xD000000000000012 && 0x8000000000452970 == v16)
  {
LABEL_18:

    goto LABEL_19;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v18 & 1) == 0)
  {
    v19 = 0;
    goto LABEL_20;
  }

LABEL_19:
  v19 = 2;
LABEL_20:
  CodeGenBase.entity.getter();
  v20 = UsoEntity.valueTypeString.getter();
  v22 = v21;

  if (v20 == 0xD000000000000012 && 0x8000000000452970 == v22)
  {
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & 1) == 0)
    {
      a2 = v29;
      goto LABEL_30;
    }
  }

  a2 = v29;
  if (v6)
  {
    lazy protocol witness table accessor for type String and conformance String();
    v4 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v26 = v25;

    v6 = v26;
  }

LABEL_30:
  v27 = objc_allocWithZone(INPersonHandle);
  *a2 = @nonobjc INPersonHandle.init(value:type:label:)(v4, v6, v19, v8);
  Signpost.OpenSignpost.end()();
}

unint64_t SpecifyingContactAddress.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t closure #1 in closure #1 in variable initialization expression of static Transformer<>.transformer@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  if (*(a1 + 8))
  {
    v7 = [objc_allocWithZone(NSPersonNameComponentsFormatter) init];
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 personNameComponentsFromString:v8];

    if (v9)
    {
      static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v10 = type metadata accessor for PersonNameComponents();
      v11 = 0;
    }

    else
    {
      v10 = type metadata accessor for PersonNameComponents();
      v11 = 1;
    }

    __swift_storeEnumTagSinglePayload(v6, v11, 1, v10);
    return outlined init with take of ButtonConfigurationModel?(v6, a2, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  }

  else
  {
    v12 = type metadata accessor for PersonNameComponents();
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v12);
  }
}

uint64_t UserDialogActParse.identifiers.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t specialized UsoContactConvertible.isNameLikelyNonBusiness()()
{
  v1 = type metadata accessor for IndexSet.RangeView();
  v147 = *(v1 - 8);
  __chkstk_darwin(v1);
  v146 = &v129[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = type metadata accessor for PayloadAttachmentInfo.AttachmentType();
  v145 = *(v3 - 8);
  __chkstk_darwin(v3);
  v151 = &v129[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMR);
  __chkstk_darwin(v157);
  v6 = &v129[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
  __chkstk_darwin(v7 - 8);
  v156 = &v129[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
  __chkstk_darwin(v9 - 8);
  v158 = &v129[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v154 = &v129[-v12];
  __chkstk_darwin(v13);
  v163 = &v129[-v14];
  v15 = type metadata accessor for SpanProperty();
  v16 = *(v15 - 8);
  v161 = v15;
  v162 = v16;
  __chkstk_darwin(v15);
  v150 = &v129[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v152 = &v129[-v19];
  __chkstk_darwin(v20);
  v155 = &v129[-v21];
  v165 = type metadata accessor for UsoEntitySpan();
  v160 = *(v165 - 8);
  __chkstk_darwin(v165);
  v23 = &v129[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v149 = type metadata accessor for IndexSet();
  v148 = *(v149 - 8);
  __chkstk_darwin(v149);
  v153 = &v129[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UtteranceSpanVSgMd, &_s12SiriOntology13UtteranceSpanVSgMR);
  __chkstk_darwin(v25 - 8);
  v27 = &v129[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  v30 = &v129[-v29];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology18UtteranceAlignmentVSgMd, &_s12SiriOntology18UtteranceAlignmentVSgMR);
  __chkstk_darwin(v31 - 8);
  v33 = &v129[-v32];
  v164 = type metadata accessor for UtteranceAlignment();
  v159 = *(v164 - 8);
  __chkstk_darwin(v164);
  v35 = &v129[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v171 = v0;
  v36 = dispatch thunk of UsoEntity_common_Person.name.getter();
  if (!v37)
  {
    goto LABEL_9;
  }

  v38 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v38 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (!v38)
  {

LABEL_9:
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logger.siriPhone);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v170 = v46;
      *v45 = 136315138;
      v166 = 0;
      v167 = 0xE000000000000000;
      DefaultStringInterpolation.appendInterpolation(type:tags:function:)(&type metadata for String, &outlined read-only object #0 of specialized UsoContactConvertible.isNameLikelyNonBusiness(), 0xD000000000000019, 0x800000000045CCA0);
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v166, v167, &v170);

      *(v45 + 4) = v47;
      _os_log_impl(&dword_0, v43, v44, "%s -  Name is nil or empty, returning false", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
    }

    return 0;
  }

  v143 = v36;
  v144 = v37;
  v39 = specialized UsoContactConvertible.nameSpans.getter()[2];

  if (!v39)
  {

    return 0;
  }

  v40 = specialized UsoContactConvertible.utteranceAlignment.getter();
  specialized Collection.first.getter(v40);

  v41 = v164;
  if (__swift_getEnumTagSinglePayload(v33, 1, v164) == 1)
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v33, &_s12SiriOntology18UtteranceAlignmentVSgMd, &_s12SiriOntology18UtteranceAlignmentVSgMR);
    return 0;
  }

  v134 = v1;
  v50 = v159;
  (*(v159 + 32))(v35, v33, v41);
  if (specialized UsoContactConvertible.hasFullBusinessNameProperty.getter())
  {

    (*(v50 + 8))(v35, v41);
    return 0;
  }

  v51 = UtteranceAlignment.spans.getter();
  specialized Collection.first.getter(v51);

  v52 = type metadata accessor for UtteranceSpan();
  if (__swift_getEnumTagSinglePayload(v30, 1, v52) == 1)
  {
LABEL_22:

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v30, &_s12SiriOntology13UtteranceSpanVSgMd, &_s12SiriOntology13UtteranceSpanVSgMR);
    (*(v159 + 8))(v35, v164);
    return 0;
  }

  v53 = UtteranceSpan.startIndex.getter();
  v54 = *(v52 - 8);
  v55 = *(v54 + 8);
  v56 = v30;
  v57 = v55;
  v142 = v54 + 8;
  v55(v56, v52);
  v58 = UtteranceAlignment.spans.getter();
  specialized Collection.first.getter(v58);

  if (__swift_getEnumTagSinglePayload(v27, 1, v52) == 1)
  {
    v30 = v27;
    goto LABEL_22;
  }

  v59 = UtteranceSpan.endIndex.getter();
  result = v57(v27, v52);
  if (v59 < v53)
  {
    goto LABEL_89;
  }

  v130 = v53;
  IndexSet.init(integersIn:)();
  result = specialized UsoContactConvertible.nameSpans.getter();
  v142 = result;
  v60 = *(result + 16);
  v131 = v35;
  v61 = v154;
  v139 = v60;
  if (!v60)
  {
LABEL_73:

    v105 = v146;
    v106 = IndexSet.rangeView.getter();
    __chkstk_darwin(v106);
    v107 = v144;
    *&v129[-80] = v143;
    *&v129[-72] = v107;
    *&v129[-64] = v130;
    *&v129[-56] = &type metadata for String;
    *&v129[-48] = &outlined read-only object #0 of specialized UsoContactConvertible.isNameLikelyNonBusiness();
    *&v129[-40] = 0;
    *&v129[-32] = 0;
    *&v129[-24] = v131;
    *&v129[-16] = &v171;
    v108 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF10Foundation8IndexSetV9RangeViewV_SnySS0E0VGs5NeverOTg5(partial apply for specialized closure #1 in UsoContactConvertible.isNameLikelyNonBusiness());
    (*(v147 + 8))(v105, v134);
    v109 = v108[2];
    if (v109)
    {
      v166 = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v109, 0);
      v110 = v166;
      v165 = v108;
      v111 = v108 + 5;
      do
      {
        v112 = String.subscript.getter();
        v114 = v113;
        v116 = v115;
        v118 = v117;
        v166 = v110;
        v120 = v110[2];
        v119 = v110[3];
        if (v120 >= v119 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v119 > 1, v120 + 1, 1);
          v110 = v166;
        }

        v111 += 2;
        v110[2] = v120 + 1;
        v121 = &v110[4 * v120];
        v121[4] = v112;
        v121[5] = v114;
        v121[6] = v116;
        v121[7] = v118;
        --v109;
      }

      while (v109);
    }

    else
    {

      v110 = _swiftEmptyArrayStorage;
    }

    v166 = v110;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySsGMd, &_sSaySsGMR);
    lazy protocol witness table accessor for type [Substring] and conformance [A]();
    lazy protocol witness table accessor for type Substring and conformance Substring();
    v122 = Sequence<>.joined(separator:)();
    v124 = v123;

    v125 = HIBYTE(v124) & 0xF;
    v166 = v122;
    v167 = v124;
    if ((v124 & 0x2000000000000000) == 0)
    {
      v125 = v122 & 0xFFFFFFFFFFFFLL;
    }

    v168 = 0;
    v169 = v125;
    v126 = v159;
    do
    {
      v127 = String.Iterator.next()();
      v48 = v127.value._object == 0;
      if (!v127.value._object)
      {
        break;
      }

      v128 = Character.isWhitespace.getter();
    }

    while ((v128 & 1) != 0);

    (*(v148 + 8))(v153, v149);
    (*(v126 + 8))(v131, v164);
    return v48;
  }

  v62 = 0;
  v138 = v142 + ((*(v160 + 80) + 32) & ~*(v160 + 80));
  v137 = v160 + 16;
  v141 = v162 + 16;
  v140 = v162 + 8;
  v136 = enum case for PayloadAttachmentInfo.AttachmentType.full(_:);
  v135 = (v145 + 13);
  v132 = (v145 + 4);
  v133 = (v145 + 1);
  v145 = (v160 + 8);
  while (v62 < *(v142 + 16))
  {
    (*(v160 + 16))(v23, v138 + *(v160 + 72) * v62, v165);
    v63 = UsoEntitySpan.properties.getter();
    if (*(v63 + 16))
    {
      v64 = v161;
      v65 = v162;
      v66 = v155;
      (*(v162 + 16))(v155, v63 + ((*(v65 + 80) + 32) & ~*(v65 + 80)), v161);

      v67 = SpanProperty.key.getter();
      v69 = v68;
      (*(v65 + 8))(v66, v64);
      if (v67 == 0x614E6E6F73726570 && v69 == 0xEA0000000000656DLL)
      {
        goto LABEL_50;
      }

      v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v71)
      {
        goto LABEL_51;
      }
    }

    else
    {
    }

    v72 = UsoEntitySpan.properties.getter();
    if (*(v72 + 16))
    {
      v73 = v161;
      v74 = v162;
      v75 = v152;
      (*(v162 + 16))(v152, v72 + ((*(v74 + 80) + 32) & ~*(v74 + 80)), v161);

      v76 = SpanProperty.key.getter();
      v78 = v77;
      (*(v74 + 8))(v75, v73);
      if (v76 == 0x72506E6F73726570 && v78 == 0xEC00000078696665)
      {
        goto LABEL_50;
      }

      v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v80)
      {
        goto LABEL_51;
      }
    }

    else
    {
    }

    v81 = UsoEntitySpan.properties.getter();
    if (*(v81 + 16))
    {
      v82 = v161;
      v83 = v162;
      v84 = v150;
      (*(v162 + 16))(v150, v81 + ((*(v83 + 80) + 32) & ~*(v83 + 80)), v161);

      v85 = SpanProperty.key.getter();
      v87 = v86;
      (*(v83 + 8))(v84, v82);
      if (v85 == 0x75536E6F73726570 && v87 == 0xEC00000078696666)
      {
        goto LABEL_50;
      }

      v89 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v89)
      {
        goto LABEL_51;
      }
    }

    else
    {
    }

    v101 = UsoEntitySpan.label.getter();
    if (!v102)
    {
      goto LABEL_72;
    }

    if (v101 == 0x75466E6F73726570 && v102 == 0xEE00656D614E6C6CLL)
    {
LABEL_50:

      goto LABEL_51;
    }

    v104 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v104 & 1) == 0)
    {
      goto LABEL_72;
    }

LABEL_51:
    v90 = v156;
    UsoEntitySpan.payloadAttachmentInfo.getter();
    v91 = v90;
    v92 = type metadata accessor for PayloadAttachmentInfo();
    if (__swift_getEnumTagSinglePayload(v91, 1, v92) == 1)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v91, &_s12SiriOntology21PayloadAttachmentInfoVSgMd, &_s12SiriOntology21PayloadAttachmentInfoVSgMR);
      v93 = v163;
      __swift_storeEnumTagSinglePayload(v163, 1, 1, v3);
    }

    else
    {
      v93 = v163;
      PayloadAttachmentInfo.attachmentType.getter();
      (*(*(v92 - 8) + 8))(v91, v92);
    }

    v94 = v158;
    (*v135)(v61, v136, v3);
    __swift_storeEnumTagSinglePayload(v61, 0, 1, v3);
    v95 = *(v157 + 48);
    outlined init with copy of ButtonConfigurationModel?(v93, v6, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    outlined init with copy of ButtonConfigurationModel?(v61, &v6[v95], &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    if (__swift_getEnumTagSinglePayload(v6, 1, v3) == 1)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v61, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v93, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
      if (__swift_getEnumTagSinglePayload(&v6[v95], 1, v3) == 1)
      {
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v6, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
LABEL_86:

        (*v145)(v23, v165);
        (*(v148 + 8))(v153, v149);
        (*(v159 + 8))(v131, v164);
        return 1;
      }

      goto LABEL_59;
    }

    outlined init with copy of ButtonConfigurationModel?(v6, v94, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    if (__swift_getEnumTagSinglePayload(&v6[v95], 1, v3) == 1)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v61, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v163, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
      (*v133)(v94, v3);
LABEL_59:
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v6, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSg_AFtMR);
      goto LABEL_61;
    }

    v96 = v151;
    (*v132)(v151, &v6[v95], v3);
    lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(&lazy protocol witness table cache variable for type PayloadAttachmentInfo.AttachmentType and conformance PayloadAttachmentInfo.AttachmentType, &type metadata accessor for PayloadAttachmentInfo.AttachmentType, &protocol conformance descriptor for PayloadAttachmentInfo.AttachmentType);
    v97 = dispatch thunk of static Equatable.== infix(_:_:)();
    v98 = *v133;
    (*v133)(v96, v3);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v154, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v163, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    v98(v94, v3);
    v61 = v154;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v6, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMd, &_s12SiriOntology21PayloadAttachmentInfoV0D4TypeOSgMR);
    if (v97)
    {
      goto LABEL_86;
    }

LABEL_61:
    v99 = UsoEntitySpan.startIndex.getter();
    if ((v99 & 0x100000000) == 0)
    {
      v100 = v99;
      result = UsoEntitySpan.endIndex.getter();
      if ((result & 0x100000000) == 0)
      {
        if (result < v100)
        {
          goto LABEL_88;
        }

        IndexSet.remove(integersIn:)();
      }
    }

LABEL_72:
    ++v62;
    result = (*v145)(v23, v165);
    if (v139 == v62)
    {
      goto LABEL_73;
    }
  }

  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
  return result;
}

BOOL closure #8 in implicit closure #7 in UserDialogActParse.isCallToOffDeviceContactEntity(useEntitySpans:referenceResolver:)(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  CodeGenBase.entity.getter();
  v2 = dispatch thunk of RRReferenceResolverProtocol.hasReference(usoEntity:)();

  if (dispatch thunk of CodeGenGlobalArgs.usoQuantifier.getter() || dispatch thunk of UsoEntity_common_Person.specifyingContactAddress.getter() && (v4 = dispatch thunk of CodeGenGlobalArgs.usoQuantifier.getter(), , v4))
  {

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriPhone);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315650;
    if (one-time initialization token for logPrefix != -1)
    {
      swift_once();
    }

    v10 = static NLv4Transformer.logPrefix;
    v11 = unk_599B70;

    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v10, v11, 0xD000000000000041, 0x800000000045C960);

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v14);

    *(v8 + 4) = v12;
    *(v8 + 12) = 1024;
    *(v8 + 14) = v2 & 1;
    *(v8 + 18) = 1024;
    *(v8 + 20) = v3;
    _os_log_impl(&dword_0, v6, v7, "%s hasReference=%{BOOL}d, hasQuantifier=%{BOOL}d.", v8, 0x18u);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  return ((v2 | v3) & 1) == 0;
}

void UserDialogActParse.isPlayIt.getter()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_88();
  v1 = type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues();
  OUTLINED_FUNCTION_7();
  v3 = v2;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMR);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v9);
  v11 = v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
  __chkstk_darwin(v12 - 8);
  OUTLINED_FUNCTION_12_5();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  v18 = v28 - v17;
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_42_13();
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v29[3])
  {
    v21 = &_sypSgMd;
    v22 = &_sypSgMR;
    v23 = v29;
LABEL_19:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v23, v21, v22);
    goto LABEL_20;
  }

  type metadata accessor for UsoTask_play_common_Voicemail();
  OUTLINED_FUNCTION_31_15();
  if (swift_dynamicCast())
  {

    dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

    if (v29[0])
    {
      v28[0] = v3;

      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
      if (v29[0] && (v20 = dispatch thunk of CodeGenGlobalArgs.usoReferenceType.getter(), , v20))
      {
        dispatch thunk of UsoEntity_common_ReferenceType.definedValue.getter();
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
      }

      (*(v28[0] + 104))(v18, enum case for UsoEntity_common_ReferenceType.DefinedValues.common_ReferenceType_DefiniteReference(_:), v1);
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v1);
      v24 = *(v8 + 48);
      outlined init with copy of ButtonConfigurationModel?(v0, v11, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
      outlined init with copy of ButtonConfigurationModel?(v18, &v11[v24], &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
      OUTLINED_FUNCTION_1_0(v11);
      if (!v25)
      {
        outlined init with copy of ButtonConfigurationModel?(v11, v15, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
        OUTLINED_FUNCTION_1_0(&v11[v24]);
        if (!v25)
        {
          v26 = v28[0];
          (*(v28[0] + 32))(v7, &v11[v24], v1);
          lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(&lazy protocol witness table cache variable for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues, &type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues, &protocol conformance descriptor for UsoEntity_common_ReferenceType.DefinedValues);
          dispatch thunk of static Equatable.== infix(_:_:)();

          v27 = *(v26 + 8);
          v27(v7, v1);
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v18, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
          v27(v15, v1);
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
          goto LABEL_20;
        }

        OUTLINED_FUNCTION_77_1(v18);
        OUTLINED_FUNCTION_77_1(v0);
        (*(v28[0] + 8))(v15, v1);
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_77_1(v18);
      OUTLINED_FUNCTION_77_1(v0);
      OUTLINED_FUNCTION_1_0(&v11[v24]);
      if (!v25)
      {
LABEL_18:
        v21 = &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMd;
        v22 = &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSg_AFtMR;
        v23 = v11;
        goto LABEL_19;
      }

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMd, &_s12SiriOntology30UsoEntity_common_ReferenceTypeC13DefinedValuesOSgMR);
    }

    else
    {
    }
  }

LABEL_20:
  OUTLINED_FUNCTION_65();
}

PhoneCallFlowDelegatePlugin::UsoIdentifierNamespaceType_optional __swiftcall UsoIdentifierNamespaceType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UsoIdentifierNamespaceType.init(rawValue:), v3);
  OUTLINED_FUNCTION_40_0();

  if (v2 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v2;
  }
}

PhoneCallFlowDelegatePlugin::UsoIdentifierNamespaceType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance UsoIdentifierNamespaceType@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::UsoIdentifierNamespaceType_optional *a2@<X8>)
{
  result.value = UsoIdentifierNamespaceType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance UsoIdentifierNamespaceType()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = UsoIdentifierNamespaceType.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

PhoneCallFlowDelegatePlugin::UsoIdentifierAppBundleType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance UsoIdentifierAppBundleType@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::UsoIdentifierAppBundleType_optional *a2@<X8>)
{
  result.value = UsoIdentifierAppBundleType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance UsoIdentifierAppBundleType()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = UsoIdentifierAppBundleType.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t UsoIdentifierAppBundleType.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v3._rawValue = v2;
  v4._object = v0;
  _findStringSwitchCase(cases:string:)(v3, v4);
  OUTLINED_FUNCTION_40_0();

  if (v1 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v1)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

PhoneCallFlowDelegatePlugin::SpecifyingContactAddress_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SpecifyingContactAddress@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::SpecifyingContactAddress_optional *a2@<X8>)
{
  result.value = SpecifyingContactAddress.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SpecifyingContactAddress()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = SpecifyingContactAddress.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

PhoneCallFlowDelegatePlugin::EntitySpanPropertyKey_optional __swiftcall EntitySpanPropertyKey.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of EntitySpanPropertyKey.init(rawValue:), v3);
  OUTLINED_FUNCTION_40_0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t EntitySpanPropertyKey.rawValue.getter(char a1)
{
  result = 0x7373656E69737562;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_20_25();
      break;
    case 2:
      result = 0x72506E6F73726570;
      break;
    case 3:
      result = 0x75536E6F73726570;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::EntitySpanPropertyKey_optional protocol witness for RawRepresentable.init(rawValue:) in conformance EntitySpanPropertyKey@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::EntitySpanPropertyKey_optional *a2@<X8>)
{
  result.value = EntitySpanPropertyKey.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance EntitySpanPropertyKey()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = EntitySpanPropertyKey.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

BOOL EntitySpanLabel.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of EntitySpanLabel.init(rawValue:), v2);
  OUTLINED_FUNCTION_40_0();

  return v1 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance EntitySpanLabel@<W0>(_BYTE *a1@<X8>)
{
  result = EntitySpanLabel.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t static Transformer<>.makeCallReferenceUsoEntity(contacts:referenceResolver:siriKitEventSender:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v47 = a3;
  v50 = a4;
  v6 = type metadata accessor for UsoEntity_common_ReferenceType.DefinedValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _swiftEmptyArrayStorage;
  v54 = _swiftEmptyArrayStorage;
  type metadata accessor for UsoEntityBuilder_common_ReferenceType();
  swift_allocObject();
  v11 = UsoEntityBuilder_common_ReferenceType.init()();
  (*(v7 + 104))(v9, enum case for UsoEntity_common_ReferenceType.DefinedValues.common_ReferenceType_DefiniteReference(_:), v6);
  dispatch thunk of UsoEntityBuilder_common_ReferenceType.setDefinedValue(value:)();
  (*(v7 + 8))(v9, v6);
  type metadata accessor for UsoEntityBuilder_common_Person();
  swift_allocObject();
  v12 = UsoEntityBuilder_common_Person.init()();

  dispatch thunk of UsoEntityBuilderGlobalArgs.setUsoReferenceType(value:)();
  v49 = v11;

  v48 = v12;
  if (static UsoBuilderConversionUtils.convertEntityBuilderToEntity(entityBuilder:)())
  {
    v13 = *(a1 + 16);
    if (v13)
    {
      v46 = a2;
      v14 = a1 + 32;

      while (1)
      {
        _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_1();
        __swift_project_boxed_opaque_existential_1(v55, v56);
        v15.value = SiriPhoneContact.getContactReference()().value;
        if (v15.value != PhoneCallFlowDelegatePlugin_PhoneCallContactReference_unknownDefault)
        {
          PhoneCallContactReference.rawValue.getter(v15.value);
          if (v22 == 6647407 && v21 == 0xE300000000000000)
          {
LABEL_18:

LABEL_19:

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*(&dword_10 + (v54 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v54 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v10 = v54;
            goto LABEL_22;
          }

          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v24)
          {
            goto LABEL_19;
          }
        }

        __swift_project_boxed_opaque_existential_1(v55, v56);
        v16.value = SiriPhoneContact.getContactReference()().value;
        if (v16.value != PhoneCallFlowDelegatePlugin_PhoneCallContactReference_unknownDefault)
        {
          PhoneCallContactReference.rawValue.getter(v16.value);
          if (v18 == 2037277037 && v17 == 0xE400000000000000)
          {
            goto LABEL_18;
          }

          v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v20)
          {
            goto LABEL_19;
          }
        }

LABEL_22:
        __swift_destroy_boxed_opaque_existential_1(v55);
        v14 += 40;
        if (!--v13)
        {

          a2 = v46;
          break;
        }
      }
    }
  }

  if (specialized Array.count.getter(v10))
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v26 = outlined bridged method (pb) of @objc static INIntent.typeName()(ObjCClassFromMetadata);
    __chkstk_darwin(v26);
    *(&v45 - 2) = &v54;
    *(&v45 - 1) = a2;
    static SiriKitEventSender.current.getter();
    _s27PhoneCallFlowDelegatePlugin0A21SelfPerformanceLoggerC8signpost19domainExecutionType04taskL018siriKitEventSender_xSo020FLOWSchemaFLOWDomainkL0V_SS04SirioC00toP7Sending_pxyXEtlFZAA14TargetContacts33_9A2BD23864AF7C0BC1A75979566F7BA5LLVSg_Tt4g5();
    v27 = v55[0];
    v28 = v55[1];
    v29 = v55[2];
    v30 = v56;
    v31 = v57;
    v32 = v58;
    __swift_destroy_boxed_opaque_existential_1(&v52);
    if (v27)
    {
      v59 = v27;

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v59, &_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
      v60 = v28;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v60, &_sSay27PhoneCallFlowDelegatePlugin17ContactSourceTypeOGSgMd, &_sSay27PhoneCallFlowDelegatePlugin17ContactSourceTypeOGSgMR);
      v61 = v29;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v61, &_sSay13SiriInference12ContactQueryVGSgMd, &_sSay13SiriInference12ContactQueryVGSgMR);
      v62[0] = v30;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v62, &_sSay12SiriOntology22UsoEntity_common_GroupCGSgMd, &_sSay12SiriOntology22UsoEntity_common_GroupCGSgMR);
      v52 = v31;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v52, &_sSay12SiriOntology9UsoEntityCGSgMd, &_sSay12SiriOntology9UsoEntityCGSgMR);
      v33 = v47[3];
      v46 = v47[4];
      v47 = __swift_project_boxed_opaque_existential_1(v47, v33);
      type metadata accessor for SiriKitEvent();
      v51 = 0;
      SiriKitEvent.__allocating_init(stateType:taskType:statusReason:_:)();
      v34 = v32;
      dispatch thunk of SiriKitEventSending.send(_:)();

      goto LABEL_35;
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, static Logger.siriPhone);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v62[0] = v39;
    *v38 = 136315138;
    if (one-time initialization token for logPrefix != -1)
    {
      swift_once();
    }

    v40 = static NLv4Transformer.logPrefix;
    v41 = unk_599B70;
    v52 = 0;
    v53 = 0xE000000000000000;

    DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v40, v41, 0xD00000000000004ALL, 0x800000000045CE10);

    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v62);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_0, v36, v37, "%s makeCallReferenceUsoEntity: no person resolved", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v34 = 0;
LABEL_35:

  v44 = v50;
  *v50 = v27;
  v44[1] = v28;
  v44[2] = v29;
  v44[3] = v30;
  v44[4] = v31;
  *(v44 + 40) = v34;
  return result;
}

double closure #1 in static Transformer<>.makeCallReferenceUsoEntity(contacts:referenceResolver:siriKitEventSender:)@<D0>(uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = type metadata accessor for MatchedResultsSetting();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, enum case for MatchedResultsSetting.defaultMatching(_:), v5, v7);

  static NLTransformerReferenceHelper.resolveEntitiesTargetContacts(_:referenceResolver:matchedResultsSetting:)(v10, a2, v9, &v13);

  (*(v6 + 8))(v9, v5);
  v11 = v14[0];
  *a3 = v13;
  a3[1] = v11;
  result = *(v14 + 9);
  *(a3 + 25) = *(v14 + 9);
  return result;
}

id closure #1 in static Transformer<>.transformer(sharedGlobals:app:sirikitIntent:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v56 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7();
  v54 = v9;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = OUTLINED_FUNCTION_40_0();
  v17 = v16(v15, v14);
  v18 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v19 = OUTLINED_FUNCTION_11_0();
  v20(v19, v18);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_1();

  static SiriKitEventSender.current.getter();
  static Transformer<>.makeCallReferenceUsoEntity(contacts:referenceResolver:siriKitEventSender:)(v17, &v61, v60, v64);

  __swift_destroy_boxed_opaque_existential_1(v60);
  __swift_destroy_boxed_opaque_existential_1(&v61);
  if (v64[0])
  {
    v58 = a3;
    v22 = v64[1];
    v21 = v65;
    v24 = v66;
    v23 = v67;
    if (v65 && *(v65 + 16))
    {
      v68 = v64[0];

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v68, &_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
      v69 = v22;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v69, &_sSay27PhoneCallFlowDelegatePlugin17ContactSourceTypeOGSgMd, &_sSay27PhoneCallFlowDelegatePlugin17ContactSourceTypeOGSgMR);

      v70[0] = v24;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v70, &_sSay12SiriOntology22UsoEntity_common_GroupCGSgMd, &_sSay12SiriOntology22UsoEntity_common_GroupCGSgMR);
      v71 = v23;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v71, &_sSay12SiriOntology9UsoEntityCGSgMd, &_sSay12SiriOntology9UsoEntityCGSgMR);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static Logger.siriPhone);
      OUTLINED_FUNCTION_40_0();

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v26, v27))
      {
        OUTLINED_FUNCTION_21_21();
        v28 = swift_slowAlloc();
        OUTLINED_FUNCTION_24_19();
        v52 = swift_slowAlloc();
        v60[0] = v52;
        *v28 = 136315394;
        if (one-time initialization token for logPrefix != -1)
        {
          OUTLINED_FUNCTION_0_69();
          swift_once();
        }

        v29 = unk_599B70;
        OUTLINED_FUNCTION_71_3();
        OUTLINED_FUNCTION_46_13();

        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, v60);
        OUTLINED_FUNCTION_34_0();

        *(v28 + 4) = v29;
        *(v28 + 12) = 2080;
        type metadata accessor for ContactQuery();
        v30 = Array.description.getter();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v60);
        OUTLINED_FUNCTION_34_0();

        *(v28 + 14) = v29;
        _os_log_impl(&dword_0, v26, v27, "%s SRR returned contact queries: %s", v28, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_8();

        OUTLINED_FUNCTION_8();
      }

      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v32 = PhoneCallNLIntent.isDisplayNameEmergencyContact()();
      v33 = a2[3];
      v34 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v33);
      (*(v34 + 8))(&v61, v33, v34);
      __swift_project_boxed_opaque_existential_1(&v61, v63);
      dispatch thunk of DeviceState.siriLocale.getter();
      static SiriKitEventSender.current.getter();
      type metadata accessor for EmergencyContactResolution();
      v35 = swift_allocObject();
      v36 = a1[3];
      v37 = a1[4];
      v38 = __swift_project_boxed_opaque_existential_1(a1, v36);
      LOBYTE(v49) = 1;
      a3 = v58;
      _s27PhoneCallFlowDelegatePlugin17ContactResolutionC19updateSiriKitIntent04sirijK014contactQueries012hasEmergencyF03app6locale02nlK013sharedGlobals18multicardinalIndex0lJ11EventSender09emergencyfG0yAA013NCRResolvableK0_p_Say0I9Inference0F5QueryVGSb0i3AppG03AppCSg10Foundation6LocaleVAA0aB8NLIntent_pAA06SharedU9Providing_pSiSg0ijC00ijX7Sending_pAA0pfG0CtFZTf4ennnnnnnnnn_nSo07INStartbK0C_Tt9g5Tf4nnnnnennnn_n(v58, v21, v32, a4, v13, v38, a2, 0, v49, v60, v35, v36, v37, v50, v51, v52, a4, v54, v56, v58, v5);

      __swift_destroy_boxed_opaque_existential_1(v60);
      (*(v55 + 8))(v13, v57);
      __swift_destroy_boxed_opaque_existential_1(&v61);
    }

    else if (specialized Array.count.getter(v64[0]))
    {
      v70[0] = v22;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v70, &_sSay27PhoneCallFlowDelegatePlugin17ContactSourceTypeOGSgMd, &_sSay27PhoneCallFlowDelegatePlugin17ContactSourceTypeOGSgMR);

      v71 = v24;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v71, &_sSay12SiriOntology22UsoEntity_common_GroupCGSgMd, &_sSay12SiriOntology22UsoEntity_common_GroupCGSgMR);
      v60[0] = v23;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v60, &_sSay12SiriOntology9UsoEntityCGSgMd, &_sSay12SiriOntology9UsoEntityCGSgMR);
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, static Logger.siriPhone);
      OUTLINED_FUNCTION_11_0();

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v40, v41))
      {
        OUTLINED_FUNCTION_21_21();
        v42 = swift_slowAlloc();
        OUTLINED_FUNCTION_24_19();
        v69 = swift_slowAlloc();
        *v42 = 136315394;
        if (one-time initialization token for logPrefix != -1)
        {
          OUTLINED_FUNCTION_0_69();
          swift_once();
        }

        v43 = unk_599B70;
        OUTLINED_FUNCTION_71_3();
        OUTLINED_FUNCTION_46_13();

        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &v69);
        OUTLINED_FUNCTION_34_0();

        *(v42 + 4) = v43;
        *(v42 + 12) = 2080;
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
        v44 = Array.description.getter();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v69);
        OUTLINED_FUNCTION_34_0();

        *(v42 + 14) = v43;
        _os_log_impl(&dword_0, v40, v41, "%s SRR returned updated contacts: %s", v42, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_8();

        OUTLINED_FUNCTION_8();
      }

      else
      {
      }

      a3 = v58;
      type metadata accessor for ContactResolution();
      v46 = OUTLINED_FUNCTION_11_0();
      v47 = static ContactResolution.dedupeContacts(contacts:)(v46);

      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
      v61 = v47;
      NSObject.update(with:at:)(&v61, 0x73746361746E6F63, 0xE800000000000000);
      __swift_destroy_boxed_opaque_existential_1(&v61);
    }

    else
    {

      v71 = v22;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v71, &_sSay27PhoneCallFlowDelegatePlugin17ContactSourceTypeOGSgMd, &_sSay27PhoneCallFlowDelegatePlugin17ContactSourceTypeOGSgMR);

      v60[0] = v24;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v60, &_sSay12SiriOntology22UsoEntity_common_GroupCGSgMd, &_sSay12SiriOntology22UsoEntity_common_GroupCGSgMR);
      v61 = v23;
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v61, &_sSay12SiriOntology9UsoEntityCGSgMd, &_sSay12SiriOntology9UsoEntityCGSgMR);
    }
  }

  *a5 = a3;
  return a3;
}

void *specialized UsoContactConvertible.utteranceAlignment.getter()
{
  result = dispatch thunk of CodeGenBase.getUtteranceAlignmentsHelper(attributeName:)();
  if (!result)
  {
    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t specialized UsoContactConvertible.hasFullBusinessNameProperty.getter()
{
  v0 = type metadata accessor for UsoEntitySpan();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = specialized UsoContactConvertible.nameSpans.getter();
  v5 = 0;
  v6 = v4[2];
  v11 = v1 + 16;
  v7 = (v1 + 8);
  while (1)
  {
    v8 = v5;
    if (v6 == v5)
    {
LABEL_5:

      return v6 != v8;
    }

    if (v5 >= v4[2])
    {
      break;
    }

    (*(v1 + 16))(v3, v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v5, v0);
    v9 = closure #1 in UsoContactConvertible.hasFullBusinessNameProperty.getter(v3);
    ++v5;
    (*v7)(v3, v0);
    if (v9)
    {
      goto LABEL_5;
    }
  }

  __break(1u);

  result = (*v7)(v3, v0);
  __break(1u);
  return result;
}

unint64_t specialized closure #1 in UsoContactConvertible.isNameLikelyNonBusiness()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11)
{
  v13 = v11;
  v60 = a7;
  v61 = a2;
  v58 = a6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UtteranceSpanVSgMd, &_s12SiriOntology13UtteranceSpanVSgMR);
  __chkstk_darwin(v17);
  v19 = &v53[-v18];
  v20 = type metadata accessor for UtteranceAlignment();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v24 = &v53[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v59 = a1;
  if (__OFSUB__(a1, a5))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v24;
  v56 = v19;
  v57 = v17;
  v19 = v22;
  v62 = v11;
  result = String.index(_:offsetBy:limitedBy:)();
  a1 = v21;
  if (v26)
  {
LABEL_5:
    a4 = a10;
    v13 = a11;
    if (one-time initialization token for siriPhone == -1)
    {
LABEL_6:
      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, static Logger.siriPhone);
      v30 = v19;
      (*(a1 + 16))(v12, a4, v19);

      v31 = v60;

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v65 = v55;
        *v34 = 136315906;
        v63 = 0;
        v64 = 0xE000000000000000;

        v54 = v33;
        DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v58, v31, 0xD000000000000019, 0x800000000045CCA0);

        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, &v65);

        *(v34 + 4) = v35;
        *(v34 + 12) = 2080;
        v42 = specialized Range.description.getter(v59, v61, v36, v37, v38, v39, v40, v41);
        v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v65);

        *(v34 + 14) = v44;
        *(v34 + 22) = 2080;
        v45 = UtteranceAlignment.spans.getter();
        specialized Collection.first.getter(v45);

        v46 = String.init<A>(describing:)();
        v48 = v47;
        (*(a1 + 8))(v12, v30);
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v65);

        *(v34 + 24) = v49;
        *(v34 + 32) = 2080;
        v63 = v13;
        type metadata accessor for UsoEntity_common_Person();

        v50 = String.init<A>(describing:)();
        v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v65);

        *(v34 + 34) = v52;
        _os_log_impl(&dword_0, v32, v54, "%s- Unexpected: UtteranceAlignment range is greater than name - Current Range: %s -- Alignment Span: %s -- Self: %s", v34, 0x2Au);
        swift_arrayDestroy();
      }

      else
      {

        (*(a1 + 8))(v12, v30);
      }

      return 15;
    }

LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  if (__OFSUB__(v61, a5))
  {
    __break(1u);
  }

  else
  {
    v27 = result;
    result = String.index(_:offsetBy:limitedBy:)();
    if (v28)
    {
      goto LABEL_5;
    }

    if (result >> 14 >= v27 >> 14)
    {
      return v27;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSS27PhoneCallFlowDelegatePluginE10describingSS21InternalSwiftProtobuf7Message_p_tcfCTf4en_n12SiriNLUTypes0K27_Nlu_External_UserDialogActV_Tt0g5Tm(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v10[3] = a2(0);
  v10[4] = lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(a3, a4, a5);
  __swift_allocate_boxed_opaque_existential_1(v10);
  OUTLINED_FUNCTION_40();
  (*(v8 + 32))();
  type metadata accessor for SiriNLUTypesPrintUtils();
  static SiriNLUTypesPrintUtils.printableProtoObject(object:)();
  String.init<A>(_:)();
  __swift_destroy_boxed_opaque_existential_1(v10);
  return OUTLINED_FUNCTION_19_0();
}

unint64_t specialized closure #1 in UsoContactConvertible.isNameLikelyNonBusiness()@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, unint64_t *a9@<X8>, unint64_t a10, uint64_t *a11)
{
  result = specialized closure #1 in UsoContactConvertible.isNameLikelyNonBusiness()(*a1, a1[1], a2, a3, a4, a5, a6, a7, a8, a10, *a11);
  if (!v11)
  {
    *a9 = result;
    a9[1] = v14;
  }

  return result;
}

uint64_t specialized NLv4Transformer.init(referenceResolver:featureManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0C5Input33_9A2BD23864AF7C0BC1A75979566F7BA5LLVAD0dE8NLIntent_pSgGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0C5Input33_9A2BD23864AF7C0BC1A75979566F7BA5LLVAD0dE8NLIntent_pSgGMR);
  OUTLINED_FUNCTION_7();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = v18 - v13;
  v19[3] = a4;
  v19[4] = a5;
  __swift_allocate_boxed_opaque_existential_1(v19);
  OUTLINED_FUNCTION_40();
  (*(v15 + 32))();
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_1();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  outlined init with take of SPHConversation(v18, v16 + 24);
  type metadata accessor for TransformerInput(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  Transformer.init(transform:)();
  __swift_destroy_boxed_opaque_existential_1(v19);
  (*(v11 + 32))(a3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin15NLv4Transformer_transformer, v14, v9);
  return a3;
}

unint64_t lazy protocol witness table accessor for type UsoIdentifierNamespaceType and conformance UsoIdentifierNamespaceType()
{
  result = lazy protocol witness table cache variable for type UsoIdentifierNamespaceType and conformance UsoIdentifierNamespaceType;
  if (!lazy protocol witness table cache variable for type UsoIdentifierNamespaceType and conformance UsoIdentifierNamespaceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoIdentifierNamespaceType and conformance UsoIdentifierNamespaceType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UsoIdentifierAppBundleType and conformance UsoIdentifierAppBundleType()
{
  result = lazy protocol witness table cache variable for type UsoIdentifierAppBundleType and conformance UsoIdentifierAppBundleType;
  if (!lazy protocol witness table cache variable for type UsoIdentifierAppBundleType and conformance UsoIdentifierAppBundleType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoIdentifierAppBundleType and conformance UsoIdentifierAppBundleType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpecifyingContactAddress and conformance SpecifyingContactAddress()
{
  result = lazy protocol witness table cache variable for type SpecifyingContactAddress and conformance SpecifyingContactAddress;
  if (!lazy protocol witness table cache variable for type SpecifyingContactAddress and conformance SpecifyingContactAddress)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpecifyingContactAddress and conformance SpecifyingContactAddress);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EntitySpanPropertyKey and conformance EntitySpanPropertyKey()
{
  result = lazy protocol witness table cache variable for type EntitySpanPropertyKey and conformance EntitySpanPropertyKey;
  if (!lazy protocol witness table cache variable for type EntitySpanPropertyKey and conformance EntitySpanPropertyKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntitySpanPropertyKey and conformance EntitySpanPropertyKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EntitySpanLabel and conformance EntitySpanLabel()
{
  result = lazy protocol witness table cache variable for type EntitySpanLabel and conformance EntitySpanLabel;
  if (!lazy protocol witness table cache variable for type EntitySpanLabel and conformance EntitySpanLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntitySpanLabel and conformance EntitySpanLabel);
  }

  return result;
}

void type metadata completion function for NLv4Transformer(uint64_t a1)
{
  type metadata accessor for Transformer<TransformerInput, PhoneCallNLIntent?>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Transformer<TransformerInput, PhoneCallNLIntent?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Transformer<TransformerInput, PhoneCallNLIntent?>)
  {
    type metadata accessor for TransformerInput(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    v1 = type metadata accessor for Transformer();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Transformer<TransformerInput, PhoneCallNLIntent?>);
    }
  }
}

uint64_t getEnumTagSinglePayload for UserDialogActParse(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for UserDialogActParse(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UsoIdentifierNamespaceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for UsoIdentifierNamespaceType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UsoIdentifierAppBundleType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for EntitySpanPropertyKey(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntitySpanLabel(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void type metadata completion function for TransformerInput(uint64_t a1)
{
  type metadata accessor for Siri_Nlu_External_UserDialogAct();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PhoneCallNLIntent?(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for PhoneCallNLIntent?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for PhoneCallNLIntent?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for PhoneCallNLIntent?);
    }
  }
}

uint64_t outlined destroy of TransformerInput(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_23_1();
  (*(v3 + 8))(a1);
  return a1;
}

void type metadata accessor for Transformer<TransformerInput, PhoneCallNLIntent?><>.SrrOrdinalResolvedResult(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for Transformer<TransformerInput, PhoneCallNLIntent?><>.SrrOrdinalResolvedResult)
  {
    v4 = type metadata accessor for Transformer<>.SrrOrdinalResolvedResult(0, a2, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for Transformer<TransformerInput, PhoneCallNLIntent?><>.SrrOrdinalResolvedResult);
    }
  }
}

uint64_t lazy protocol witness table accessor for type UsoEntity_common_ReferenceType.DefinedValues and conformance UsoEntity_common_ReferenceType.DefinedValues(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata instantiation function for Transformer<>.SrrOrdinalResolvedResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_27PhoneCallFlowDelegatePlugin0aB3App_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for Transformer<>.SrrOrdinalResolvedResult(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for Transformer<>.SrrOrdinalResolvedResult(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TargetContacts(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for TargetContacts(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_26_16()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_29_20(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return Transformer.transform.getter();
}

unint64_t OUTLINED_FUNCTION_36_15()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 112);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, (v0 - 160));
}

double OUTLINED_FUNCTION_45_11(uint64_t a1)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

void OUTLINED_FUNCTION_47_14()
{

  DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v1, v2, 0xD000000000000041, v0 | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_60_8()
{

  return specialized NLv4Transformer.init(referenceResolver:featureManager:)(v4, v0, v1, v2, v3);
}

void OUTLINED_FUNCTION_70_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_73_4(uint64_t a1)
{
  *(v1 + 72) = a1;
  *(v3 - 224) = v2;
}

uint64_t OUTLINED_FUNCTION_78_6(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return outlined init with copy of ButtonConfigurationModel?(v4 + 200, v5 - 224, a3, a4);
}

uint64_t NLv4UpdateTransformer.transform(updateTask:)@<X0>(uint64_t *x8_0@<X8>)
{
  return NLv4UpdateTransformer.transform(updateTask:)(&dispatch thunk of UsoEntity_common_PhoneCall.participants.getter, &dispatch thunk of UsoEntity_common_PhoneCall.recipients.getter, x8_0);
}

{
  return NLv4UpdateTransformer.transform(updateTask:)(&dispatch thunk of UsoEntity_common_Communication.participants.getter, &dispatch thunk of UsoEntity_common_Communication.recipients.getter, x8_0);
}

uint64_t NLv4UpdateTransformer.transform(updateTask:)@<X0>(uint64_t (*a2)(void *)@<X1>, uint64_t (*a3)(void *)@<X2>, uint64_t *x8_0@<X8>)
{
  v7 = dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
  if (!v11 || (v8 = a2(v7), , !v8))
  {
    v9 = dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
    if (v11 && (v8 = a3(v9), , v8))
    {
    }

    else
    {
      swift_bridgeObjectRelease_n();
      v8 = _swiftEmptyArrayStorage;
    }
  }

  NLv4UpdateTransformer.transform(agents:)(v8, x8_0);
}

double NLv4UpdateTransformer.transform(agents:)@<D0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v128 = a2;
  v138 = type metadata accessor for ContactQuery();
  v134 = *(v138 - 8);
  __chkstk_darwin(v138);
  v129 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v127 = &v124 - v6;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMR);
  v137 = *(v139 - 1);
  __chkstk_darwin(v139);
  v8 = &v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v124 - v10;
  __chkstk_darwin(v12);
  v14 = &v124 - v13;
  __chkstk_darwin(v15);
  v17 = &v124 - v16;
  __chkstk_darwin(v18);
  v20 = (&v124 - v19);
  __chkstk_darwin(v21);
  v23 = (&v124 - v22);
  v24 = NLv4UpdateTransformer.sortParticipants(agents:)(a1);
  v26 = v25;
  if (specialized Array.count.getter(v25))
  {
    v27 = v128;
    v8 = _swiftEmptyArrayStorage;

    if (one-time initialization token for siriPhone != -1)
    {
LABEL_83:
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.siriPhone);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v29, v30, "#NLv4UpdateTransformer Found participants to remove", v31, 2u);
    }

    *(v27 + 24) = &type metadata for PhoneCallNLv4Intent;
    *(v27 + 32) = &protocol witness table for PhoneCallNLv4Intent;
    v32 = swift_allocObject();
    *v27 = v32;
    *(v32 + 32) = 0u;
    *(v32 + 48) = 0u;
    *(v32 + 64) = 0;
    *(v32 + 16) = v8;
    v33 = 16;
    v34 = v8;
    v35 = v8;
  }

  else
  {
    v130 = v2;
    v131 = v26;
    v132 = v8;
    v133 = v20;
    v125 = v14;
    v135 = v11;
    v141 = _swiftEmptyArrayStorage;
    v36 = specialized Array.count.getter(v24);
    v37 = 0;
    v27 = v24 & 0xC000000000000001;
    v126 = _swiftEmptyArrayStorage;
    while (v36 != v37)
    {
      if (v27)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v37 >= *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_78;
        }
      }

      v38 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v8 = UsoEntity_common_Agent.asCommonGroup()();

      ++v37;
      if (v8)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v141 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v141 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v126 = v141;
        v37 = v38;
      }
    }

    v39 = specialized Array.count.getter(v24);
    v40 = 0;
    v136 = _swiftEmptyArrayStorage;
    while (v39 != v40)
    {
      if (v27)
      {
        v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v40 >= *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_80;
        }

        v41 = *(v24 + 8 * v40 + 32);
      }

      v42 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        goto LABEL_79;
      }

      v43 = UsoEntity_common_Agent.asCommonPerson()();
      if (v43)
      {
        v8 = v43;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v136 = v48;
        }

        v44 = v136[2];
        v45 = v44 + 1;
        if (v44 >= v136[3] >> 1)
        {
          v124 = v44 + 1;
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v45 = v124;
          v136 = v49;
        }

        v46 = v136;
        v136[2] = v45;
        v47 = &v46[2 * v44];
        v47[4] = v41;
        v47[5] = v8;
        v40 = v42;
      }

      else
      {

        ++v40;
      }
    }

    v27 = v136;
    v50 = v136[2];
    if (v50)
    {
      v141 = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50, 0);
      v51 = 0;
      v52 = v141;
      v53 = (v27 + 40);
      while (v51 < *(v27 + 16))
      {
        v55 = *(v53 - 1);
        v54 = *v53;
        v56 = *(v139 + 12);

        v57 = NLv4UpdateTransformer.mapEntityToContactAndQuery(referenceResolver:agent:person:)(v23 + v56, v130, v55, v54);

        *v23 = v57;
        v141 = v52;
        v59 = v52[2];
        v58 = v52[3];
        v8 = (v59 + 1);
        if (v59 >= v58 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1);
          v52 = v141;
        }

        ++v51;
        v52[2] = v8;
        outlined init with take of (contact: SiriPhoneContactImpl, query: ContactQuery)(v23, v52 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * v59);
        v53 += 2;
        v27 = v136;
        if (v50 == v51)
        {

          goto LABEL_39;
        }
      }

      goto LABEL_82;
    }

    v52 = _swiftEmptyArrayStorage;
LABEL_39:
    v27 = 0;
    v136 = (v134 + 8);
    v8 = v52[2];
    v131 = _swiftEmptyArrayStorage;
    v60 = v139;
LABEL_40:
    v61 = v137;
    v62 = v133;
    while (v8 != v27)
    {
      if (v27 >= v52[2])
      {
        goto LABEL_81;
      }

      v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v64 = *(v61 + 72);
      outlined init with copy of (contact: SiriPhoneContactImpl, query: ContactQuery)(v52 + v63 + v64 * v27, v62);
      outlined init with copy of (contact: SiriPhoneContactImpl, query: ContactQuery)(v62, v17);

      v65 = *(v60 + 12);
      if (one-time initialization token for emptyQuery != -1)
      {
        swift_once();
      }

      v66 = v138;
      __swift_project_value_buffer(v138, static ContactQuery.emptyQuery);
      if (static ContactQuery.== infix(_:_:)())
      {
        (*v136)(&v17[v65], v66);
      }

      else
      {
        if (one-time initialization token for emptyNLv4Query != -1)
        {
          swift_once();
        }

        v67 = v138;
        __swift_project_value_buffer(v138, static ContactQuery.emptyNLv4Query);
        v68 = static ContactQuery.== infix(_:_:)();
        (*v136)(&v17[v65], v67);
        v60 = v139;
        if ((v68 & 1) == 0)
        {
          outlined init with take of (contact: SiriPhoneContactImpl, query: ContactQuery)(v133, v125);
          v69 = v131;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v141 = v69;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v69 + 16) + 1, 1);
            v69 = v141;
          }

          v72 = *(v69 + 16);
          v71 = *(v69 + 24);
          v73 = (v72 + 1);
          v74 = v125;
          if (v72 >= v71 >> 1)
          {
            v131 = (v72 + 1);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1);
            v73 = v131;
            v74 = v125;
            v69 = v141;
          }

          ++v27;
          *(v69 + 16) = v73;
          v131 = v69;
          outlined init with take of (contact: SiriPhoneContactImpl, query: ContactQuery)(v74, v69 + v63 + v72 * v64);
          goto LABEL_40;
        }
      }

      v62 = v133;
      outlined destroy of PhoneCallNLIntent?(v133, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMR);
      ++v27;
      v61 = v137;
    }

    v75 = v131[2];
    if (v75)
    {
      v141 = _swiftEmptyArrayStorage;
      v76 = v131;
      specialized ContiguousArray.reserveCapacity(_:)();
      v77 = v76 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
      v78 = *(v61 + 72);
      v79 = v77;
      v133 = v75;
      v80 = v75;
      v81 = v138;
      v82 = v132;
      v83 = v136;
      do
      {
        v84 = v135;
        outlined init with copy of (contact: SiriPhoneContactImpl, query: ContactQuery)(v79, v135);
        outlined init with take of (contact: SiriPhoneContactImpl, query: ContactQuery)(v84, v82);
        (*v83)(v82 + *(v139 + 12), v81);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v85 = v78;
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v79 += v78;
        v80 = (v80 - 1);
      }

      while (v80);
      v137 = v141;
      v141 = _swiftEmptyArrayStorage;
      v86 = v133;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v133, 0);
      v87 = v141;
      v88 = (v134 + 32);
      v89 = v127;
      do
      {
        v90 = v135;
        outlined init with copy of (contact: SiriPhoneContactImpl, query: ContactQuery)(v77, v135);
        v91 = v90;
        v92 = v132;
        outlined init with take of (contact: SiriPhoneContactImpl, query: ContactQuery)(v91, v132);

        v93 = *v88;
        (*v88)(v89, v92 + *(v139 + 12), v81);
        v141 = v87;
        v94 = v81;
        v96 = *(v87 + 16);
        v95 = *(v87 + 24);
        if (v96 >= v95 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v95 > 1, v96 + 1, 1);
          v89 = v127;
          v87 = v141;
        }

        *(v87 + 16) = v96 + 1;
        v93((v87 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v96), v89, v94);
        v77 += v85;
        v86 = (v86 - 1);
        v81 = v94;
      }

      while (v86);
      v139 = v87;

      v97 = v137;
    }

    else
    {

      v97 = _swiftEmptyArrayStorage;
      v139 = _swiftEmptyArrayStorage;
    }

    v98 = v128;
    v8 = _swiftEmptyArrayStorage;
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v99 = type metadata accessor for Logger();
    __swift_project_value_buffer(v99, static Logger.siriPhone);
    v100 = v139;

    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v141 = v133;
      v135 = v103;
      *v103 = 136315138;
      v104 = v100[2];
      if (v104)
      {
        LODWORD(v131) = v102;
        v132 = v101;
        v137 = v97;
        v140 = _swiftEmptyArrayStorage;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v105 = v140;
        v106 = v100 + ((*(v134 + 80) + 32) & ~*(v134 + 80));
        v107 = *(v134 + 16);
        v134 += 16;
        v108 = *(v134 + 56);
        do
        {
          v109 = v129;
          v110 = v138;
          v107(v129, v106, v138);
          v111 = ContactQuery.description.getter();
          v113 = v112;
          (*v136)(v109, v110);
          v140 = v105;
          v114 = v105[2];
          if (v114 >= v105[3] >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v105 = v140;
          }

          v105[2] = v114 + 1;
          v115 = &v105[2 * v114];
          v115[4] = v111;
          v115[5] = v113;
          v106 += v108;
          --v104;
        }

        while (v104);
        v98 = v128;
        v8 = _swiftEmptyArrayStorage;
        v101 = v132;
        LOBYTE(v102) = v131;
      }

      v116 = Array.description.getter();
      v118 = v117;

      v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v118, &v141);

      v120 = v135;
      *(v135 + 1) = v119;
      _os_log_impl(&dword_0, v101, v102, "#NLv4UpdateTransformer contactQueries: %s", v120, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v133);
    }

    specialized _arrayForceCast<A, B>(_:)();
    v34 = v121;

    v98[3] = &type metadata for PhoneCallNLv4Intent;
    v98[4] = &protocol witness table for PhoneCallNLv4Intent;
    v32 = swift_allocObject();
    *v98 = v32;
    *(v32 + 32) = 0u;
    *(v32 + 48) = 0u;
    *(v32 + 64) = 0;
    specialized _arrayForceCast<A, B>(_:)();
    v35 = v122;

    *(v32 + 16) = v139;
    v33 = 15;
  }

  *(v32 + 24) = v34;
  *(v32 + 72) = 2;
  *(v32 + 80) = 0;
  *&result = 84214276;
  *(v32 + 88) = 84214276;
  *(v32 + 92) = 777;
  *(v32 + 94) = 35;
  *(v32 + 95) = v33;
  *(v32 + 96) = 518;
  *(v32 + 104) = v35;
  *(v32 + 112) = v8;
  return result;
}

void *NLv4UpdateTransformer.sortParticipants(agents:)(unint64_t a1)
{
  v2 = type metadata accessor for ListOperators();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v32 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v40 = _swiftEmptyArrayStorage;
  v41 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_45:
    v29 = _swiftEmptyArrayStorage;
    return _swiftEmptyArrayStorage;
  }

  result = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_45;
  }

LABEL_3:
  if (result >= 1)
  {
    v9 = 0;
    v34 = a1 & 0xC000000000000001;
    v33 = enum case for ListOperators.addToSet(_:);
    v37 = (v3 + 8);
    v38 = (v3 + 104);
    v31 = enum case for ListOperators.removeFromSet(_:);
    v29 = _swiftEmptyArrayStorage;
    v30 = _swiftEmptyArrayStorage;
    v35 = result;
    v36 = a1;
    while (1)
    {
      if (v34)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      if (dispatch thunk of CodeGenListEntry.entryAsExpression.getter())
      {
        v10 = dispatch thunk of CodeGenExpression.operatorAsString.getter();
        v12 = v11;
      }

      else
      {
        v10 = 0;
        v12 = 0;
      }

      v13 = *v38;
      (*v38)(v7, v33, v2);
      v14 = ListOperators.rawValue.getter();
      v16 = v15;
      v17 = *v37;
      (*v37)(v7, v2);
      if (v12)
      {
        if (v14 == v10 && v12 == v16)
        {

LABEL_27:

          v27 = dispatch thunk of CodeGenListEntry.entryAsExpression.getter();
          v25 = v35;
          if (!v27)
          {
            goto LABEL_41;
          }

          dispatch thunk of CodeGenExpression.operand.getter();

          if (!v39)
          {
            goto LABEL_41;
          }

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v41 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            goto LABEL_34;
          }

          goto LABEL_30;
        }

        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v19)
        {
          goto LABEL_27;
        }
      }

      else
      {
      }

      v20 = v32;
      v13(v32, v31, v2);
      v21 = ListOperators.rawValue.getter();
      v23 = v22;
      v17(v20, v2);
      if (v12)
      {
        v24 = v21 == v10 && v12 == v23;
        v25 = v35;
        if (v24)
        {

LABEL_36:
          if (dispatch thunk of CodeGenListEntry.entryAsExpression.getter())
          {
            dispatch thunk of CodeGenExpression.operand.getter();

            if (v39)
            {

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v40 & 0xFFFFFFFFFFFFFF8)) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v29 = v40;
              goto LABEL_42;
            }
          }

LABEL_41:

          goto LABEL_42;
        }

        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v26)
        {
          goto LABEL_36;
        }
      }

      else
      {

        v25 = v35;
      }

      dispatch thunk of CodeGenListEntry.entry.getter();
      if (!v39)
      {
        goto LABEL_41;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v41 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
LABEL_34:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

LABEL_30:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v30 = v41;
LABEL_42:
      if (v25 == ++v9)
      {
        return v30;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t NLv4UpdateTransformer.mapEntityToContactAndQuery(referenceResolver:agent:person:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytSgMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = (&v26 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMR);
  __chkstk_darwin(v9);
  v28 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v27 = &v26 - v12;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  CodeGenBase.entity.getter();
  v13 = dispatch thunk of RRReferenceResolverProtocol.hasReference(usoEntity:)();

  if ((v13 & 1) == 0)
  {
    goto LABEL_4;
  }

  NLv4UpdateTransformer.runSRR(agent:person:)(v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    outlined destroy of PhoneCallNLIntent?(v8, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytSgMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytSgMR);
LABEL_4:

    v15 = _s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC18contactConvertible0I4RoleAcA03UsogJ0_p_AA0abgK0OtcfCTf4enn_n0F8Ontology0L19Entity_common_AgentC_Tt1g5(v14, 1);
    UsoEntity_common_Person.toContactQuery()();
    return v15;
  }

  v16 = v9;
  v17 = v27;
  outlined init with take of (contact: SiriPhoneContactImpl, query: ContactQuery)(v8, v27);
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.siriPhone);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "#NLv4UpdateTransformer Found reference to entity in context", v21, 2u);
  }

  v22 = v28;
  outlined init with take of (contact: SiriPhoneContactImpl, query: ContactQuery)(v17, v28);
  v15 = *v22;
  v23 = *(v16 + 48);
  v24 = type metadata accessor for ContactQuery();
  (*(*(v24 - 8) + 32))(a1, v22 + v23, v24);
  return v15;
}

uint64_t NLv4UpdateTransformer.runSRR(agent:person:)@<X0>(uint64_t *a1@<X8>)
{
  v52 = a1;
  v1 = type metadata accessor for ContactQuery();
  v49 = *(v1 - 8);
  v50 = v1;
  __chkstk_darwin(v1);
  v48 = (&v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for PhoneRRTarget.Target(0);
  __chkstk_darwin(v3);
  v5 = (&v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for MatchedResultsSetting();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A8RRTargetVSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetVSgMR);
  __chkstk_darwin(v10 - 8);
  v12 = &v48 - v11;
  v13 = type metadata accessor for PhoneRRTarget(0);
  __chkstk_darwin(v13);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = CodeGenBase.entity.getter();
  (*(v7 + 104))(v9, enum case for MatchedResultsSetting.defaultMatching(_:), v6);
  static PhoneReferenceResolution.resolveEntity(_:referenceResolver:matchedResultsSetting:)(v16, v51, v9, v12);

  (*(v7 + 8))(v9, v6);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
  {
    v19 = v52;
    outlined init with take of PhoneRRTarget(v12, v15);

    v21 = _s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC18contactConvertible0I4RoleAcA03UsogJ0_p_AA0abgK0OtcfCTf4enn_n0F8Ontology0L19Entity_common_AgentC_Tt1g5(v20, 1);
    v55 = v21;
    outlined init with copy of PhoneRRTarget.Target(v15, v5);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v35 = dispatch thunk of UsoEntity_common_Group.members.getter();
        v33 = v19;
        if (v35)
        {
          v36 = specialized Array.count.getter(v35);

          if (v36 == 1)
          {
            v37 = dispatch thunk of UsoEntity_common_Group.members.getter();
            v38 = v37;
            if (v37)
            {
              if (specialized Array.count.getter(v37))
              {
                specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v38 & 0xC000000000000001) == 0, v38);
                if ((v38 & 0xC000000000000001) != 0)
                {
                  specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                }

                dispatch thunk of CodeGenListEntry.entry.getter();

                if (v53)
                {
                  CodeGenBase.entity.getter();
                }
              }

              else
              {
              }
            }

            type metadata accessor for UsoEntity_common_Person();
            static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

            if (v54)
            {
              if (one-time initialization token for siriPhone != -1)
              {
                swift_once();
              }

              v39 = type metadata accessor for Logger();
              __swift_project_value_buffer(v39, static Logger.siriPhone);
              v40 = Logger.logObject.getter();
              v41 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v40, v41))
              {
                v42 = swift_slowAlloc();
                *v42 = 0;
                _os_log_impl(&dword_0, v40, v41, "#NLv4UpdateTransformer SRR found common_Group with 1 common_Person", v42, 2u);
              }

              v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMR);
              *v19 = v21;

              UsoEntity_common_Person.toContactQuery()();

              outlined destroy of PhoneRRTarget.Target(v15, type metadata accessor for PhoneRRTarget);
              v18 = v19;
              goto LABEL_6;
            }
          }
        }

        if (one-time initialization token for siriPhone != -1)
        {
          swift_once();
        }

        v43 = type metadata accessor for Logger();
        __swift_project_value_buffer(v43, static Logger.siriPhone);
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&dword_0, v44, v45, "#NLv4UpdateTransformer SRR found common_Group with >1 member in context but this is not supported", v46, 2u);
        }

        goto LABEL_32;
      case 2u:
        outlined destroy of PhoneRRTarget.Target(v15, type metadata accessor for PhoneRRTarget);
        v25 = v48;
        v26 = *(v49 + 32);
        v27 = v50;
        v26(v48, v5, v50);
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMR);
        v29 = *(v28 + 48);
        *v19 = v21;
        v26(v19 + v29, v25, v27);
        v18 = v19;
LABEL_6:
        v24 = 0;
        v17 = v28;
        return __swift_storeEnumTagSinglePayload(v18, v24, 1, v17);
      case 3u:
        outlined destroy of PhoneRRTarget.Target(v5, type metadata accessor for PhoneRRTarget.Target);
        if (one-time initialization token for siriPhone != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        __swift_project_value_buffer(v30, static Logger.siriPhone);
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.info.getter();
        v33 = v19;
        if (os_log_type_enabled(v31, v32))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&dword_0, v31, v32, "##NLv4UpdateTransformer SRR can't resolve apps", v34, 2u);
        }

LABEL_32:
        outlined destroy of PhoneRRTarget.Target(v15, type metadata accessor for PhoneRRTarget);
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMR);
        v18 = v33;
        goto LABEL_33;
      default:
        v22 = *v5;
        specialized SiriPhoneContact.update(person:)();
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMR);
        *v19 = v21;

        INPerson.toContactQuery()();

        outlined destroy of PhoneRRTarget.Target(v15, type metadata accessor for PhoneRRTarget);
        v18 = v19;
        v24 = 0;
        v17 = v23;
        return __swift_storeEnumTagSinglePayload(v18, v24, 1, v17);
    }
  }

  outlined destroy of PhoneCallNLIntent?(v12, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetVSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetVSgMR);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMR);
  v18 = v52;
LABEL_33:
  v24 = 1;
  return __swift_storeEnumTagSinglePayload(v18, v24, 1, v17);
}

uint64_t outlined init with take of (contact: SiriPhoneContactImpl, query: ContactQuery)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of (contact: SiriPhoneContactImpl, query: ContactQuery)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMd, &_s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC7contact_0F9Inference0G5QueryV5querytMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NSObject.update(with:at:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_424FD0;
  *(inited + 32) = a2;
  *(inited + 40) = a3;

  NSObject.update(with:at:)(a1, inited);
  swift_setDeallocating();
  return specialized _ContiguousArrayStorage.__deallocating_deinit();
}

void NSObject.update(with:at:)(void *result, uint64_t a2)
{
  v12 = *(a2 + 16);
  if (v12)
  {
    lazy protocol witness table accessor for type String and conformance String();
    v2 = 0;
    while (1)
    {

      v3 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

      v4 = *(v3 + 16);
      if (v4)
      {
        break;
      }

LABEL_11:
      ++v2;
      NSObject.update(with:at:)(result, _swiftEmptyArrayStorage, &_swiftEmptyArrayStorage[4], 0, (2 * _swiftEmptyArrayStorage[2]) | 1);

      if (v2 == v12)
      {
        return;
      }
    }

    v14 = v2;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v5 = 0;
    v6 = v3 + 56;
    while (v5 < *(v3 + 16))
    {

      v7 = static String._fromSubstring(_:)();
      v9 = v8;

      v10 = _swiftEmptyArrayStorage[2];
      if (v10 >= _swiftEmptyArrayStorage[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v5;
      _swiftEmptyArrayStorage[2] = v10 + 1;
      v11 = &_swiftEmptyArrayStorage[2 * v10];
      v11[4] = v7;
      v11[5] = v9;
      v6 += 32;
      if (v4 == v5)
      {

        v2 = v14;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void NSObject.update(with:at:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = a5 >> 1;
  if (a5 >> 1 == a4)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.siriPhone);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(oslog, v8))
    {
      goto LABEL_19;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "No keyPath specified, not updating object";
    goto LABEL_18;
  }

  if ((a5 >> 1) <= a4)
  {
    __break(1u);
LABEL_31:
    swift_once();
LABEL_16:
    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.siriPhone);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "keyPath invalid for object";
LABEL_18:
      _os_log_impl(&dword_0, oslog, v8, v10, v9, 2u);
    }

LABEL_19:

    return;
  }

  v12 = (a3 + 16 * a4);
  v14 = *v12;
  v13 = v12[1];
  v15 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v15 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
LABEL_15:
    if (one-time initialization token for siriPhone == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

  v16 = v5;
  swift_bridgeObjectRetain_n();
  if (![v5 respondsToSelector:Selector.init(_:)()])
  {

    goto LABEL_15;
  }

  if (__OFSUB__(v6, a4))
  {
    __break(1u);
    return;
  }

  if (v6 - a4 == 1)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v18 = _bridgeAnythingToObjectiveC<A>(_:)();
    oslog = String._bridgeToObjectiveC()();

    [v16 setValue:v18 forKey:oslog];
    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  osloga = String._bridgeToObjectiveC()();
  v20 = [v5 valueForKey:osloga];

  if (v20)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  v32[0] = v30;
  v32[1] = v31;
  if (*(&v31 + 1))
  {
    type metadata accessor for NSObject();
    if (swift_dynamicCast())
    {
      v21 = specialized ArraySlice.subscript.getter();
      NSObject.update(with:at:)(a1, v21, v22, v23, v24);
      v25 = v29;
      v26 = String._bridgeToObjectiveC()();

      [v16 setValue:v25 forKey:v26];
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {

    outlined destroy of Any?(v32);
  }
}

unint64_t specialized Array.subscript.getter(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

unint64_t specialized OneTimeHintGenerator<>.chooseHintIdentifier(history:)(uint64_t a1)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  v4 = OUTLINED_FUNCTION_2_68();
  v5(v4);
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  v6 = dispatch thunk of DeviceState.isHomePod.getter();
  __swift_destroy_boxed_opaque_existential_1(v14);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  v7 = OUTLINED_FUNCTION_2_68();
  v8(v7);
  OUTLINED_FUNCTION_86(v14);
  v9 = DeviceState.idiom.getter();
  v10 = specialized Dictionary.subscript.getter(v9, a1);
  v12 = v11;
  __swift_destroy_boxed_opaque_existential_1(v14);
  if ((v12 & 1) == 0)
  {
    if (v10)
    {
      return 0;
    }
  }

  result = 0xD000000000000011;
  switch(*v2)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD00000000000001ELL;
      break;
    case 3:
      result = 0xD00000000000002DLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t OneTimeHintGenerator<>.chooseHintIdentifier(history:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (((*(*(a3 + 8) + 48))(a2, *(a3 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_72();
  v5(v4);
  v6 = v18;
  v7 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  (*(v7 + 8))(v16, v6, v7);
  OUTLINED_FUNCTION_86(v16);
  v8 = DeviceState.idiom.getter();
  v9 = specialized Dictionary.subscript.getter(v8, a1);
  v11 = v10;
  __swift_destroy_boxed_opaque_existential_1(v16);
  __swift_destroy_boxed_opaque_existential_1(v17);
  if ((v11 & 1) == 0)
  {
    if (v9)
    {
      return 0;
    }
  }

  v13 = OUTLINED_FUNCTION_72();
  v15 = v14(v13);
  result = 0xD000000000000011;
  switch(v15)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD00000000000001ELL;
      break;
    case 3:
      result = 0xD00000000000002DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for SiriPhoneHintGenerator.makeUpdatedHintHistory(dialogIdentifier:previousHistory:) in conformance HangUpTipGenerator@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = specialized OneTimeHintGenerator<>.makeUpdatedHintHistory(dialogIdentifier:previousHistory:)(a1, a2, *a3);
  *a4 = result;
  return result;
}

uint64_t specialized OneTimeHintGenerator<>.makeUpdatedHintHistory(dialogIdentifier:previousHistory:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  v6 = *(v5 + 8);

  v7 = OUTLINED_FUNCTION_72();
  v6(v7);
  OUTLINED_FUNCTION_86(v14);
  v8 = DeviceState.idiom.getter();
  result = specialized Dictionary.subscript.getter(v8, a3);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = result;
  }

  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_86(v14);
    DeviceState.idiom.getter();
    swift_isUniquelyReferenced_nonNull_native();
    v12 = OUTLINED_FUNCTION_72();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v14);
    return a3;
  }

  return result;
}

uint64_t OneTimeHintGenerator<>.makeUpdatedHintHistory(dialogIdentifier:previousHistory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(*(a5 + 8) + 40);

  v7 = OUTLINED_FUNCTION_72();
  v6(v7);
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v8 = OUTLINED_FUNCTION_72();
  v9(v8);
  OUTLINED_FUNCTION_86(v16);
  v10 = DeviceState.idiom.getter();
  result = specialized Dictionary.subscript.getter(v10, a3);
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = result;
  }

  if (__OFADD__(v13, 1))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_86(v16);
    DeviceState.idiom.getter();
    swift_isUniquelyReferenced_nonNull_native();
    v14 = OUTLINED_FUNCTION_72();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v16);
    __swift_destroy_boxed_opaque_existential_1(v17);
    return a3;
  }

  return result;
}

uint64_t IdiomKeyedHintHistory<>.hintCount(deviceState:)(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = DeviceState.idiom.getter();
  result = specialized Dictionary.subscript.getter(v3, a2);
  if (v5)
  {
    return 0;
  }

  return result;
}

void IdiomKeyedHintHistory<>.incrementHintCount(deviceState:)(void *a1)
{
  v3 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = OUTLINED_FUNCTION_1_72();
  v5 = specialized Dictionary.subscript.getter(v4, v3);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v9 = OUTLINED_FUNCTION_1_72();
    swift_isUniquelyReferenced_nonNull_native();
    v10 = *v1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, v9);
    *v1 = v10;
  }
}

unint64_t OneTimeHintHistory.description.getter()
{
  _StringGuts.grow(_:)(21);

  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 32010;
  v1._object = 0xE200000000000000;
  String.append(_:)(v1);
  return 0xD000000000000011;
}

uint64_t OneTimeHintHistory.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E756F43746E6968 && a2 == 0xE900000000000074)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance OneTimeHintHistory.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = OneTimeHintHistory.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OneTimeHintHistory.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OneTimeHintHistory.CodingKeys and conformance OneTimeHintHistory.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OneTimeHintHistory.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OneTimeHintHistory.CodingKeys and conformance OneTimeHintHistory.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t OneTimeHintHistory.encode(to:)(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin18OneTimeHintHistoryV10CodingKeys33_7973926CAC2B7F1745797AE3CF120E45LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin18OneTimeHintHistoryV10CodingKeys33_7973926CAC2B7F1745797AE3CF120E45LLOGMR);
  OUTLINED_FUNCTION_7();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type OneTimeHintHistory.CodingKeys and conformance OneTimeHintHistory.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v5 + 8))(v8, v3);
}

void *OneTimeHintHistory.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin18OneTimeHintHistoryV10CodingKeys33_7973926CAC2B7F1745797AE3CF120E45LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin18OneTimeHintHistoryV10CodingKeys33_7973926CAC2B7F1745797AE3CF120E45LLOGMR);
  OUTLINED_FUNCTION_7();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type OneTimeHintHistory.CodingKeys and conformance OneTimeHintHistory.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void *protocol witness for Decodable.init(from:) in conformance OneTimeHintHistory@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = OneTimeHintHistory.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OneTimeHintHistory.CodingKeys and conformance OneTimeHintHistory.CodingKeys()
{
  result = lazy protocol witness table cache variable for type OneTimeHintHistory.CodingKeys and conformance OneTimeHintHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type OneTimeHintHistory.CodingKeys and conformance OneTimeHintHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneTimeHintHistory.CodingKeys and conformance OneTimeHintHistory.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneTimeHintHistory.CodingKeys and conformance OneTimeHintHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type OneTimeHintHistory.CodingKeys and conformance OneTimeHintHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneTimeHintHistory.CodingKeys and conformance OneTimeHintHistory.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneTimeHintHistory.CodingKeys and conformance OneTimeHintHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type OneTimeHintHistory.CodingKeys and conformance OneTimeHintHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneTimeHintHistory.CodingKeys and conformance OneTimeHintHistory.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneTimeHintHistory.CodingKeys and conformance OneTimeHintHistory.CodingKeys;
  if (!lazy protocol witness table cache variable for type OneTimeHintHistory.CodingKeys and conformance OneTimeHintHistory.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneTimeHintHistory.CodingKeys and conformance OneTimeHintHistory.CodingKeys);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for OneTimeHintHistory(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type OneTimeHintHistory and conformance OneTimeHintHistory();
  a1[2] = lazy protocol witness table accessor for type OneTimeHintHistory and conformance OneTimeHintHistory();
  result = lazy protocol witness table accessor for type OneTimeHintHistory and conformance OneTimeHintHistory();
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for OneTimeHintHistory(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type OneTimeHintHistory and conformance OneTimeHintHistory();
  result = lazy protocol witness table accessor for type OneTimeHintHistory and conformance OneTimeHintHistory();
  *(a1 + 16) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for OneTimeHintHistory.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

PhoneCallFlowDelegatePlugin::OngoingCallCATs::Properties_optional __swiftcall OngoingCallCATs.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of OngoingCallCATs.Properties.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t OngoingCallCATs.Properties.rawValue.getter(char a1)
{
  result = 0xD00000000000001BLL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000002CLL;
      break;
    case 2:
      result = 0xD00000000000002ALL;
      break;
    case 3:
      result = 0xD000000000000024;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::OngoingCallCATs::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance OngoingCallCATs.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::OngoingCallCATs::Properties_optional *a2@<X8>)
{
  result.value = OngoingCallCATs.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance OngoingCallCATs.Properties@<X0>(unint64_t *a1@<X8>)
{
  result = OngoingCallCATs.Properties.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t OngoingCallCATs.addOrCallPrompt()()
{
  OUTLINED_FUNCTION_27();
  v2 = v1;
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v7 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v4;
  *v4 = v5;
  v4[1] = closure #2 in ActionableCallControlFlow.execute();

  return v7(v2, 0xD00000000000001BLL, 0x80000000004529E0, _swiftEmptyArrayStorage);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = AddCallParticipantCATs.errorNoTargetCall();

  return v4(0xD00000000000001BLL, 0x80000000004529E0, _swiftEmptyArrayStorage);
}

{
  return OUTLINED_FUNCTION_33_1(27);
}

uint64_t OngoingCallCATs.confirmHangUpForForeignEmergency(currentCall:completion:)()
{
  OUTLINED_FUNCTION_23_4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1(v1);
  OUTLINED_FUNCTION_0_12(v2, xmmword_424FD0);
  if (v0)
  {
    v3 = type metadata accessor for PhoneCallRecord(0);
    v4 = v0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_18_2();
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v2[3].n128_u64[0] = v4;
  v2[4].n128_u64[1] = v3;

  OUTLINED_FUNCTION_29(44);
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t OngoingCallCATs.confirmHangUpForForeignEmergency(currentCall:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t OngoingCallCATs.confirmHangUpForForeignEmergency(currentCall:)()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v0[5] = v3;
  OUTLINED_FUNCTION_0_12(v3, xmmword_424FD0);
  v4 = 0;
  if (v1)
  {
    v4 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_31_1(v4);
  OUTLINED_FUNCTION_8_3();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[6] = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_19_10(v5);

  return v9(v7, 0xD00000000000002CLL);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(AddCallParticipantCATs.errorMaxParticipantsReached(currentCall:), 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_11();

    return v7();
  }
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[2];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v0[4] = v3;
  OUTLINED_FUNCTION_0_12(v3, xmmword_424FD0);
  v4 = 0;
  if (v1)
  {
    v4 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_31_1(v4);
  OUTLINED_FUNCTION_8_3();
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_30(v5);
  v6 = OUTLINED_FUNCTION_29(44);

  return v8(v6);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_5();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_5_2();

    return v11(v10);
  }
}

uint64_t OngoingCallCATs.confirmHangUpForForeignEmergency(currentCall:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t OngoingCallCATs.confirmHangUpForForeignEmergency(currentCall:)(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  OUTLINED_FUNCTION_0_12(v3, xmmword_424FD0);
  if (a1)
  {
    v4 = type metadata accessor for PhoneCallRecord(0);
    v5 = a1;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_18_2();
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v3[3].n128_u64[0] = v5;
  v3[4].n128_u64[1] = v4;

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t OngoingCallCATs.confirmHangUpForLocalEmergency()()
{
  OUTLINED_FUNCTION_27();
  v2 = v1;
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v7 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v4;
  *v4 = v5;
  v4[1] = closure #1 in ActionableCallControlFlow.execute();

  return v7(v2, 0xD00000000000002ALL, 0x8000000000452A30, _swiftEmptyArrayStorage);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();

  return v4(0xD00000000000002ALL, 0x8000000000452A30, _swiftEmptyArrayStorage);
}

{
  return OUTLINED_FUNCTION_33_1(42);
}

uint64_t OngoingCallCATs.informHangUpForEmergency(currentCall:completion:)()
{
  OUTLINED_FUNCTION_23_4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1(v1);
  OUTLINED_FUNCTION_0_12(v2, xmmword_424FD0);
  if (v0)
  {
    v3 = type metadata accessor for PhoneCallRecord(0);
    v4 = v0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_18_2();
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v2[3].n128_u64[0] = v4;
  v2[4].n128_u64[1] = v3;

  OUTLINED_FUNCTION_29(36);
  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t OngoingCallCATs.informHangUpForEmergency(currentCall:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t OngoingCallCATs.informHangUpForEmergency(currentCall:)()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v0[5] = v3;
  OUTLINED_FUNCTION_0_12(v3, xmmword_424FD0);
  v4 = 0;
  if (v1)
  {
    v4 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_31_1(v4);
  OUTLINED_FUNCTION_8_3();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[6] = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_19_10(v5);

  return v9(v7, 0xD000000000000024);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(AddCallParticipantCATs.errorParticipantAlreadyActive(participant:shouldIncludeHandleLabel:currentCall:), 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_11();

    return v7();
  }
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = v0[2];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  v0[4] = v3;
  OUTLINED_FUNCTION_0_12(v3, xmmword_424FD0);
  v4 = 0;
  if (v1)
  {
    v4 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_31_1(v4);
  OUTLINED_FUNCTION_8_3();
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_30(v5);
  v6 = OUTLINED_FUNCTION_29(36);

  return v8(v6);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_5();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_5_2();

    return v11(v10);
  }
}

uint64_t OngoingCallCATs.informHangUpForEmergency(currentCall:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t OngoingCallCATs.informHangUpForEmergency(currentCall:)(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_35_1(v2);
  OUTLINED_FUNCTION_0_12(v3, xmmword_424FD0);
  if (a1)
  {
    v4 = type metadata accessor for PhoneCallRecord(0);
    v5 = a1;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_18_2();
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v3[3].n128_u64[0] = v5;
  v3[4].n128_u64[1] = v4;

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t OngoingCallCATs.newCallPrompt(currentCall:targetCall:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v7 = OUTLINED_FUNCTION_45_0(v6);
  OUTLINED_FUNCTION_0_12(v7, xmmword_424FF0);
  if (a1)
  {
    v8 = type metadata accessor for PhoneCallRecord(0);
    v9 = a1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_18_2();
    v7[3].n128_u64[1] = 0;
    v7[4].n128_u64[0] = 0;
  }

  OUTLINED_FUNCTION_2_69(v8, v9);
  if (a2)
  {
    v10 = type metadata accessor for PhoneCallRecord(0);
    v11 = a2;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_18_2();
    v7[6].n128_u64[1] = 0;
    v7[7].n128_u64[0] = 0;
  }

  v7[6].n128_u64[0] = v11;
  v7[7].n128_u64[1] = v10;

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t OngoingCallCATs.newCallPrompt(currentCall:targetCall:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t OngoingCallCATs.newCallPrompt(currentCall:targetCall:)()
{
  v1 = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  v0[6] = v3;
  OUTLINED_FUNCTION_0_12(v3, xmmword_424FF0);
  if (v1)
  {
    v4 = type metadata accessor for PhoneCallRecord(0);
    v5 = v1;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_18_2();
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v6 = v0[4];
  OUTLINED_FUNCTION_2_69(v4, v5);
  v7 = 0;
  if (v6)
  {
    v7 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    v3[6].n128_u64[1] = 0;
    v3[7].n128_u64[0] = 0;
  }

  v3[6].n128_u64[0] = v6;
  v3[7].n128_u64[1] = v7;
  OUTLINED_FUNCTION_21_22();

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[7] = v8;
  *v8 = v9;
  v8[1] = AnnounceVoicemailCATs.readVoicemailAnnouncement(burstIndex:isPreviousNotificationVoicemail:voicemail:);
  v10 = v0[2];

  return v12(v10, 0xD000000000000019, 0x8000000000452A90, v3);
}

{
  v1 = v0[2];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = OUTLINED_FUNCTION_45_0(v2);
  v0[5] = v3;
  OUTLINED_FUNCTION_0_12(v3, xmmword_424FF0);
  if (v1)
  {
    v4 = type metadata accessor for PhoneCallRecord(0);
    v5 = v1;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_18_2();
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v6 = v0[3];
  OUTLINED_FUNCTION_2_69(v4, v5);
  v7 = 0;
  if (v6)
  {
    v7 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    v3[6].n128_u64[1] = 0;
    v3[7].n128_u64[0] = 0;
  }

  v3[6].n128_u64[0] = v6;
  v3[7].n128_u64[1] = v7;
  OUTLINED_FUNCTION_21_22();

  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = OngoingCallCATs.newCallPrompt(currentCall:targetCall:);

  return v10(0xD000000000000019, 0x8000000000452A90, v3);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_5();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_5_2();

    return v11(v10);
  }
}

uint64_t OngoingCallCATs.newCallPrompt(currentCall:targetCall:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t OngoingCallCATs.newCallPrompt(currentCall:targetCall:)(unint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_45_0(v4);
  OUTLINED_FUNCTION_0_12(v5, xmmword_424FF0);
  if (a1)
  {
    v6 = type metadata accessor for PhoneCallRecord(0);
    v7 = a1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_18_2();
    v5[3].n128_u64[1] = 0;
    v5[4].n128_u64[0] = 0;
  }

  v5[3].n128_u64[0] = v7;
  v5[4].n128_u64[1] = v6;
  v5[5].n128_u64[0] = 0x6143746567726174;
  v5[5].n128_u64[1] = 0xEA00000000006C6CLL;
  if (a2)
  {
    v8 = type metadata accessor for PhoneCallRecord(0);
    v9 = a2;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_18_2();
    v5[6].n128_u64[1] = 0;
    v5[7].n128_u64[0] = 0;
  }

  v5[6].n128_u64[0] = v9;
  v5[7].n128_u64[1] = v8;

  OUTLINED_FUNCTION_29(25);
  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t OngoingCallCATs.__allocating_init(templateDir:options:globals:)()
{
  OUTLINED_FUNCTION_23_4();
  swift_allocObject();
  return OngoingCallCATs.init(templateDir:options:globals:)(v2, v1, v0);
}

uint64_t OngoingCallCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CATOption();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v9 - 8);
  outlined init with copy of URL?(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = CATWrapper.init(templateDir:options:globals:)();
  (*(v6 + 8))(a2, v5);
  outlined destroy of URL?(a1);
  return v11;
}

unint64_t lazy protocol witness table accessor for type OngoingCallCATs.Properties and conformance OngoingCallCATs.Properties()
{
  result = lazy protocol witness table cache variable for type OngoingCallCATs.Properties and conformance OngoingCallCATs.Properties;
  if (!lazy protocol witness table cache variable for type OngoingCallCATs.Properties and conformance OngoingCallCATs.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OngoingCallCATs.Properties and conformance OngoingCallCATs.Properties);
  }

  return result;
}

uint64_t type metadata accessor for OngoingCallCATs(uint64_t a1)
{
  result = type metadata singleton initialization cache for OngoingCallCATs;
  if (!type metadata singleton initialization cache for OngoingCallCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OngoingCallCATs.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

PhoneCallFlowDelegatePlugin::OngoingCallCATsSimple::Properties_optional __swiftcall OngoingCallCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of OngoingCallCATsSimple.Properties.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t OngoingCallCATsSimple.Properties.rawValue.getter(char a1)
{
  result = 0xD00000000000001BLL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000002CLL;
      break;
    case 2:
      result = 0xD00000000000002ALL;
      break;
    case 3:
      result = 0xD000000000000024;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::OngoingCallCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance OngoingCallCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::OngoingCallCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = OngoingCallCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance OngoingCallCATsSimple.Properties()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = OngoingCallCATsSimple.Properties.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t OngoingCallCATsSimple.addOrCallPrompt()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = AnnounceCallBellCATsSimple.announceCallBellEnded();

  return v4(0xD00000000000001BLL, 0x80000000004529E0, _swiftEmptyArrayStorage);
}

BOOL OngoingCallCATsSimple.AddOrCallPromptDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of OngoingCallCATsSimple.AddOrCallPromptDialogIds.init(rawValue:), v2);
  OUTLINED_FUNCTION_33_2();
  return v1 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance OngoingCallCATsSimple.AddOrCallPromptDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = OngoingCallCATsSimple.AddOrCallPromptDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t OngoingCallCATsSimple.addOrCallPromptAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  lazy protocol witness table accessor for type OngoingCallCATsSimple.AddOrCallPromptDialogIds and conformance OngoingCallCATsSimple.AddOrCallPromptDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v3;
  v2[1] = AnnounceCallBellCATsSimple.announceCallBellEndedAsLabels();

  return v5(0xD00000000000001BLL, 0x80000000004529E0, _swiftEmptyArrayStorage, &type metadata for OngoingCallCATsSimple.AddOrCallPromptDialogIds);
}

unint64_t lazy protocol witness table accessor for type OngoingCallCATsSimple.AddOrCallPromptDialogIds and conformance OngoingCallCATsSimple.AddOrCallPromptDialogIds()
{
  result = lazy protocol witness table cache variable for type OngoingCallCATsSimple.AddOrCallPromptDialogIds and conformance OngoingCallCATsSimple.AddOrCallPromptDialogIds;
  if (!lazy protocol witness table cache variable for type OngoingCallCATsSimple.AddOrCallPromptDialogIds and conformance OngoingCallCATsSimple.AddOrCallPromptDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OngoingCallCATsSimple.AddOrCallPromptDialogIds and conformance OngoingCallCATsSimple.AddOrCallPromptDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OngoingCallCATsSimple.AddOrCallPromptDialogIds and conformance OngoingCallCATsSimple.AddOrCallPromptDialogIds;
  if (!lazy protocol witness table cache variable for type OngoingCallCATsSimple.AddOrCallPromptDialogIds and conformance OngoingCallCATsSimple.AddOrCallPromptDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OngoingCallCATsSimple.AddOrCallPromptDialogIds and conformance OngoingCallCATsSimple.AddOrCallPromptDialogIds);
  }

  return result;
}

uint64_t OngoingCallCATsSimple.confirmHangUpForForeignEmergency(currentCall:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t OngoingCallCATsSimple.confirmHangUpForForeignEmergency(currentCall:)()
{
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_51(v4);
  OUTLINED_FUNCTION_0_12(v5, xmmword_424FD0);
  v6 = 0;
  if (v2)
  {
    v6 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_8_3();
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_30(v7);
  v8 = OUTLINED_FUNCTION_29(44);

  return v10(v8);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_5();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_5_2();

    return v11(v10);
  }
}

uint64_t OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x636972656E6567;
  }

  else
  {
    return 0x656D695465636166;
  }
}

PhoneCallFlowDelegatePlugin::OngoingCallCATsSimple::ConfirmHangUpForForeignEmergencyDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::OngoingCallCATsSimple::ConfirmHangUpForForeignEmergencyDialogIds_optional *a2@<X8>)
{
  result.value = OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t OngoingCallCATsSimple.confirmHangUpForForeignEmergencyAsLabels(currentCall:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t OngoingCallCATsSimple.confirmHangUpForForeignEmergencyAsLabels(currentCall:)()
{
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_51(v4);
  OUTLINED_FUNCTION_0_12(v5, xmmword_424FD0);
  v6 = 0;
  if (v2)
  {
    v6 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_8_3();
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  lazy protocol witness table accessor for type OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds and conformance OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds();
  OUTLINED_FUNCTION_9();
  *v7 = v8;
  v7[1] = OngoingCallCATsSimple.confirmHangUpForForeignEmergency(currentCall:);
  v9 = OUTLINED_FUNCTION_29(44);

  return v11(v9);
}

unint64_t lazy protocol witness table accessor for type OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds and conformance OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds()
{
  result = lazy protocol witness table cache variable for type OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds and conformance OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds;
  if (!lazy protocol witness table cache variable for type OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds and conformance OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds and conformance OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds and conformance OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds;
  if (!lazy protocol witness table cache variable for type OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds and conformance OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds and conformance OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds);
  }

  return result;
}

uint64_t OngoingCallCATsSimple.confirmHangUpForLocalEmergency()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = AnnounceCallBellCATsSimple.announceCallBellEnded();

  return v4(0xD00000000000002ALL, 0x8000000000452A30, _swiftEmptyArrayStorage);
}

BOOL OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds.init(rawValue:), v2);
  OUTLINED_FUNCTION_33_2();
  return v1 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds@<W0>(_BYTE *a1@<X8>)
{
  result = OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t OngoingCallCATsSimple.confirmHangUpForLocalEmergencyAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  lazy protocol witness table accessor for type OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds and conformance OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v3;
  v2[1] = AnnounceCallBellCATsSimple.announceCallBellEnded();

  return v5(0xD00000000000002ALL, 0x8000000000452A30, _swiftEmptyArrayStorage, &type metadata for OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds);
}

unint64_t lazy protocol witness table accessor for type OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds and conformance OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds()
{
  result = lazy protocol witness table cache variable for type OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds and conformance OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds;
  if (!lazy protocol witness table cache variable for type OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds and conformance OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds and conformance OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds and conformance OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds;
  if (!lazy protocol witness table cache variable for type OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds and conformance OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds and conformance OngoingCallCATsSimple.ConfirmHangUpForLocalEmergencyDialogIds);
  }

  return result;
}

uint64_t OngoingCallCATsSimple.informHangUpForEmergency(currentCall:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t OngoingCallCATsSimple.informHangUpForEmergency(currentCall:)()
{
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_51(v4);
  OUTLINED_FUNCTION_0_12(v5, xmmword_424FD0);
  v6 = 0;
  if (v2)
  {
    v6 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_8_3();
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_30(v7);
  v8 = OUTLINED_FUNCTION_29(36);

  return v10(v8);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_5();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_5_2();

    return v11(v10);
  }
}

PhoneCallFlowDelegatePlugin::OngoingCallCATsSimple::InformHangUpForEmergencyDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance OngoingCallCATsSimple.InformHangUpForEmergencyDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::OngoingCallCATsSimple::InformHangUpForEmergencyDialogIds_optional *a2@<X8>)
{
  result.value = OngoingCallCATsSimple.InformHangUpForEmergencyDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t OngoingCallCATsSimple.informHangUpForEmergencyAsLabels(currentCall:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t OngoingCallCATsSimple.informHangUpForEmergencyAsLabels(currentCall:)()
{
  OUTLINED_FUNCTION_23_0();
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = OUTLINED_FUNCTION_51(v4);
  OUTLINED_FUNCTION_0_12(v5, xmmword_424FD0);
  v6 = 0;
  if (v2)
  {
    v6 = type metadata accessor for PhoneCallRecord(0);
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  OUTLINED_FUNCTION_31_1(v6);
  OUTLINED_FUNCTION_8_3();
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  lazy protocol witness table accessor for type OngoingCallCATsSimple.InformHangUpForEmergencyDialogIds and conformance OngoingCallCATsSimple.InformHangUpForEmergencyDialogIds();
  OUTLINED_FUNCTION_9();
  *v7 = v8;
  v7[1] = OngoingCallCATsSimple.confirmHangUpForForeignEmergency(currentCall:);
  v9 = OUTLINED_FUNCTION_29(36);

  return v11(v9);
}

unint64_t lazy protocol witness table accessor for type OngoingCallCATsSimple.InformHangUpForEmergencyDialogIds and conformance OngoingCallCATsSimple.InformHangUpForEmergencyDialogIds()
{
  result = lazy protocol witness table cache variable for type OngoingCallCATsSimple.InformHangUpForEmergencyDialogIds and conformance OngoingCallCATsSimple.InformHangUpForEmergencyDialogIds;
  if (!lazy protocol witness table cache variable for type OngoingCallCATsSimple.InformHangUpForEmergencyDialogIds and conformance OngoingCallCATsSimple.InformHangUpForEmergencyDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OngoingCallCATsSimple.InformHangUpForEmergencyDialogIds and conformance OngoingCallCATsSimple.InformHangUpForEmergencyDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OngoingCallCATsSimple.InformHangUpForEmergencyDialogIds and conformance OngoingCallCATsSimple.InformHangUpForEmergencyDialogIds;
  if (!lazy protocol witness table cache variable for type OngoingCallCATsSimple.InformHangUpForEmergencyDialogIds and conformance OngoingCallCATsSimple.InformHangUpForEmergencyDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OngoingCallCATsSimple.InformHangUpForEmergencyDialogIds and conformance OngoingCallCATsSimple.InformHangUpForEmergencyDialogIds);
  }

  return result;
}

uint64_t OngoingCallCATsSimple.newCallPrompt(currentCall:targetCall:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t OngoingCallCATsSimple.newCallPrompt(currentCall:targetCall:)()
{
  v2 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  v1[5] = v3;
  OUTLINED_FUNCTION_0_12(v3, xmmword_424FF0);
  if (v2)
  {
    v4 = type metadata accessor for PhoneCallRecord(0);
    v5 = v2;
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v6 = OUTLINED_FUNCTION_10_41(v4, v5);
  if (v0)
  {
    v6 = type metadata accessor for PhoneCallRecord(v6);
  }

  else
  {
    v3[6].n128_u64[1] = 0;
    v3[7].n128_u64[0] = 0;
  }

  v3[6].n128_u64[0] = v0;
  v3[7].n128_u64[1] = v6;
  OUTLINED_FUNCTION_21_22();

  v7 = swift_task_alloc();
  v1[6] = v7;
  *v7 = v1;
  v7[1] = AnnounceVoicemailCATsSimple.readVoicemailAnnouncementAsLabels(burstIndex:isPreviousNotificationVoicemail:voicemail:);

  return v9(0xD000000000000019, 0x8000000000452A90, v3);
}

PhoneCallFlowDelegatePlugin::OngoingCallCATsSimple::NewCallPromptDialogIds_optional __swiftcall OngoingCallCATsSimple.NewCallPromptDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of OngoingCallCATsSimple.NewCallPromptDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t OngoingCallCATsSimple.NewCallPromptDialogIds.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0xD000000000000013;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0x636972656E6567;
}

PhoneCallFlowDelegatePlugin::OngoingCallCATsSimple::NewCallPromptDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance OngoingCallCATsSimple.NewCallPromptDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::OngoingCallCATsSimple::NewCallPromptDialogIds_optional *a2@<X8>)
{
  result.value = OngoingCallCATsSimple.NewCallPromptDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance OngoingCallCATsSimple.NewCallPromptDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = OngoingCallCATsSimple.NewCallPromptDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t OngoingCallCATsSimple.newCallPromptAsLabels(currentCall:targetCall:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t OngoingCallCATsSimple.newCallPromptAsLabels(currentCall:targetCall:)()
{
  v2 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v3 = swift_allocObject();
  v1[5] = v3;
  OUTLINED_FUNCTION_0_12(v3, xmmword_424FF0);
  if (v2)
  {
    v4 = type metadata accessor for PhoneCallRecord(0);
    v5 = v2;
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  v6 = OUTLINED_FUNCTION_10_41(v4, v5);
  if (v0)
  {
    v6 = type metadata accessor for PhoneCallRecord(v6);
  }

  else
  {
    v3[6].n128_u64[1] = 0;
    v3[7].n128_u64[0] = 0;
  }

  v3[6].n128_u64[0] = v0;
  v3[7].n128_u64[1] = v6;
  OUTLINED_FUNCTION_21_22();

  v7 = swift_task_alloc();
  v1[6] = v7;
  lazy protocol witness table accessor for type OngoingCallCATsSimple.NewCallPromptDialogIds and conformance OngoingCallCATsSimple.NewCallPromptDialogIds();
  OUTLINED_FUNCTION_9();
  *v7 = v8;
  v7[1] = AnnounceVoicemailCATsSimple.readVoicemailAnnouncement(burstIndex:isPreviousNotificationVoicemail:voicemail:);

  return v10(0xD000000000000019, 0x8000000000452A90, v3, &type metadata for OngoingCallCATsSimple.NewCallPromptDialogIds);
}

unint64_t lazy protocol witness table accessor for type OngoingCallCATsSimple.NewCallPromptDialogIds and conformance OngoingCallCATsSimple.NewCallPromptDialogIds()
{
  result = lazy protocol witness table cache variable for type OngoingCallCATsSimple.NewCallPromptDialogIds and conformance OngoingCallCATsSimple.NewCallPromptDialogIds;
  if (!lazy protocol witness table cache variable for type OngoingCallCATsSimple.NewCallPromptDialogIds and conformance OngoingCallCATsSimple.NewCallPromptDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OngoingCallCATsSimple.NewCallPromptDialogIds and conformance OngoingCallCATsSimple.NewCallPromptDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OngoingCallCATsSimple.NewCallPromptDialogIds and conformance OngoingCallCATsSimple.NewCallPromptDialogIds;
  if (!lazy protocol witness table cache variable for type OngoingCallCATsSimple.NewCallPromptDialogIds and conformance OngoingCallCATsSimple.NewCallPromptDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OngoingCallCATsSimple.NewCallPromptDialogIds and conformance OngoingCallCATsSimple.NewCallPromptDialogIds);
  }

  return result;
}

uint64_t OngoingCallCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  v7 = v6;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v12 - 8);
  outlined init with copy of URL?(a1, &v16 - v13);
  (*(v7 + 16))(v11, a2, v3);
  v14 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v7 + 8))(a2, v3);
  outlined destroy of URL?(a1);
  return v14;
}

uint64_t OngoingCallCATsSimple.__allocating_init(useResponseMode:options:)(uint64_t a1)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_39_1();
  v4(v3);
  CATWrapperSimple.init(useResponseMode:options:)();
  v5 = OUTLINED_FUNCTION_53();
  v6(v5);
  return v2;
}

uint64_t OngoingCallCATsSimple.init(useResponseMode:options:)(uint64_t a1)
{
  type metadata accessor for CATOption();
  OUTLINED_FUNCTION_14_5();
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_39_1();
  v4(v3);
  CATWrapperSimple.init(useResponseMode:options:)();
  v5 = OUTLINED_FUNCTION_53();
  v6(v5);
  return v1;
}

unint64_t lazy protocol witness table accessor for type OngoingCallCATsSimple.Properties and conformance OngoingCallCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type OngoingCallCATsSimple.Properties and conformance OngoingCallCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type OngoingCallCATsSimple.Properties and conformance OngoingCallCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OngoingCallCATsSimple.Properties and conformance OngoingCallCATsSimple.Properties);
  }

  return result;
}

uint64_t type metadata accessor for OngoingCallCATsSimple(uint64_t a1)
{
  result = type metadata singleton initialization cache for OngoingCallCATsSimple;
  if (!type metadata singleton initialization cache for OngoingCallCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OngoingCallCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OngoingCallCATsSimple.AddOrCallPromptDialogIds(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OngoingCallCATsSimple.ConfirmHangUpForForeignEmergencyDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for OngoingCallCATsSimple.NewCallPromptDialogIds(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t OngoingCallConfirmIntentFlow.rchRecord.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_rchRecord;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
  OUTLINED_FUNCTION_23_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t OngoingCallConfirmIntentFlow.callStateProvider.getter()
{
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_sharedGlobals), *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_sharedGlobals + 24));
  v1 = OUTLINED_FUNCTION_1_1();
  return v2(v1);
}

uint64_t key path setter for OngoingCallConfirmIntentFlow.state : OngoingCallConfirmIntentFlow(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for OngoingCallConfirmIntentFlow.State(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of OngoingCallConfirmIntentFlow.State(a1, v6);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_state;
  swift_beginAccess();
  outlined assign with take of OngoingCallConfirmIntentFlow.State(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t OngoingCallConfirmIntentFlow.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_state;
  swift_beginAccess();
  return outlined init with copy of OngoingCallConfirmIntentFlow.State(v1 + v3, a1);
}

uint64_t outlined init with copy of OngoingCallConfirmIntentFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OngoingCallConfirmIntentFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OngoingCallConfirmIntentFlow.Action.description.getter(char a1)
{
  if (a1)
  {
    return 0x6C61436F54646461;
  }

  else
  {
    return 0x6C6C614377656ELL;
  }
}

PhoneCallFlowDelegatePlugin::OngoingCallConfirmIntentFlow::Action_optional __swiftcall OngoingCallConfirmIntentFlow.Action.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of OngoingCallConfirmIntentFlow.Action.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_OngoingCallConfirmIntentFlow_Action_addToCall;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_OngoingCallConfirmIntentFlow_Action_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

PhoneCallFlowDelegatePlugin::OngoingCallConfirmIntentFlow::Action_optional protocol witness for RawRepresentable.init(rawValue:) in conformance OngoingCallConfirmIntentFlow.Action@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::OngoingCallConfirmIntentFlow::Action_optional *a2@<X8>)
{
  result.value = OngoingCallConfirmIntentFlow.Action.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance OngoingCallConfirmIntentFlow.Action@<X0>(uint64_t *a1@<X8>)
{
  result = OngoingCallConfirmIntentFlow.Action.description.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t OngoingCallConfirmIntentFlow.exitValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v4 = OUTLINED_FUNCTION_21(v3);
  __chkstk_darwin(v4);
  v6 = &v25 - v5;
  v7 = OUTLINED_FUNCTION_4_45();
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v25 - v12;
  (*(*v1 + 112))(v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMd, &_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMR);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    goto LABEL_6;
  }

  outlined init with copy of OngoingCallConfirmIntentFlow.State(v13, v9);
  OUTLINED_FUNCTION_9_1();
  v16 = v15;
  v18 = (*(v17 + 88))(v9, v14);
  if (v18 != enum case for PromptResult.answered<A>(_:))
  {
    (*(v16 + 8))(v9, v14);
    goto LABEL_6;
  }

  v19 = v18;
  (*(v16 + 96))(v9, v14);
  if (*v9)
  {
LABEL_6:
    v19 = enum case for PromptResult.cancelled<A>(_:);
    goto LABEL_7;
  }

  v20 = enum case for ConfirmationResponse.confirmed(_:);
  v21 = type metadata accessor for ConfirmationResponse();
  OUTLINED_FUNCTION_23_1();
  (*(v22 + 104))(v6, v20, v21);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
  IntentResolutionRecord.intent.getter();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
  ConfirmIntentAnswer.init(confirmationResponse:intent:)();
LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOyAA19ConfirmIntentAnswerVySo011INStartCallG0CGGMd, &_s11SiriKitFlow12PromptResultOyAA19ConfirmIntentAnswerVySo011INStartCallG0CGGMR);
  OUTLINED_FUNCTION_23_1();
  (*(v23 + 104))(a1, v19);
  return outlined destroy of OngoingCallConfirmIntentFlow.State(v13);
}

uint64_t outlined destroy of OngoingCallConfirmIntentFlow.State(uint64_t a1)
{
  v2 = type metadata accessor for OngoingCallConfirmIntentFlow.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OngoingCallConfirmIntentFlow.__allocating_init(rchRecord:sharedGlobals:)(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
  OUTLINED_FUNCTION_9_1();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v19[-v9 - 8];
  v11 = OUTLINED_FUNCTION_4_45();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMd, &_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMR);
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  (*(v7 + 16))(v10, a1, v5);
  outlined init with copy of SignalProviding(a2, v19);
  v16 = (*(v2 + 144))(v14, v10, v19);
  __swift_destroy_boxed_opaque_existential_1(a2);
  (*(v7 + 8))(a1, v5);
  return v16;
}

uint64_t OngoingCallConfirmIntentFlow.__allocating_init(state:rchRecord:sharedGlobals:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  OngoingCallConfirmIntentFlow.init(state:rchRecord:sharedGlobals:)(a1, a2, a3);
  return v6;
}

uint64_t OngoingCallConfirmIntentFlow.init(state:rchRecord:sharedGlobals:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  outlined init with take of OngoingCallConfirmIntentFlow.State(a1, v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_state);
  v6 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_rchRecord;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
  OUTLINED_FUNCTION_23_1();
  (*(v7 + 32))(v3 + v6, a2);
  outlined init with take of PhoneCallFeatureFlagProviding(a3, v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_sharedGlobals);
  return v3;
}

uint64_t outlined init with take of OngoingCallConfirmIntentFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OngoingCallConfirmIntentFlow.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OngoingCallConfirmIntentFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for OngoingCallConfirmIntentFlow(0);
  lazy protocol witness table accessor for type OngoingCallConfirmIntentFlow and conformance OngoingCallConfirmIntentFlow(&lazy protocol witness table cache variable for type OngoingCallConfirmIntentFlow and conformance OngoingCallConfirmIntentFlow, type metadata accessor for OngoingCallConfirmIntentFlow, &protocol conformance descriptor for OngoingCallConfirmIntentFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t OngoingCallConfirmIntentFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  v1[14] = v2;
  v1[15] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMd, &_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMR);
  v1[16] = v3;
  v1[17] = *(v3 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  OUTLINED_FUNCTION_4_45();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return _swift_task_switch(OngoingCallConfirmIntentFlow.execute(), 0, 0);
}

{
  v77 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 128);
  (*(**(v0 + 120) + 112))();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(**(v0 + 120) + 104))();
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v3 = OUTLINED_FUNCTION_55();
    if (v4(v3))
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      v5 = OUTLINED_FUNCTION_55();
      v7 = OngoingCallConfirmIntentFlow.makeErrorFlow(currentCall:)(v5, v6);
      if (v7)
      {
        v8 = v7;
        v9 = *(v0 + 168);
        v10 = *(v0 + 128);
        v11 = *(v0 + 120);
        (*(*(v0 + 136) + 104))(v9, enum case for PromptResult.cancelled<A>(_:), v10);
        v12 = OUTLINED_FUNCTION_10_42();
        __swift_storeEnumTagSinglePayload(v12, v13, v14, v10);
        v15 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_state;
        OUTLINED_FUNCTION_17_3(v11 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_state, v0 + 80);
        outlined assign with take of OngoingCallConfirmIntentFlow.State(v9, v11 + v15);
        swift_endAccess();
        *(v0 + 104) = v8;
        type metadata accessor for SimpleOutputFlowAsync();
        static ExecuteResponse.complete<A>(next:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v70 = OUTLINED_FUNCTION_55();
        OngoingCallConfirmIntentFlow.makeOfferResponse(currentCall:)(v70, v71, v72);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v48 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v48, static Logger.siriPhone);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_8_0(v50))
      {
        v51 = OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_11_1(v51);
        OUTLINED_FUNCTION_14_1(&dword_0, v52, v53, "#OngoingCallConfirmIntentFlow: No current call during OngoingCall flows. Proceed with new call.");
        OUTLINED_FUNCTION_12_3();
      }

      v54 = *(v0 + 168);
      v55 = *(v0 + 128);
      v56 = *(v0 + 136);
      v57 = *(v0 + 120);

      *v54 = 0;
      (*(v56 + 104))(v54, enum case for PromptResult.answered<A>(_:), v55);
      __swift_storeEnumTagSinglePayload(v54, 0, 1, v55);
      v58 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_state;
      OUTLINED_FUNCTION_17_3(v57 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_state, v0 + 56);
      outlined assign with take of OngoingCallConfirmIntentFlow.State(v54, v57 + v58);
      swift_endAccess();
      static ExecuteResponse.complete()();
    }
  }

  else
  {
    v16 = (*(*(v0 + 136) + 88))(*(v0 + 176), *(v0 + 128));
    v17 = *(v0 + 176);
    v18 = *(v0 + 136);
    if (v16 == enum case for PromptResult.answered<A>(_:))
    {
      v19 = *(v0 + 160);
      (*(v18 + 16))(v19, v17, *(v0 + 128));
      v20 = OUTLINED_FUNCTION_19_0();
      v21(v20);
      if (*v19 == 1)
      {
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
        }

        v22 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v22, static Logger.siriPhone);
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_8_0(v24))
        {
          v25 = OUTLINED_FUNCTION_65_0();
          OUTLINED_FUNCTION_11_1(v25);
          OUTLINED_FUNCTION_14_1(&dword_0, v26, v27, "#OngoingCallConfirmIntentFlow User selected add to call, push new RCHFlow");
          OUTLINED_FUNCTION_12_3();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
        v28 = IntentResolutionRecord.intent.getter();
        v29 = outlined bridged method (ob) of @objc INStartCallIntent.contacts.getter(v28);
        v30 = objc_allocWithZone(INAddCallParticipantIntent);
        v31 = @nonobjc INAddCallParticipantIntent.init(participants:)(v29);
        IntentResolutionRecord.app.getter();
        static PhoneCallFlowFactory.makeAddCallParticipantRCHFlow(intent:app:sharedGlobals:)();

        static ExecuteResponse.complete<A>(next:)();

        v32 = OUTLINED_FUNCTION_55();
        v33(v32);
      }

      else
      {
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
        }

        v59 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v59, static Logger.siriPhone);
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.debug.getter();
        if (OUTLINED_FUNCTION_8_0(v61))
        {
          v62 = OUTLINED_FUNCTION_65_0();
          OUTLINED_FUNCTION_11_1(v62);
          OUTLINED_FUNCTION_14_1(&dword_0, v63, v64, "#OngoingCallConfirmIntentFlow User selected new call, proceed to Handle + ContinueInApp");
          OUTLINED_FUNCTION_12_3();
        }

        static ExecuteResponse.complete()();
        v65 = OUTLINED_FUNCTION_55();
        v66(v65);
      }
    }

    else
    {
      (*(v18 + 32))(*(v0 + 152), v17, *(v0 + 128));
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v34 = type metadata accessor for Logger();
      __swift_project_value_buffer(v34, static Logger.siriPhone);
      v35 = OUTLINED_FUNCTION_19_0();
      v36(v35);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();
      v39 = os_log_type_enabled(v37, v38);
      v40 = *(v0 + 136);
      if (v39)
      {
        v41 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v76 = v75;
        *v41 = 136315138;
        lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type PromptResult<OngoingCallConfirmIntentFlow.Action> and conformance PromptResult<A>, &_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMd, &_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMR, &protocol conformance descriptor for PromptResult<A>);
        v42 = dispatch thunk of CustomStringConvertible.description.getter();
        v44 = v43;
        v45 = *(v40 + 8);
        v46 = OUTLINED_FUNCTION_18_18();
        v45(v46);
        v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v76);

        *(v41 + 4) = v47;
        _os_log_impl(&dword_0, v37, v38, "#OngoingCallConfirmIntentFlow Prompt result: %s, returning .complete for this flow", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v75);
        OUTLINED_FUNCTION_26_0(v75);
        OUTLINED_FUNCTION_26_0(v41);
      }

      else
      {

        v45 = *(v40 + 8);
        v67 = OUTLINED_FUNCTION_18_18();
        v45(v67);
      }

      v68 = *(v0 + 152);
      v69 = *(v0 + 128);
      static ExecuteResponse.complete()();
      (v45)(v68, v69);
    }
  }

  v73 = *(v0 + 8);

  return v73();
}

uint64_t OngoingCallConfirmIntentFlow.makeErrorFlow(currentCall:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DialogPhase();
  v7 = OUTLINED_FUNCTION_21(v6);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_4();
  v8 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_9_1();
  v110 = v9;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_4();
  v109 = v12 - v11;
  v13 = type metadata accessor for CATOption();
  v14 = OUTLINED_FUNCTION_21(v13);
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
  v15 = IntentResolutionRecord.intent.getter();
  v16 = outlined bridged method (ob) of @objc INStartCallIntent.contacts.getter(v15);
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v18 = specialized Array.count.getter(v17);

  if (v18 != 1 || (v19 = IntentResolutionRecord.intent.getter(), (v20 = outlined bridged method (ob) of @objc INStartCallIntent.contacts.getter(v19)) == 0))
  {
LABEL_20:
    if (one-time initialization token for siriPhone != -1)
    {
      goto LABEL_57;
    }

    goto LABEL_21;
  }

  v21 = v20;
  if (!specialized Array.count.getter(v20))
  {

    goto LABEL_20;
  }

  v107 = v8;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v21 & 0xC000000000000001) == 0, v21);
  if ((v21 & 0xC000000000000001) != 0)
  {
    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v22 = *(v21 + 32);
  }

  v23 = v22;

  v24 = [v23 personHandle];
  if (!v24)
  {

    goto LABEL_20;
  }

  v25 = v24;
  (*(*v3 + 104))(&v115);
  __swift_project_boxed_opaque_existential_1(&v115, v117[1]);
  v26 = OUTLINED_FUNCTION_55();
  v28 = v27(v26);
  v30 = (*(v29 + 16))(v25, v28, v29);
  if (!v30)
  {
    __swift_destroy_boxed_opaque_existential_1(&v115);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v55 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v55, static Logger.siriPhone);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v58);
      OUTLINED_FUNCTION_33(&dword_0, v59, v60, "#OngoingCallConfirmIntentFlow: Could not normalize handles for validation. Continue to offer.");
      OUTLINED_FUNCTION_12_3();
    }

    return 0;
  }

  v31 = v30;
  __swift_destroy_boxed_opaque_existential_1(&v115);
  ObjectType = swift_getObjectType();
  v33 = SPHCall.localHandle.getter();
  v108 = v31;
  if (v33)
  {
    v34 = v33;
    if (TUHandlesAreCanonicallyEqual())
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v35 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v35, static Logger.siriPhone);
      v36 = v31;
      v37 = v34;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v105 = v25;
        v40 = swift_slowAlloc();
        v100 = a2;
        v41 = a1;
        v42 = swift_slowAlloc();
        *v40 = 138412546;
        *(v40 + 4) = v36;
        *(v40 + 12) = 2112;
        *(v40 + 14) = v37;
        *v42 = v108;
        v42[1] = v34;
        v43 = v36;
        v44 = v37;
        _os_log_impl(&dword_0, v38, v39, "#OngoingCallConfirmIntentFlow: Providing error dialog for calling self, %@ matches %@", v40, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        v45 = v42;
        a1 = v41;
        a2 = v100;
        OUTLINED_FUNCTION_26_0(v45);
        v46 = v40;
        v25 = v105;
        OUTLINED_FUNCTION_26_0(v46);
      }

      outlined init with copy of SignalProviding(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_sharedGlobals, v117);
      v115 = a1;
      v116 = a2;
      type metadata accessor for AddCallParticipantCATsSimple(0);
      swift_unknownObjectRetain();
      static CATOption.defaultMode.getter();
      v118 = CATWrapperSimple.__allocating_init(options:globals:)();
      v47 = OngoingCallErrorFlowFactory.selfAdd()();

LABEL_54:
      outlined destroy of OngoingCallErrorFlowFactory(&v115);
      return v47;
    }
  }

  v106 = v25;
  v99 = ObjectType;
  v101 = a2;
  v98 = *(a2 + 56);
  v61 = v98(ObjectType, a2);
  v104 = v23;
  if ((v61 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for TUHandle, TUHandle_ptr);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject();
    OUTLINED_FUNCTION_19_0();
    Set.Iterator.init(_cocoa:)();
    v62 = v119;
    v63 = v120;
    v64 = v121;
    v65 = v122;
    v66 = v123;
  }

  else
  {
    v67 = -1 << *(v61 + 32);
    v63 = v61 + 56;
    v64 = ~v67;
    v68 = -v67;
    if (v68 < 64)
    {
      v69 = ~(-1 << v68);
    }

    else
    {
      v69 = -1;
    }

    v66 = v69 & *(v61 + 56);
    v65 = 0;
  }

  v70 = (v64 + 64) >> 6;
  while (1)
  {
    if (v62 < 0)
    {
      v74 = __CocoaSet.Iterator.next()();
      if (!v74 || (*&v111 = v74, type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for TUHandle, TUHandle_ptr), swift_dynamicCast(), (v73 = v115) == 0))
      {
LABEL_55:
        v96 = OUTLINED_FUNCTION_55();
        OUTLINED_FUNCTION_22_16(v96, v97);

        return 0;
      }

      goto LABEL_48;
    }

    v71 = v65;
    v72 = v66;
    if (!v66)
    {
      break;
    }

LABEL_44:
    v66 = (v72 - 1) & v72;
    v73 = *(*(v62 + 48) + ((v65 << 9) | (8 * __clz(__rbit64(v72)))));
    if (!v73)
    {
      goto LABEL_55;
    }

LABEL_48:
    v75 = TUHandlesAreCanonicallyEqual();

    if (v75)
    {
      v76 = OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_22_16(v76, v77);

      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
      }

      v78 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v78, static Logger.siriPhone);
      v79 = v108;
      swift_unknownObjectRetain();
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.debug.getter();

      swift_unknownObjectRelease();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v115 = v83;
        *v82 = 136315394;
        v102 = v81;
        v98(v99, v101);
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for TUHandle, TUHandle_ptr);
        lazy protocol witness table accessor for type TUHandle and conformance NSObject();
        v84 = Set.description.getter();
        v86 = v85;

        v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v86, &v115);

        *(v82 + 4) = v87;
        *(v82 + 12) = 2112;
        *(v82 + 14) = v79;
        *v103 = v108;
        v88 = v79;
        _os_log_impl(&dword_0, v80, v102, "#OngoingCallConfirmIntentFlow: Providing error dialog for calling contact we're already calling, %s contains %@", v82, 0x16u);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v103, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        OUTLINED_FUNCTION_26_0(v103);
        __swift_destroy_boxed_opaque_existential_1(v83);
        OUTLINED_FUNCTION_26_0(v83);
        OUTLINED_FUNCTION_12_3();
      }

      outlined init with copy of SignalProviding(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_sharedGlobals, v117);
      v115 = a1;
      v116 = v101;
      type metadata accessor for AddCallParticipantCATsSimple(0);
      swift_unknownObjectRetain();
      static CATOption.defaultMode.getter();
      v118 = CATWrapperSimple.__allocating_init(options:globals:)();
      type metadata accessor for PhonePerson(0);
      __swift_project_boxed_opaque_existential_1(v117, v117[3]);
      v89 = OUTLINED_FUNCTION_1_1();
      v90(v89);
      __swift_project_boxed_opaque_existential_1(&v111, *(&v112 + 1));
      OUTLINED_FUNCTION_1_1();
      dispatch thunk of DeviceState.siriLocale.getter();
      v91 = static PhonePerson.make(phonePerson:options:locale:)(v104, 0, v109);
      (*(v110 + 8))(v109, v107);
      __swift_destroy_boxed_opaque_existential_1(&v111);
      outlined init with copy of OngoingCallErrorFlowFactory(&v115, &v111);
      v92 = swift_allocObject();
      v93 = v112;
      *(v92 + 16) = v111;
      *(v92 + 32) = v93;
      v94 = v114;
      *(v92 + 48) = v113;
      *(v92 + 64) = v94;
      *(v92 + 80) = v91;

      static DialogPhase.error.getter();
      outlined init with copy of SignalProviding(v117, &v111);
      type metadata accessor for DialogOutputFactory(0);
      swift_allocObject();
      v95 = DialogOutputFactory.init(dialog:dialogPhase:sharedGlobals:)();
      v47 = (*(*v95 + 112))();

      goto LABEL_54;
    }
  }

  while (1)
  {
    v65 = v71 + 1;
    if (__OFADD__(v71, 1))
    {
      break;
    }

    if (v65 >= v70)
    {
      goto LABEL_55;
    }

    v72 = *(v63 + 8 * v65);
    ++v71;
    if (v72)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_57:
  OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
LABEL_21:
  v48 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v48, static Logger.siriPhone);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v51);
    OUTLINED_FUNCTION_33(&dword_0, v52, v53, "#OngoingCallConfirmIntentFlow: Skipping validation for group call requests. Continue to offer.");
    OUTLINED_FUNCTION_12_3();
  }

  return 0;
}

uint64_t OngoingCallConfirmIntentFlow.makeOfferResponse(currentCall:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v78 = a2;
  v80 = a3;
  v6 = OUTLINED_FUNCTION_4_45();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v79 = (v8 - v7);
  v9 = type metadata accessor for CATOption();
  v10 = OUTLINED_FUNCTION_21(v9);
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
  OUTLINED_FUNCTION_9_1();
  v12 = v11;
  v14 = __chkstk_darwin(v13);
  v16 = v77 - v15;
  v17 = *(v12 + 16);
  v77[1] = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_rchRecord;
  v82 = v18;
  v17(v77 - v15, v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_rchRecord, v14);
  v19 = (v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_sharedGlobals);
  v20 = *(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_sharedGlobals + 24);
  v21 = *(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_sharedGlobals + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_sharedGlobals), v20);
  (*(v21 + 120))(v90, v20, v21);
  v22 = v19[3];
  v23 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v22);
  v24 = (*(v23 + 72))(v22, v23);
  (*(*v24 + 216))(&v83);

  if (v85)
  {
    _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(&v87, v88, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    outlined destroy of TransformationResult(&v83);
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v83, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
    memset(v88, 0, sizeof(v88));
    v89 = 0;
  }

  static OngoingCallOfferOptions.from(rchRecord:callStateProvider:nlIntent:)(v16, v90, v88);
  v26 = v25;
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v88, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  __swift_destroy_boxed_opaque_existential_1(v90);
  (*(v12 + 8))(v16, v82);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v27 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v27, static Logger.siriPhone);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  v30 = os_log_type_enabled(v28, v29);
  v81 = v4;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&v83 = v32;
    *v31 = 136315138;
    lazy protocol witness table accessor for type OngoingCallOfferOptions and conformance OngoingCallOfferOptions();
    v33 = Set.description.getter();
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v83);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_0, v28, v29, "#OngoingCallConfirmIntentFlow offerType: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_26_0(v31);
  }

  if (specialized Collection<>.isAddOrNewCall.getter(v26))
  {

    outlined init with copy of SignalProviding(v19, &v83);
    v36 = type metadata accessor for OngoingCallCATs(0);
    OUTLINED_FUNCTION_24_20(v36);
    OUTLINED_FUNCTION_46_9();
    v37 = CATWrapper.__allocating_init(options:globals:)();
    v38 = type metadata accessor for OngoingCallCATsSimple(0);
    OUTLINED_FUNCTION_24_20(v38);
    OUTLINED_FUNCTION_46_9();
    v39 = CATWrapperSimple.__allocating_init(options:globals:)();
    v40 = type metadata accessor for PhoneCallDisplayTextCATsSimple(0);
    OUTLINED_FUNCTION_24_20(v40);
    OUTLINED_FUNCTION_46_9();
    v41 = CATWrapperSimple.__allocating_init(options:globals:)();
    v42 = type metadata accessor for ResponseFactory();
    swift_allocObject();
    v43 = ResponseFactory.init()();
    type metadata accessor for AddOrCallPromptForValueStrategy();
    v44 = swift_allocObject();
    *(v44 + 112) = v42;
    *(v44 + 120) = &protocol witness table for ResponseFactory;
    *(v44 + 88) = v43;
    *(v44 + 16) = 2;
    outlined init with take of PhoneCallFeatureFlagProviding(&v83, v44 + 24);
    *(v44 + 64) = v37;
    *(v44 + 72) = v39;
    *(v44 + 80) = v41;
    v45 = v19[4];
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    v46 = *(v45 + 16);

    v47 = OUTLINED_FUNCTION_55();
    v46(v47);
    v48 = v84;
    v49 = v86;
    v50 = __swift_project_boxed_opaque_existential_1(&v83, v84);
    v90[3] = v48;
    v90[4] = v49;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v90);
    (*(*(v48 - 8) + 16))(boxed_opaque_existential_1, v50, v48);
    v52 = OUTLINED_FUNCTION_55();
    __swift_instantiateConcreteTypeFromMangledNameV2(v52, v53);
    swift_allocObject();
    lazy protocol witness table accessor for type OngoingCallConfirmIntentFlow and conformance OngoingCallConfirmIntentFlow(&lazy protocol witness table cache variable for type AddOrCallPromptForValueStrategy and conformance AddOrCallPromptForValueStrategy, type metadata accessor for AddOrCallPromptForValueStrategy, &protocol conformance descriptor for AddOrCallPromptForValueStrategy);
    v54 = PromptForValueFlowAsync.init<A>(strategy:outputPublisher:)();
    __swift_destroy_boxed_opaque_existential_1(&v83);
    *&v83 = v54;
    lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type PromptForValueFlowAsync<OngoingCallConfirmIntentFlow.Action> and conformance PromptForValueFlowAsync<A>, &_s11SiriKitFlow014PromptForValueC5AsyncCy09PhoneCallC14DelegatePlugin07Ongoingi13ConfirmIntentC0C6ActionOGMd, &_s11SiriKitFlow014PromptForValueC5AsyncCy09PhoneCallC14DelegatePlugin07Ongoingi13ConfirmIntentC0C6ActionOGMR, &protocol conformance descriptor for PromptForValueFlowAsync<A>);

    OUTLINED_FUNCTION_21_23();
    static ExecuteResponse.ongoing<A>(next:childCompletion:)();
  }

  v77[0] = a1;
  if (*(v26 + 16))
  {
    Hasher.init(_seed:)();
    String.hash(into:)();
    v56 = Hasher._finalize()();
    v57 = -1 << *(v26 + 32);
    v58 = v56 & ~v57;
    if ((*(v26 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58))
    {
      v59 = ~v57;
      while (!*(*(v26 + 48) + v58) || *(*(v26 + 48) + v58) == 2)
      {
        v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v60)
        {
          goto LABEL_20;
        }

        v58 = (v58 + 1) & v59;
        if (((*(v26 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

LABEL_20:

      v70 = IntentResolutionRecord.intent.getter();
      outlined init with copy of SignalProviding(v19, &v83);
      v71 = type metadata accessor for OngoingCallCATsSimple(0);
      OUTLINED_FUNCTION_24_20(v71);
      OUTLINED_FUNCTION_46_9();
      v72 = CATWrapperSimple.__allocating_init(options:globals:)();
      type metadata accessor for NewCallConfirmationFlowProducer();
      v73 = swift_allocObject();
      v73[13] = &type metadata for LabelTemplatesProvider;
      v73[14] = &protocol witness table for LabelTemplatesProvider;
      v74 = swift_allocObject();
      v73[10] = v74;
      *(v74 + 16) = 0u;
      *(v74 + 32) = 0u;
      v75 = v78;
      v73[2] = v77[0];
      v73[3] = v75;
      v73[4] = v70;
      outlined init with take of PhoneCallFeatureFlagProviding(&v83, (v73 + 5));
      v73[15] = v72;
      swift_unknownObjectRetain();
      v76 = NewCallConfirmationFlowProducer.makeConfirmationFlow()();

      *&v83 = v76;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMR);
      lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type PromptForConfirmationFlowAsync<(), SimpleConfirmationResponseProvider> and conformance PromptForConfirmationFlowAsync<A, B>, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMR, &protocol conformance descriptor for PromptForConfirmationFlowAsync<A, B>);
      OUTLINED_FUNCTION_21_23();
      static ExecuteResponse.ongoing<A>(next:childCompletion:)();
    }
  }

LABEL_18:

  v61 = v79;
  *v79 = 0;
  v62 = enum case for PromptResult.answered<A>(_:);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMd, &_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMR);
  OUTLINED_FUNCTION_23_1();
  (*(v64 + 104))(v61, v62, v63);
  v65 = OUTLINED_FUNCTION_10_42();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v63);
  v68 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_state;
  v69 = v81;
  OUTLINED_FUNCTION_17_3(v81 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_state, &v83);
  outlined assign with take of OngoingCallConfirmIntentFlow.State(v61, v69 + v68);
  swift_endAccess();
  return static ExecuteResponse.ongoing(requireInput:)();
}

uint64_t specialized Collection<>.isAddOrNewCall.getter(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_25;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();
  v3 = a1 + 56;
  v4 = -1 << *(a1 + 32);
  v5 = v2 & ~v4;
  if (((*(a1 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    goto LABEL_25;
  }

  v6 = ~v4;
  while (1)
  {
    v7 = *(*(a1 + 48) + v5);
    if (v7 != 1 && v7 != 2)
    {
      break;
    }

    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      goto LABEL_10;
    }

    v5 = (v5 + 1) & v6;
    if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

LABEL_10:
  if (!*(a1 + 16))
  {
    goto LABEL_25;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(a1 + 32);
  v11 = v9 & ~v10;
  if ((*(v3 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (!*(*(a1 + 48) + v11) || *(*(a1 + 48) + v11) == 1)
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
        goto LABEL_28;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v3 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_27;
  }

LABEL_17:
  if (!*(a1 + 16) || (Hasher.init(_seed:)(), String.hash(into:)(), v14 = Hasher._finalize()(), v15 = -1 << *(a1 + 32), v16 = v14 & ~v15, ((*(v3 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0))
  {
LABEL_25:
    v18 = 0;
    return v18 & 1;
  }

  v17 = ~v15;
  while (!*(*(a1 + 48) + v16) || *(*(a1 + 48) + v16) == 2)
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      v16 = (v16 + 1) & v17;
      if ((*(v3 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        continue;
      }
    }

    return v18 & 1;
  }

LABEL_27:

LABEL_28:
  v18 = 1;
  return v18 & 1;
}

uint64_t closure #1 in OngoingCallConfirmIntentFlow.makeOfferResponse(currentCall:)(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v51 = type metadata accessor for ConfirmationResponse();
  v46 = *(v51 - 8);
  __chkstk_darwin(v51);
  v43 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSg_ADtMd, &_s11SiriKitFlow20ConfirmationResponseOSg_ADtMR);
  __chkstk_darwin(v45);
  v5 = &v41 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  __chkstk_darwin(v6 - 8);
  v44 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v41 - v9;
  __chkstk_darwin(v11);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMd, &_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMR);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v41 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMd, &_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMR);
  v48 = *(v21 - 8);
  v49 = v21;
  v22 = __chkstk_darwin(v21);
  v47 = &v41 - v23;
  v24 = *(v15 + 16);
  v24(v20, a1, v14, v22);
  v25 = (*(v15 + 88))(v20, v14);
  if (v25 != enum case for PromptResult.answered<A>(_:))
  {
    goto LABEL_8;
  }

  v42 = v25;
  (v24)(v17, v20, v14);
  (*(v15 + 96))(v17, v14);
  SimpleConfirmationResponseProvider.confirmationResponse.getter();
  v26 = type metadata accessor for SimpleConfirmationResponseProvider();
  (*(*(v26 - 8) + 8))(v17, v26);
  v27 = v51;
  (*(v46 + 104))(v10, enum case for ConfirmationResponse.confirmed(_:), v51);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v27);
  v28 = *(v45 + 12);
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v13, v5, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v10, &v5[v28], &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  if (__swift_getEnumTagSinglePayload(v5, 1, v27) == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v10, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
    if (__swift_getEnumTagSinglePayload(&v5[v28], 1, v51) == 1)
    {
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v5, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
      v29 = v42;
LABEL_11:
      v31 = v47;
      *v47 = 0;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v30 = v44;
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v5, v44, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  if (__swift_getEnumTagSinglePayload(&v5[v28], 1, v51) == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v10, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
    (*(v46 + 8))(v30, v51);
LABEL_7:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v5, &_s11SiriKitFlow20ConfirmationResponseOSg_ADtMd, &_s11SiriKitFlow20ConfirmationResponseOSg_ADtMR);
    goto LABEL_8;
  }

  v35 = v46;
  v36 = *(v46 + 32);
  v37 = &v5[v28];
  v38 = v43;
  v45 = v5;
  v39 = v51;
  v36(v43, v37, v51);
  lazy protocol witness table accessor for type OngoingCallConfirmIntentFlow and conformance OngoingCallConfirmIntentFlow(&lazy protocol witness table cache variable for type ConfirmationResponse and conformance ConfirmationResponse, &type metadata accessor for ConfirmationResponse, &protocol conformance descriptor for ConfirmationResponse);
  v41 = dispatch thunk of static Equatable.== infix(_:_:)();
  v40 = *(v35 + 8);
  v40(v38, v39);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v10, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v40(v44, v39);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v45, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v29 = v42;
  if (v41)
  {
    goto LABEL_11;
  }

LABEL_8:
  v29 = enum case for PromptResult.cancelled<A>(_:);
  v31 = v47;
LABEL_9:
  v33 = v48;
  v32 = v49;
  (*(v48 + 104))(v31, v29, v49);
  (*(v15 + 8))(v20, v14);
  OngoingCallConfirmIntentFlow.onPromptComplete(_:)(v31);
  return (*(v33 + 8))(v31, v32);
}

uint64_t OngoingCallConfirmIntentFlow.onPromptComplete(_:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_4_45();
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_4();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMd, &_s11SiriKitFlow12PromptResultOy09PhoneCallC14DelegatePlugin07Ongoingg13ConfirmIntentC0C6ActionOGMR);
  OUTLINED_FUNCTION_23_1();
  (*(v8 + 16))(v6, a1, v7);
  v9 = OUTLINED_FUNCTION_10_42();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v7);
  v12 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_state;
  OUTLINED_FUNCTION_17_3(v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_state, v14);
  outlined assign with take of OngoingCallConfirmIntentFlow.State(v6, v1 + v12);
  return swift_endAccess();
}

uint64_t OngoingCallConfirmIntentFlow.deinit()
{
  v1 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_rchRecord;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
  OUTLINED_FUNCTION_23_1();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_sharedGlobals));
  outlined destroy of OngoingCallConfirmIntentFlow.State(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin28OngoingCallConfirmIntentFlow_state);
  return v0;
}

uint64_t OngoingCallConfirmIntentFlow.__deallocating_deinit()
{
  OngoingCallConfirmIntentFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance OngoingCallConfirmIntentFlow(uint64_t a1)
{
  v6 = (*(**v1 + 168) + **(**v1 + 168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for Flow.execute() in conformance CommunalDeviceExecutionFlow;

  return v6(a1);
}

id @nonobjc INAddCallParticipantIntent.init(participants:)(uint64_t a1)
{
  if (a1)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    v2.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [v1 initWithParticipants:v2.super.isa];

  return v3;
}

uint64_t outlined bridged method (ob) of @objc INStartCallIntent.contacts.getter(void *a1)
{
  v2 = [a1 contacts];

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined assign with take of OngoingCallConfirmIntentFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OngoingCallConfirmIntentFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type OngoingCallConfirmIntentFlow.Action and conformance OngoingCallConfirmIntentFlow.Action()
{
  result = lazy protocol witness table cache variable for type OngoingCallConfirmIntentFlow.Action and conformance OngoingCallConfirmIntentFlow.Action;
  if (!lazy protocol witness table cache variable for type OngoingCallConfirmIntentFlow.Action and conformance OngoingCallConfirmIntentFlow.Action)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OngoingCallConfirmIntentFlow.Action and conformance OngoingCallConfirmIntentFlow.Action);
  }

  return result;
}

void type metadata completion function for OngoingCallConfirmIntentFlow(uint64_t a1)
{
  type metadata accessor for IntentResolutionRecord<INStartCallIntent, INStartCallIntentResponse>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for OngoingCallConfirmIntentFlow.State(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for IntentResolutionRecord<INStartCallIntent, INStartCallIntentResponse>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for IntentResolutionRecord<INStartCallIntent, INStartCallIntentResponse>)
  {
    type metadata accessor for CNContactStore(255, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
    type metadata accessor for CNContactStore(255, &lazy cache variable for type metadata for INStartCallIntentResponse, INStartCallIntentResponse_ptr);
    v1 = type metadata accessor for IntentResolutionRecord();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for IntentResolutionRecord<INStartCallIntent, INStartCallIntentResponse>);
    }
  }
}

uint64_t type metadata completion function for OngoingCallConfirmIntentFlow.State(uint64_t a1)
{
  type metadata accessor for PromptResult<OngoingCallConfirmIntentFlow.Action>();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void type metadata accessor for PromptResult<OngoingCallConfirmIntentFlow.Action>()
{
  if (!lazy cache variable for type metadata for PromptResult<OngoingCallConfirmIntentFlow.Action>)
  {
    v0 = type metadata accessor for PromptResult();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PromptResult<OngoingCallConfirmIntentFlow.Action>);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for OngoingCallConfirmIntentFlow.Action(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t lazy protocol witness table accessor for type OngoingCallConfirmIntentFlow and conformance OngoingCallConfirmIntentFlow(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type TUHandle and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type TUHandle and conformance NSObject;
  if (!lazy protocol witness table cache variable for type TUHandle and conformance NSObject)
  {
    type metadata accessor for CNContactStore(255, &lazy cache variable for type metadata for TUHandle, TUHandle_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TUHandle and conformance NSObject);
  }

  return result;
}

uint64_t partial apply for closure #1 in OngoingCallErrorFlowFactory.participantAlreadyActive(person:)()
{
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 80);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in OngoingCallErrorFlowFactory.participantAlreadyActive(person:);

  return closure #1 in OngoingCallErrorFlowFactory.participantAlreadyActive(person:)(v0 + 16, v2);
}

{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t OngoingCallErrorFlowFactory.init(currentCall:sharedGlobals:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for CATOption();
  __chkstk_darwin(v8 - 8);
  OUTLINED_FUNCTION_4();
  *a4 = a1;
  a4[1] = a2;
  outlined init with take of PhoneCallFeatureFlagProviding(a3, (a4 + 2));
  type metadata accessor for AddCallParticipantCATsSimple(0);
  static CATOption.defaultMode.getter();
  result = CATWrapperSimple.__allocating_init(options:globals:)();
  a4[7] = result;
  return result;
}

uint64_t OngoingCallErrorFlowFactory.selfAdd()()
{
  v1 = type metadata accessor for DialogPhase();
  __chkstk_darwin(v1 - 8);
  OUTLINED_FUNCTION_4();
  outlined init with copy of OngoingCallErrorFlowFactory(v0, v8);
  v2 = swift_allocObject();
  v3 = v8[1];
  v2[1] = v8[0];
  v2[2] = v3;
  v4 = v8[3];
  v2[3] = v8[2];
  v2[4] = v4;

  static DialogPhase.error.getter();
  outlined init with copy of SignalProviding(v0 + 16, v8);
  type metadata accessor for DialogOutputFactory(0);
  swift_allocObject();
  v5 = DialogOutputFactory.init(dialog:dialogPhase:sharedGlobals:)();
  v6 = (*(*v5 + 112))(v5);

  return v6;
}

uint64_t OngoingCallErrorFlowFactory.participantAlreadyActive(person:)(void *a1)
{
  v3 = type metadata accessor for DialogPhase();
  __chkstk_darwin(v3 - 8);
  OUTLINED_FUNCTION_4();
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  type metadata accessor for PhonePerson(0);
  v9 = v1[5];
  v10 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v9);
  (*(v10 + 8))(&v18, v9, v10);
  __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
  dispatch thunk of DeviceState.siriLocale.getter();
  v11 = static PhonePerson.make(phonePerson:options:locale:)(a1, 0, v8);
  (*(v5 + 8))(v8, v4);
  __swift_destroy_boxed_opaque_existential_1(&v18);
  outlined init with copy of OngoingCallErrorFlowFactory(v1, &v18);
  v12 = swift_allocObject();
  v13 = v19;
  *(v12 + 16) = v18;
  *(v12 + 32) = v13;
  v14 = v21;
  *(v12 + 48) = v20;
  *(v12 + 64) = v14;
  *(v12 + 80) = v11;

  static DialogPhase.error.getter();
  outlined init with copy of SignalProviding((v1 + 2), &v18);
  type metadata accessor for DialogOutputFactory(0);
  swift_allocObject();
  v15 = DialogOutputFactory.init(dialog:dialogPhase:sharedGlobals:)();
  v16 = (*(*v15 + 112))(v15);

  return v16;
}

uint64_t closure #1 in OngoingCallErrorFlowFactory.selfAdd()()
{
  OUTLINED_FUNCTION_4_46();
  v2 = SPHCall.toPhoneCallRecord()();
  *(v1 + 24) = v2;
  v5 = (*(*v0 + class metadata base offset for AddCallParticipantCATsSimple + 112) + **(*v0 + class metadata base offset for AddCallParticipantCATsSimple + 112));
  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  *v3 = v1;
  v3[1] = closure #1 in OngoingCallErrorFlowFactory.selfAdd();

  return v5(v2);
}

{
  v7 = *v1;
  v2 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;
  *(v7 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(closure #1 in OngoingCallErrorFlowFactory.selfAdd(), 0, 0);
  }

  else
  {

    v4 = OUTLINED_FUNCTION_5_2();

    return v5(v4);
  }
}

{
  OUTLINED_FUNCTION_15();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t partial apply for closure #1 in OngoingCallErrorFlowFactory.selfAdd()()
{
  OUTLINED_FUNCTION_15();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in OngoingCallErrorFlowFactory.selfAdd();

  return closure #1 in OngoingCallErrorFlowFactory.selfAdd()(v0 + 16);
}

uint64_t closure #1 in OngoingCallErrorFlowFactory.participantAlreadyActive(person:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(closure #1 in OngoingCallErrorFlowFactory.participantAlreadyActive(person:), 0, 0);
}

uint64_t closure #1 in OngoingCallErrorFlowFactory.participantAlreadyActive(person:)()
{
  OUTLINED_FUNCTION_4_46();
  v2 = SPHCall.toPhoneCallRecord()();
  v1[4] = v2;
  v6 = (*(*v0 + class metadata base offset for AddCallParticipantCATsSimple + 64) + **(*v0 + class metadata base offset for AddCallParticipantCATsSimple + 64));
  v3 = swift_task_alloc();
  v1[5] = v3;
  *v3 = v1;
  v3[1] = closure #1 in OngoingCallErrorFlowFactory.participantAlreadyActive(person:);
  v4 = v1[3];

  return v6(v4, 0, v2);
}

{
  v7 = *v1;
  v2 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;
  *(v7 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(closure #1 in OngoingCallErrorFlowFactory.participantAlreadyActive(person:), 0, 0);
  }

  else
  {

    v4 = OUTLINED_FUNCTION_5_2();

    return v5(v4);
  }
}

{
  OUTLINED_FUNCTION_15();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static OngoingCallFlowProducers.overrideStartCallProducers(producers:delegate:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriPhone);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "#OngoingCallFlowProducers Setting ongoing call flow producers", v8, 2u);
    OUTLINED_FUNCTION_26_0(v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo17INStartCallIntentCSo0ghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo17INStartCallIntentCSo0ghI8ResponseCGMR);
  v9 = RCHChildFlowProducersAsync.unsupportedValueFlowProducer.getter();
  if (v9)
  {
    v11 = v9;
    v12 = v10;
    outlined init with copy of SignalProviding(a3, v30);
    v13 = swift_allocObject();
    OUTLINED_FUNCTION_3_60(v13, v14, v15, v16);
    *(a1 + 56) = v11;
    *(a1 + 64) = v12;

    OUTLINED_FUNCTION_2_70();
    RCHChildFlowProducersAsync.unsupportedValueFlowProducer.setter();
    outlined init with copy of SignalProviding(a3, v30);
    OUTLINED_FUNCTION_36_4();
    v17 = swift_allocObject();
    OUTLINED_FUNCTION_3_60(v17, v18, v19, v20);
    OUTLINED_FUNCTION_2_70();
    RCHChildFlowProducersAsync.confirmIntentFlowProducer.setter();
    outlined init with copy of SignalProviding(a3, v30);
    OUTLINED_FUNCTION_36_4();
    v21 = swift_allocObject();
    OUTLINED_FUNCTION_3_60(v21, v22, v23, v24);
    OUTLINED_FUNCTION_2_70();
    RCHChildFlowProducersAsync.continueInAppFlowProducer.setter();
    return _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v11, v12);
  }

  else
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000053, 0x800000000045CF80, v30);
      _os_log_impl(&dword_0, v26, v27, "%s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      OUTLINED_FUNCTION_26_0(v29);
      OUTLINED_FUNCTION_26_0(v28);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in static OngoingCallFlowProducers.overrideStartCallProducers(producers:delegate:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t a1, uint64_t a2), uint64_t a5)
{
  v21 = a3;
  v8 = type metadata accessor for ParameterIdentifier();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo17INStartCallIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo17INStartCallIntentCGMR);
  ParameterResolutionRecord.parameter.getter();
  v12 = ParameterIdentifier.name.getter();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  v15._countAndFlagsBits = v12;
  v15._object = v14;
  if (PhoneCallSlotNames.init(rawValue:)(v15).value == PhoneCallFlowDelegatePlugin_PhoneCallSlotNames_contacts && (v16 = ParameterResolutionRecord.result.getter(), v17 = [v16 unsupportedReason], v16, _INStartCallContactUnsupportedReasonForeignEmergencyDisambiguation == v17))
  {
    outlined init with copy of SignalProviding(v21, v22);
    v18 = swift_allocObject();
    outlined init with take of PhoneCallFeatureFlagProviding(v22, v18 + 16);
    a4 = partial apply for specialized closure #1 in static OngoingCallFlowProducers.makeUnsupportedValueOfferFlowProducer<A, B>(sharedGlobals:);
  }

  else
  {
  }

  v19 = a4(a1, a2);

  return v19;
}

uint64_t (*static OngoingCallFlowProducers.makeUnsupportedValueOfferFlowProducer<A, B>(sharedGlobals:)(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  outlined init with copy of SignalProviding(a1, v3);
  OUTLINED_FUNCTION_36_4();
  v1 = swift_allocObject();
  outlined init with take of PhoneCallFeatureFlagProviding(v3, v1 + 16);
  return partial apply for closure #1 in static OngoingCallFlowProducers.makeUnsupportedValueOfferFlowProducer<A, B>(sharedGlobals:);
}

uint64_t closure #2 in static OngoingCallFlowProducers.overrideStartCallProducers(producers:delegate:sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
  v6 = IntentResolutionRecord.intent.getter();
  v7 = IntentResolutionRecord.intentResponse.getter();
  v8 = static EmergencyUtils.requiresEmergencyConfirmation(intent:intentResponse:)(v6, v7);

  outlined init with copy of SignalProviding(a3, v14);
  v9 = swift_allocObject();
  outlined init with take of PhoneCallFeatureFlagProviding(v14, v9 + 16);
  if (v8)
  {
    v10 = partial apply for closure #1 in static OngoingCallFlowProducers.makeEmergencyConfirmIntentOfferFlowProducer(sharedGlobals:);
  }

  else
  {
    v10 = partial apply for closure #1 in static OngoingCallFlowProducers.makeConfirmIntentOfferFlowProducer(sharedGlobals:);
  }

  v11 = v10;

  v12 = v11(a1, a2);
  _sxs5Error_pRi_zRi0_zlySo21DialogExecutionResultCIsegHrzo_SgWOe(v11, v9);

  return v12;
}

uint64_t closure #3 in static OngoingCallFlowProducers.overrideStartCallProducers(producers:delegate:sharedGlobals:)(uint64_t a1, char *a2, void *a3)
{
  v6 = a3[3];
  v7 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v6);
  (*(v7 + 120))(v34, v6, v7);
  v8 = a3[3];
  v9 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v8);
  v10 = (*(v9 + 72))(v8, v9);
  (*(*v10 + 216))(v29);

  if (v30)
  {
    outlined init with copy of PhoneCallNLIntent?(&v31, v32);
    outlined destroy of TransformationResult(v29);
  }

  else
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v29, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMd, &_s27PhoneCallFlowDelegatePlugin20TransformationResultVSgMR);
    memset(v32, 0, sizeof(v32));
    v33 = 0;
  }

  v28 = a2;
  static OngoingCallOfferOptions.from(rchRecord:callStateProvider:nlIntent:)(a2, v34, v32);
  v12 = v11;
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v32, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  __swift_destroy_boxed_opaque_existential_1(v34);
  if (!*(v12 + 16))
  {
    goto LABEL_18;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v13 = Hasher._finalize()();
  v14 = v12 + 56;
  v15 = -1 << *(v12 + 32);
  v16 = v13 & ~v15;
  if ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    while (!*(*(v12 + 48) + v16) || *(*(v12 + 48) + v16) == 1)
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_20;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_19;
  }

LABEL_11:
  if (!*(v12 + 16) || (Hasher.init(_seed:)(), String.hash(into:)(), v19 = Hasher._finalize()(), v20 = -1 << *(v12 + 32), v21 = v19 & ~v20, ((*(v14 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0))
  {
LABEL_18:

    outlined init with copy of SignalProviding(a3, v29);
    v24 = swift_allocObject();
    outlined init with take of PhoneCallFeatureFlagProviding(v29, v24 + 16);
    v25 = partial apply for specialized closure #1 in static CallingIntentContinueInAppFlow.makeProducer(sharedGlobals:);
    goto LABEL_21;
  }

  v22 = ~v20;
  while (!*(*(v12 + 48) + v21) || *(*(v12 + 48) + v21) == 2)
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
      goto LABEL_20;
    }

    v21 = (v21 + 1) & v22;
    if (((*(v14 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

LABEL_19:

LABEL_20:
  outlined init with copy of SignalProviding(a3, v29);
  type metadata accessor for HangUpAndCallHandleIntentStrategy(0);
  swift_allocObject();
  *&v29[0] = HangUpAndCallHandleIntentStrategy.init(sharedGlobals:options:)(v29, v12);
  lazy protocol witness table accessor for type HangUpAndCallHandleIntentStrategy and conformance CallingIntentContinueInAppStrategy<A, B>(&lazy protocol witness table cache variable for type HangUpAndCallHandleIntentStrategy and conformance CallingIntentContinueInAppStrategy<A, B>, type metadata accessor for HangUpAndCallHandleIntentStrategy, &protocol conformance descriptor for CallingIntentContinueInAppStrategy<A, B>);
  v25 = static RCHChildFlowFactoryHelper.makeContinueInAppFlowWithAutomaticPunchOutProducer<A>(strategy:)();

LABEL_21:

  v26 = v25(a1, v28);

  return v26;
}

uint64_t specialized closure #1 in static OngoingCallFlowProducers.makeUnsupportedValueOfferFlowProducer<A, B>(sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CATOption();
  __chkstk_darwin(v5 - 8);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo17INStartCallIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo17INStartCallIntentCGMR);
  v9 = ParameterResolutionRecord.intent.getter();
  v38[2] = v8;
  v10 = ParameterResolutionRecord.result.getter();
  v11 = static EmergencyDuringOngoingCallPromptType.from(intent:intentResolutionResult:)(v9, v10);
  v13 = v12;
  v15 = v14;
  v16 = v14;

  if (v16 == 255)
  {
    v17 = 0;
  }

  else
  {
    v17 = v11;
  }

  if (v16 == 255)
  {
    v18 = 0;
  }

  else
  {
    v18 = v13;
  }

  if (v16 == 255)
  {
    v19 = 0;
  }

  else
  {
    v19 = v15;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.siriPhone);
  outlined copy of EmergencyDuringOngoingCallPromptType(v17, v18, v19);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  outlined consume of EmergencyDuringOngoingCallPromptType(v17, v18, v19);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v38[0] = a2;
    v24 = v23;
    v25 = swift_slowAlloc();
    v39[0] = v25;
    *v24 = 136315138;
    outlined copy of EmergencyDuringOngoingCallPromptType(v17, v18, v19);
    v26 = EmergencyDuringOngoingCallPromptType.description.getter(v17, v18, v19);
    v38[1] = v7;
    v27 = a3;
    v29 = v28;
    outlined consume of EmergencyDuringOngoingCallPromptType(v17, v18, v19);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v29, v39);
    a3 = v27;

    *(v24 + 4) = v30;
    _os_log_impl(&dword_0, v21, v22, "#OngoingCallFlowProducers Emergency during ongoing call - pushing unsupported value offer flow for %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  outlined copy of EmergencyDuringOngoingCallPromptType(v17, v18, v19);
  v31 = ParameterResolutionRecord.intent.getter();
  outlined init with copy of SignalProviding(a3, v39);
  type metadata accessor for PhoneCallCommonCATs(0);
  static CATOption.defaultMode.getter();
  v32 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallCommonCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  v33 = CATWrapper.__allocating_init(options:globals:)();
  v34 = *(*_s27PhoneCallFlowDelegatePlugin022EmergencyDuringOngoingb5OfferC0C19emergencyPromptType14previousIntent13sharedGlobals10commonCats0Q11CatPatternsAcA0fghbkL0O_So8INIntentCAA06SharedP9Providing_pAA0aB10CommonCATsCAA0abX20CATPatternsExecuting_ptcfCTf4nnnnen_nAA0abxZ8ExecutorC_Tt4g5(v17, v18, v19, v31, v39, v32, v33) + 224);
  v35 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
  v39[0] = v34(v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow019AnyUnsupportedValueC0CySo17INStartCallIntentCGMd, &_s11SiriKitFlow019AnyUnsupportedValueC0CySo17INStartCallIntentCGMR);
  lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type AnyUnsupportedValueFlow<INStartCallIntent> and conformance AnyUnsupportedValueFlow<A>, &_s11SiriKitFlow019AnyUnsupportedValueC0CySo17INStartCallIntentCGMd, &_s11SiriKitFlow019AnyUnsupportedValueC0CySo17INStartCallIntentCGMR, &protocol conformance descriptor for AnyUnsupportedValueFlow<A>);
  v36 = Flow.eraseToAnyValueFlow()();

  outlined consume of EmergencyDuringOngoingCallPromptType(v17, v18, v19);

  return v36;
}

{
  v5 = type metadata accessor for CATOption();
  __chkstk_darwin(v5 - 8);
  v7 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo26INAddCallParticipantIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo26INAddCallParticipantIntentCGMR);
  v9 = ParameterResolutionRecord.intent.getter();
  v54[2] = v8;
  v10 = ParameterResolutionRecord.result.getter();
  static EmergencyDuringOngoingCallPromptType.from(intent:intentResolutionResult:)(v9, v10);

  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.siriPhone);
  v12 = OUTLINED_FUNCTION_0_70();
  outlined copy of EmergencyDuringOngoingCallPromptType(v12, v13, v14);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  v17 = OUTLINED_FUNCTION_0_70();
  outlined consume of EmergencyDuringOngoingCallPromptType(v17, v18, v19);
  if (os_log_type_enabled(v15, v16))
  {
    v20 = swift_slowAlloc();
    v54[0] = a2;
    v21 = v20;
    v22 = swift_slowAlloc();
    v55[0] = v22;
    *v21 = 136315138;
    v23 = OUTLINED_FUNCTION_0_70();
    outlined copy of EmergencyDuringOngoingCallPromptType(v23, v24, v25);
    v26 = OUTLINED_FUNCTION_0_70();
    v29 = EmergencyDuringOngoingCallPromptType.description.getter(v26, v27, v28);
    v54[1] = v7;
    v30 = a3;
    v32 = v31;
    v33 = OUTLINED_FUNCTION_0_70();
    outlined consume of EmergencyDuringOngoingCallPromptType(v33, v34, v35);
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v32, v55);
    a3 = v30;

    *(v21 + 4) = v36;
    _os_log_impl(&dword_0, v15, v16, "#OngoingCallFlowProducers Emergency during ongoing call - pushing unsupported value offer flow for %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    OUTLINED_FUNCTION_26_0(v22);
    OUTLINED_FUNCTION_26_0(v21);
  }

  v37 = OUTLINED_FUNCTION_0_70();
  outlined copy of EmergencyDuringOngoingCallPromptType(v37, v38, v39);
  v40 = ParameterResolutionRecord.intent.getter();
  outlined init with copy of SignalProviding(a3, v55);
  type metadata accessor for PhoneCallCommonCATs(0);
  static CATOption.defaultMode.getter();
  v41 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallCommonCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  CATWrapper.__allocating_init(options:globals:)();
  v42 = OUTLINED_FUNCTION_0_70();
  v47 = *(*_s27PhoneCallFlowDelegatePlugin022EmergencyDuringOngoingb5OfferC0C19emergencyPromptType14previousIntent13sharedGlobals10commonCats0Q11CatPatternsAcA0fghbkL0O_So8INIntentCAA06SharedP9Providing_pAA0aB10CommonCATsCAA0abX20CATPatternsExecuting_ptcfCTf4nnnnen_nAA0abxZ8ExecutorC_Tt4g5(v42, v43, v44, v40, v45, v41, v46) + 224);
  v48 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INAddCallParticipantIntent, INAddCallParticipantIntent_ptr);
  v55[0] = v47(v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow019AnyUnsupportedValueC0CySo26INAddCallParticipantIntentCGMd, &_s11SiriKitFlow019AnyUnsupportedValueC0CySo26INAddCallParticipantIntentCGMR);
  lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type AnyUnsupportedValueFlow<INAddCallParticipantIntent> and conformance AnyUnsupportedValueFlow<A>, &_s11SiriKitFlow019AnyUnsupportedValueC0CySo26INAddCallParticipantIntentCGMd, &_s11SiriKitFlow019AnyUnsupportedValueC0CySo26INAddCallParticipantIntentCGMR, &protocol conformance descriptor for AnyUnsupportedValueFlow<A>);
  v49 = Flow.eraseToAnyValueFlow()();

  v50 = OUTLINED_FUNCTION_0_70();
  outlined consume of EmergencyDuringOngoingCallPromptType(v50, v51, v52);

  return v49;
}

uint64_t closure #1 in static OngoingCallFlowProducers.makeUnsupportedValueOfferFlowProducer<A, B>(sharedGlobals:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = type metadata accessor for CATOption();
  __chkstk_darwin(v6 - 8);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + class metadata base offset for RCHChildFlowFactory);
  v10 = type metadata accessor for ParameterResolutionRecord();
  v11 = ParameterResolutionRecord.intent.getter();
  v38 = v10;
  v39 = a2;
  v12 = ParameterResolutionRecord.result.getter();
  v13 = static EmergencyDuringOngoingCallPromptType.from(intent:intentResolutionResult:)(v11, v12);
  v15 = v14;
  v17 = v16;
  v18 = v16;

  if (v18 == 255)
  {
    v13 = 0;
    v15 = 0;
    v17 = 0;
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.siriPhone);
  outlined copy of EmergencyDuringOngoingCallPromptType(v13, v15, v17);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  outlined consume of EmergencyDuringOngoingCallPromptType(v13, v15, v17);
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v40[0] = v23;
    *v22 = 136315138;
    outlined copy of EmergencyDuringOngoingCallPromptType(v13, v15, v17);
    v24 = EmergencyDuringOngoingCallPromptType.description.getter(v13, v15, v17);
    v36[1] = v8;
    v37 = v9;
    v25 = v24;
    v26 = a3;
    v28 = v27;
    outlined consume of EmergencyDuringOngoingCallPromptType(v13, v15, v17);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v28, v40);
    a3 = v26;

    *(v22 + 4) = v29;
    v9 = v37;
    _os_log_impl(&dword_0, v20, v21, "#OngoingCallFlowProducers Emergency during ongoing call - pushing unsupported value offer flow for %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  outlined copy of EmergencyDuringOngoingCallPromptType(v13, v15, v17);
  v30 = ParameterResolutionRecord.intent.getter();
  outlined init with copy of SignalProviding(a3, v40);
  type metadata accessor for PhoneCallCommonCATs(0);
  static CATOption.defaultMode.getter();
  v31 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallCommonCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  v32 = CATWrapper.__allocating_init(options:globals:)();
  v33 = _s27PhoneCallFlowDelegatePlugin022EmergencyDuringOngoingb5OfferC0C19emergencyPromptType14previousIntent13sharedGlobals10commonCats0Q11CatPatternsAcA0fghbkL0O_So8INIntentCAA06SharedP9Providing_pAA0aB10CommonCATsCAA0abX20CATPatternsExecuting_ptcfCTf4nnnnen_nAA0abxZ8ExecutorC_Tt4g5(v13, v15, v17, v30, v40, v31, v32);
  v40[0] = (*(*v33 + 224))(v9);
  type metadata accessor for AnyUnsupportedValueFlow();
  swift_getWitnessTable();
  v34 = Flow.eraseToAnyValueFlow()();

  outlined consume of EmergencyDuringOngoingCallPromptType(v13, v15, v17);

  return v34;
}

uint64_t closure #1 in static OngoingCallFlowProducers.makeEmergencyConfirmIntentOfferFlowProducer(sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for CATOption();
  __chkstk_darwin(v4 - 8);
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.siriPhone);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "#OngoingCallFlowProducers Emergency during ongoing call - pushing confirm intent offer flow", v8, 2u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
  v9 = IntentResolutionRecord.intent.getter();
  v10 = IntentResolutionRecord.intentResponse.getter();
  v11 = IntentResolutionRecord.intent.getter();
  outlined init with copy of SignalProviding(a3, v18);
  type metadata accessor for PhoneCallCommonCATs(0);
  static CATOption.defaultMode.getter();
  v12 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for PhoneCallCommonCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  v13 = CATWrapper.__allocating_init(options:globals:)();
  v14 = *(*_s27PhoneCallFlowDelegatePlugin022EmergencyDuringOngoingb5OfferC0C19emergencyPromptType14previousIntent13sharedGlobals10commonCats0Q11CatPatternsAcA0fghbkL0O_So8INIntentCAA06SharedP9Providing_pAA0aB10CommonCATsCAA0abX20CATPatternsExecuting_ptcfCTf4nnnnen_nAA0abxZ8ExecutorC_Tt4g5(v9, v10, 1, v11, v18, v12, v13) + 216);
  v15 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
  v18[0] = v14(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow016AnyConfirmIntentC0CySo011INStartCallF0CGMd, &_s11SiriKitFlow016AnyConfirmIntentC0CySo011INStartCallF0CGMR);
  lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type AnyConfirmIntentFlow<INStartCallIntent> and conformance AnyConfirmIntentFlow<A>, &_s11SiriKitFlow016AnyConfirmIntentC0CySo011INStartCallF0CGMd, &_s11SiriKitFlow016AnyConfirmIntentC0CySo011INStartCallF0CGMR, &protocol conformance descriptor for AnyConfirmIntentFlow<A>);
  v16 = Flow.eraseToAnyValueFlow()();

  return v16;
}

uint64_t closure #1 in static OngoingCallFlowProducers.makeConfirmIntentOfferFlowProducer(sharedGlobals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16[-1] - v7;
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.siriPhone);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "#OngoingCallFlowProducers Call request during ongoing call - pushing confirm intent offer flow", v12, 2u);
  }

  type metadata accessor for OngoingCallConfirmIntentFlow(0);
  (*(v6 + 16))(v8, a2, v5);
  outlined init with copy of SignalProviding(a3, v16);
  v16[0] = OngoingCallConfirmIntentFlow.__allocating_init(rchRecord:sharedGlobals:)(v8, v16);
  lazy protocol witness table accessor for type HangUpAndCallHandleIntentStrategy and conformance CallingIntentContinueInAppStrategy<A, B>(&lazy protocol witness table cache variable for type OngoingCallConfirmIntentFlow and conformance OngoingCallConfirmIntentFlow, type metadata accessor for OngoingCallConfirmIntentFlow, &protocol conformance descriptor for OngoingCallConfirmIntentFlow);
  v13 = Flow.eraseToAnyValueFlow()();

  return v13;
}

uint64_t _s27PhoneCallFlowDelegatePlugin022EmergencyDuringOngoingb5OfferC0C19emergencyPromptType14previousIntent13sharedGlobals10commonCats0Q11CatPatternsAcA0fghbkL0O_So8INIntentCAA06SharedP9Providing_pAA0aB10CommonCATsCAA0abX20CATPatternsExecuting_ptcfCTf4nnnnen_nAA0abxZ8ExecutorC_Tt4g5(void *a1, void *a2, char a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for EmergencyDuringOngoingCallOfferFlow.State(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ConfirmationResponse();
  __swift_storeEnumTagSinglePayload(v16, 1, 2, v17);
  outlined init with copy of SignalProviding(a5, v40);
  type metadata accessor for EmergencyDuringOngoingCallOfferFlow(0);
  v18 = swift_allocObject();
  v39[3] = type metadata accessor for PhoneCallCommonCATPatternsExecutor(0);
  v39[4] = &protocol witness table for PhoneCallCommonCATPatternsExecutor;
  v39[0] = a7;
  outlined init with copy of EmergencyDuringOngoingCallOfferFlow.State(v16, v18 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin35EmergencyDuringOngoingCallOfferFlow_state);
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  outlined init with copy of SignalProviding(v40, v18 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin35EmergencyDuringOngoingCallOfferFlow_sharedGlobals);
  *(v18 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin35EmergencyDuringOngoingCallOfferFlow_commonCats) = a6;
  outlined init with copy of SignalProviding(v39, v18 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin35EmergencyDuringOngoingCallOfferFlow_commonCatPatterns);
  outlined copy of EmergencyDuringOngoingCallPromptType(a1, a2, a3);
  v19 = one-time initialization token for siriPhone;
  v37 = a4;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.siriPhone);
  outlined copy of EmergencyDuringOngoingCallPromptType(a1, a2, a3);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  outlined consume of EmergencyDuringOngoingCallPromptType(a1, a2, a3);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v35 = a6;
    v25 = v24;
    v38 = v24;
    *v23 = 136315138;
    outlined copy of EmergencyDuringOngoingCallPromptType(a1, a2, a3);
    v26 = EmergencyDuringOngoingCallPromptType.description.getter(a1, a2, a3);
    v36 = v16;
    v27 = v26;
    v34 = a5;
    v29 = v28;
    outlined consume of EmergencyDuringOngoingCallPromptType(a1, a2, a3);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v38);

    *(v23 + 4) = v30;
    _os_log_impl(&dword_0, v21, v22, "#EmergencyDuringOngoingCallOfferFlow initialized with promptType: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);

    outlined consume of EmergencyDuringOngoingCallPromptType(a1, a2, a3);
    __swift_destroy_boxed_opaque_existential_1(v34);
    __swift_destroy_boxed_opaque_existential_1(v40);
    v31 = v36;
  }

  else
  {

    outlined consume of EmergencyDuringOngoingCallPromptType(a1, a2, a3);
    __swift_destroy_boxed_opaque_existential_1(a5);
    __swift_destroy_boxed_opaque_existential_1(v40);
    v31 = v16;
  }

  outlined destroy of EmergencyDuringOngoingCallOfferFlow.State(v31);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return v18;
}

uint64_t lazy protocol witness table accessor for type HangUpAndCallHandleIntentStrategy and conformance CallingIntentContinueInAppStrategy<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for specialized closure #1 in static OngoingCallFlowProducers.makeUnsupportedValueOfferFlowProducer<A, B>(sharedGlobals:)(uint64_t a1, uint64_t a2)
{
  return specialized closure #1 in static OngoingCallFlowProducers.makeUnsupportedValueOfferFlowProducer<A, B>(sharedGlobals:)(a1, a2, v2 + 16);
}

{
  return specialized closure #1 in static OngoingCallFlowProducers.makeUnsupportedValueOfferFlowProducer<A, B>(sharedGlobals:)(a1, a2, v2 + 16);
}

void static OngoingCallOfferOptions.from(rchRecord:callStateProvider:nlIntent:)(char *a1, void *a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo011INStartCallD0CSo0ghD8ResponseCGMR);
  v6 = IntentResolutionRecord.intent.getter();
  IntentResolutionRecord.intentResponse.getter();
  v7 = OUTLINED_FUNCTION_40_0();
  v8 = static EmergencyUtils.requiresEmergencyConfirmation(intent:intentResponse:)(v7, a1);

  if (v8)
  {
    OUTLINED_FUNCTION_11_8();
    if (!v9)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.siriPhone);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_10_0(v12))
    {
      v13 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v13);
      OUTLINED_FUNCTION_33(&dword_0, v14, v15, "#OngoingCallOfferOptions Emergency call only offers endAndNewCall");
      OUTLINED_FUNCTION_12_3();
    }

    v16 = &outlined read-only object #3 of static OngoingCallOfferOptions.from(rchRecord:callStateProvider:nlIntent:);
LABEL_23:

    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC27PhoneCallFlowDelegatePlugin07OngoingF12OfferOptionsO_Tt0g5(v16);
    return;
  }

  OUTLINED_FUNCTION_15_33();
  v17 = IntentResolutionRecord.app.getter();
  v18 = App.isFirstParty()();

  if (!v18)
  {
    OUTLINED_FUNCTION_11_8();
    if (!v9)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.siriPhone);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_10_0(v32))
    {
      v33 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v33);
      OUTLINED_FUNCTION_33(&dword_0, v34, v35, "#OngoingCallOfferOptions 3P call only offers endAndNewCall");
      OUTLINED_FUNCTION_12_3();
    }

    v16 = &outlined read-only object #2 of static OngoingCallOfferOptions.from(rchRecord:callStateProvider:nlIntent:);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_15_33();
  v19 = IntentResolutionRecord.intent.getter();
  v20 = outlined bridged method (ob) of @objc INStartCallIntent.contacts.getter(v19);
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
  }

  specialized Array.count.getter(v21);
  OUTLINED_FUNCTION_40_0();

  if (v17 > 1 || (OUTLINED_FUNCTION_15_33(), v22 = IntentResolutionRecord.intent.getter(), v23 = INStartCallIntent.isGroupCall()(), v22, v23))
  {
    OUTLINED_FUNCTION_11_8();
    if (!v9)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.siriPhone);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_10_0(v26))
    {
      v27 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v27);
      OUTLINED_FUNCTION_33(&dword_0, v28, v29, "#OngoingCallOfferOptions Group call only offers endAndNewCall");
      OUTLINED_FUNCTION_12_3();
    }

    v16 = &outlined read-only object #1 of static OngoingCallOfferOptions.from(rchRecord:callStateProvider:nlIntent:);
    goto LABEL_23;
  }

  v36 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v37 = OUTLINED_FUNCTION_40_0();
  if (!v38(v37, v36))
  {
    OUTLINED_FUNCTION_11_8();
    if (!v9)
    {
      OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logger.siriPhone);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_10_0(v46))
    {
      v47 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v47);
      OUTLINED_FUNCTION_33(&dword_0, v48, v49, "#OngoingCallOfferOptions There's no ongoing call, but OngoingCall Flows are in use. Classify as .holdAndNewCall.");
      OUTLINED_FUNCTION_12_3();
    }

    v16 = &outlined read-only object #0 of static OngoingCallOfferOptions.from(rchRecord:callStateProvider:nlIntent:);
    goto LABEL_23;
  }

  v40 = v39;
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a3, v86, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  v41 = v87;
  if (v87)
  {
    v42 = v88;
    __swift_project_boxed_opaque_existential_1(v86, v87);
    v43 = (*(v42 + 32))(v41, v42);
    __swift_destroy_boxed_opaque_existential_1(v86);
  }

  else
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v86, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
    v43 = 2;
  }

  OUTLINED_FUNCTION_15_33();
  v50 = IntentResolutionRecord.intent.getter();
  [v50 preferredCallProvider];

  ObjectType = swift_getObjectType();
  if (((*(v40 + 32))(ObjectType, v40) & 1) != 0 && v43 == 2)
  {
    LOBYTE(v84) = 0;
  }

  else if ((SPHCall.isFTAudio.getter() & 1) != 0 && (v43 == 2) != ((v43 & 1) == 0))
  {
    LOBYTE(v84) = 0;
  }

  else
  {
    v84 = SPHCall.isFTVideo.getter() & v43 ^ 1;
  }

  v51 = a2[3];
  v52 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v51);
  (*(v52 + 40))(v86, v51, v52);
  v53 = v87;
  v54 = v88;
  __swift_project_boxed_opaque_existential_1(v86, v87);
  v55 = (*(v54 + 24))(v53, v54);
  __swift_destroy_boxed_opaque_existential_1(v86);
  OUTLINED_FUNCTION_11_8();
  if (!v9)
  {
    OUTLINED_FUNCTION_6_2(&one-time initialization token for siriPhone);
  }

  v56 = type metadata accessor for Logger();
  __swift_project_value_buffer(v56, static Logger.siriPhone);
  OUTLINED_FUNCTION_40_0();
  swift_unknownObjectRetain();
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v83 = v55;
    v60 = swift_slowAlloc();
    v86[0] = v60;
    *v59 = 67109634;
    *(v59 + 4) = SPHCall.isFTAudio.getter() & 1;
    *(v59 + 8) = 1024;
    *(v59 + 10) = SPHCall.isFTVideo.getter() & 1;
    swift_unknownObjectRelease();
    *(v59 + 14) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB6AVModeOSgMd, &_s27PhoneCallFlowDelegatePlugin0aB6AVModeOSgMR);
    v61 = String.init<A>(describing:)();
    v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, v86);

    *(v59 + 16) = v63;
    _os_log_impl(&dword_0, v57, v58, "#OngoingCallOfferOptions isFTAudio: %{BOOL}d isFTVideo %{BOOL}d requestedAVMode: %s", v59, 0x18u);
    __swift_destroy_boxed_opaque_existential_1(v60);
    v55 = v83;
  }

  else
  {

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_23_17();
  OUTLINED_FUNCTION_22_17();
  v65 = v64 | ~v55 | v84;
  v66 = _swiftEmptySetSingleton;
  if ((v65 & 1) == 0)
  {
    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._finalize()();
    OUTLINED_FUNCTION_5_53();
    v69 = v68 & ~v67;
    if ((*(&_swiftEmptySetSingleton[7] + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69))
    {
      v70 = ~v67;
      while (1)
      {
        v71 = *(_swiftEmptySetSingleton[6] + v69);
        if (v71 != 1 && v71 != 2)
        {
          break;
        }

        v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v72)
        {
          goto LABEL_55;
        }

        v69 = (v69 + 1) & v70;
        if (((*(&_swiftEmptySetSingleton[7] + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      v66 = _swiftEmptySetSingleton;
    }

    else
    {
LABEL_54:
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_12_39();
      specialized _NativeSet.insertNew(_:at:isUnique:)(0, v69, v73);
      v66 = v86[0];
    }

LABEL_55:
    OUTLINED_FUNCTION_23_17();
    OUTLINED_FUNCTION_22_17();
  }

  if (((*(v40 + 192))(ObjectType, v40) & 1) == 0 || (OUTLINED_FUNCTION_15_33(), v74 = IntentResolutionRecord.intent.getter(), a1 = [v74 callCapability], v74, a1 != &dword_0 + 1))
  {
    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._finalize()();
    OUTLINED_FUNCTION_5_53();
    OUTLINED_FUNCTION_16_33();
    if (v80)
    {
      while (!a1[v66[6]] || a1[v66[6]] == 2)
      {
        v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v81)
        {
          goto LABEL_74;
        }

        OUTLINED_FUNCTION_9_42();
        if ((v82 & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_73;
    }

LABEL_69:
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_12_39();
    v79 = 1;
LABEL_70:
    specialized _NativeSet.insertNew(_:at:isUnique:)(v79, a1, v78);
    swift_unknownObjectRelease();
    return;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  OUTLINED_FUNCTION_5_53();
  OUTLINED_FUNCTION_16_33();
  if ((v75 & 1) == 0)
  {
LABEL_63:
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_12_39();
    v79 = 2;
    goto LABEL_70;
  }

  while (!*(v66[6] + 1) || *(v66[6] + 1) == 1)
  {
    v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v76)
    {
      goto LABEL_74;
    }

    OUTLINED_FUNCTION_9_42();
    if ((v77 & 1) == 0)
    {
      goto LABEL_63;
    }
  }

LABEL_73:

LABEL_74:
  swift_unknownObjectRelease();
}

uint64_t Collection<>.isAddOrNewCall.getter(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type OngoingCallOfferOptions and conformance OngoingCallOfferOptions();
  v4 = Sequence<>.contains(_:)();
  v5 = 0;
  if (v4)
  {
    v5 = Collection<>.isAnyNewCall.getter(a1, a2);
  }

  return v5 & 1;
}

uint64_t Collection<>.isAnyNewCall.getter(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type OngoingCallOfferOptions and conformance OngoingCallOfferOptions();
  v2 = Sequence<>.contains(_:)();
  v3 = 1;
  if ((v2 & 1) == 0)
  {
    v3 = Sequence<>.contains(_:)();
  }

  return v3 & 1;
}

uint64_t OngoingCallOfferOptions.description.getter(char a1)
{
  if (!a1)
  {
    return 6579297;
  }

  if (a1 == 1)
  {
    return 0x654E646E41646E65;
  }

  return 0x4E646E41646C6F68;
}

PhoneCallFlowDelegatePlugin::OngoingCallOfferOptions_optional __swiftcall OngoingCallOfferOptions.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3._object = object;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of OngoingCallOfferOptions.init(rawValue:), v3);
  OUTLINED_FUNCTION_40_0();

  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

PhoneCallFlowDelegatePlugin::OngoingCallOfferOptions_optional protocol witness for RawRepresentable.init(rawValue:) in conformance OngoingCallOfferOptions@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::OngoingCallOfferOptions_optional *a2@<X8>)
{
  result.value = OngoingCallOfferOptions.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance OngoingCallOfferOptions@<X0>(uint64_t *a1@<X8>)
{
  result = OngoingCallOfferOptions.description.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_71();
  if (!(!v9 & v8) || (v5 & 1) == 0)
  {
    if (v5)
    {
      specialized _NativeSet.resize(capacity:)();
      goto LABEL_11;
    }

    if (v7 <= v6)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
LABEL_11:
      v14 = *v2;
      type metadata accessor for App();
      OUTLINED_FUNCTION_3_61();
      lazy protocol witness table accessor for type App and conformance App(v15, v16, &protocol conformance descriptor for App);
      dispatch thunk of Hashable._rawHashValue(seed:)();
      OUTLINED_FUNCTION_5_53();
      v19 = ~v18;
      while (1)
      {
        a2 = v17 & v19;
        OUTLINED_FUNCTION_19_25();
        if (((*(v14 + 56 + v20) >> a2) & 1) == 0)
        {
          goto LABEL_8;
        }

        OUTLINED_FUNCTION_3_61();
        lazy protocol witness table accessor for type App and conformance App(&lazy protocol witness table cache variable for type App and conformance App, v21, &protocol conformance descriptor for App);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          goto LABEL_16;
        }

        v17 = a2 + 1;
      }
    }

    specialized _NativeSet.copy()();
  }

LABEL_8:
  OUTLINED_FUNCTION_1_73(*v2);
  *(v10 + 8 * a2) = a1;
  OUTLINED_FUNCTION_17_24();
  if (v13)
  {
    __break(1u);
LABEL_16:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v11 + 16) = v12;
  }
}

{
  OUTLINED_FUNCTION_2_71();
  if (!(!v9 & v8) || (v5 & 1) == 0)
  {
    if (v5)
    {
      specialized _NativeSet.resize(capacity:)();
      goto LABEL_11;
    }

    if (v7 <= v6)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
LABEL_11:
      v14 = *v2;
      v15 = static Hasher._hash(seed:_:)();
      v16 = ~(-1 << *(v14 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v14 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          goto LABEL_8;
        }

        if (*(*(v14 + 48) + 8 * a2) == a1)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }
    }

    specialized _NativeSet.copy()();
  }

LABEL_8:
  OUTLINED_FUNCTION_7_43(*v2);
  *(*(v10 + 48) + 8 * a2) = a1;
  OUTLINED_FUNCTION_17_24();
  if (v13)
  {
    __break(1u);
LABEL_16:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v11 + 16) = v12;
  }
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_29;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v7 > v6)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_29;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();

  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      if (*(*(v8 + 48) + a2))
      {
        if (*(*(v8 + 48) + a2) == 1)
        {
          v11 = 0x654E646E41646E65;
          v12 = 0xED00006C6C614377;
        }

        else
        {
          v11 = 0x4E646E41646C6F68;
          v12 = 0xEE006C6C61437765;
        }
      }

      else
      {
        v12 = 0xE300000000000000;
        v11 = 6579297;
      }

      if (v5)
      {
        v13 = v5 == 1 ? 0x654E646E41646E65 : 0x4E646E41646C6F68;
        v14 = v5 == 1 ? 0xED00006C6C614377 : 0xEE006C6C61437765;
      }

      else
      {
        v14 = 0xE300000000000000;
        v13 = 6579297;
      }

      if (v11 == v13 && v12 == v14)
      {
        goto LABEL_32;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        goto LABEL_33;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_29:
  v17 = *v21;
  *(*v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v5;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_32:

LABEL_33:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues();
  OUTLINED_FUNCTION_7();
  v9 = v8;
  __chkstk_darwin(v10);
  v52 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMR);
  OUTLINED_FUNCTION_23_1();
  __chkstk_darwin(v13);
  v15 = &v45 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  OUTLINED_FUNCTION_7();
  v51 = v16;
  __chkstk_darwin(v17);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v45 - v21;
  OUTLINED_FUNCTION_2_71();
  v47 = v3;
  if (!(!v33 & v26) || (a3 & 1) == 0)
  {
    if (a3)
    {
      v46 = v23;
      specialized _NativeSet.resize(capacity:)(v24 + 1);
    }

    else
    {
      if (v25 > v24)
      {
        specialized _NativeSet.copy()();
        goto LABEL_22;
      }

      v46 = v23;
      specialized _NativeSet.copyAndResize(capacity:)(v24 + 1);
    }

    v27 = *v3;
    Hasher.init(_seed:)();
    specialized Optional<A>.hash(into:)(v59);
    Hasher._finalize()();
    v57 = v27 + 56;
    v58 = v27;
    OUTLINED_FUNCTION_6_6();
    a2 = v29 & ~v28;
    if ((*(v30 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v56 = ~v28;
      v49 = (v9 + 32);
      v50 = v12;
      v31 = *(v51 + 72);
      v54 = (v9 + 8);
      v55 = v31;
      v48 = a1;
      while (1)
      {
        OUTLINED_FUNCTION_27_18(*(v58 + 48) + v55 * a2, v22);
        v32 = *(v12 + 48);
        OUTLINED_FUNCTION_27_18(v22, v15);
        OUTLINED_FUNCTION_27_18(a1, &v15[v32]);
        OUTLINED_FUNCTION_6_1(v15);
        if (v33)
        {
          break;
        }

        OUTLINED_FUNCTION_27_18(v15, v19);
        OUTLINED_FUNCTION_6_1(&v15[v32]);
        if (v33)
        {
          OUTLINED_FUNCTION_25_18(v22);
          (*v54)(v19, v7);
LABEL_19:
          outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v15, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSg_AFtMR);
          goto LABEL_21;
        }

        v34 = v52;
        (*v49)(v52, &v15[v32], v7);
        lazy protocol witness table accessor for type App and conformance App(&lazy protocol witness table cache variable for type UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues and conformance UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, &type metadata accessor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues, &protocol conformance descriptor for UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues);
        v53 = dispatch thunk of static Equatable.== infix(_:_:)();
        v35 = *v54;
        v36 = v34;
        v12 = v50;
        (*v54)(v36, v7);
        OUTLINED_FUNCTION_25_18(v22);
        v35(v19, v7);
        a1 = v48;
        OUTLINED_FUNCTION_25_18(v15);
        if (v53)
        {
          goto LABEL_26;
        }

LABEL_21:
        a2 = (a2 + 1) & v56;
        OUTLINED_FUNCTION_19_25();
        if (((*(v38 + v37) >> a2) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      OUTLINED_FUNCTION_25_18(v22);
      OUTLINED_FUNCTION_6_1(&v15[v32]);
      if (v33)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }
  }

LABEL_22:
  v39 = a1;
  v40 = *v47;
  *(*v47 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = outlined init with take of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(v39, *(v40 + 48) + *(v51 + 72) * a2);
  v42 = *(v40 + 16);
  v43 = __OFADD__(v42, 1);
  v44 = v42 + 1;
  if (v43)
  {
    __break(1u);
LABEL_25:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v15, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
LABEL_26:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v40 + 16) = v44;
  }

  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)()
{
  OUTLINED_FUNCTION_2_71();
  if (!(!v5 & v4) || (v1 & 1) == 0)
  {
    if (v1)
    {
      specialized _NativeSet.resize(capacity:)();
      goto LABEL_9;
    }

    if (v3 <= v2)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v2 + 1);
LABEL_9:
      v6 = *v0;
      Hasher.init(_seed:)();
      Hasher._combine(_:)(0);
      Hasher._finalize()();
      OUTLINED_FUNCTION_6_6();
      if ((*(v6 + (((v7 & ~v8) >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> (v7 & ~v8)))
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    specialized _NativeSet.copy()();
  }

LABEL_10:
  OUTLINED_FUNCTION_7_43(*v0);
  OUTLINED_FUNCTION_17_24();
  if (!v11)
  {
    *(v9 + 16) = v10;
    return;
  }

  __break(1u);
LABEL_13:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17SiriAppResolution0D0CGMd, &_ss11_SetStorageCy17SiriAppResolution0D0CGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSSgGMd, &_ss11_SetStorageCySSSgGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy27PhoneCallFlowDelegatePlugin07OngoingD12OfferOptionsOGMd, &_ss11_SetStorageCy27PhoneCallFlowDelegatePlugin07OngoingD12OfferOptionsOGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy12SiriOntology025UsoEntity_applePhoneCall_hI9AttributeC13DefinedValuesOSgGMd, &_ss11_SetStorageCy12SiriOntology025UsoEntity_applePhoneCall_hI9AttributeC13DefinedValuesOSgGMR);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v23 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    v15 = *(v6 + 56);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v16 = v14 & v15;
    v17 = (v13 + 63) >> 6;
    if ((v14 & v15) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(*(v6 + 48) + v21, v5, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMd, &_s12SiriOntology025UsoEntity_applePhoneCall_fG9AttributeC13DefinedValuesOSgMR);
        result = outlined init with take of UsoEntity_applePhoneCall_PhoneCallAttribute.DefinedValues?(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
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

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy27PhoneCallFlowDelegatePlugin23SharedNeedsValueContextC0iJ4CaseOGMd, &_ss11_SetStorageCy27PhoneCallFlowDelegatePlugin23SharedNeedsValueContextC0iJ4CaseOGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    v12 = (v9 + 63) >> 6;
    if (v11)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_17;
      }

      v11 = *(v2 + 56 + 8 * v13);
      ++v8;
      if (v11)
      {
        v8 = v13;
        do
        {
LABEL_15:
          v11 &= v11 - 1;
        }

        while (v11);
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v4;
  }

  return result;
}