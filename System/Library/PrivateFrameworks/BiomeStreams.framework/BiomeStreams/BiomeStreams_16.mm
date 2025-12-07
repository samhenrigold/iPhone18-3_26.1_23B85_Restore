uint64_t closure #1 in static PgQuery_Constraint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v103 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v4);
  v6 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v104 = &v96 - v9;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v102, v10);
  v107 = &v96 - v11;
  Node = type metadata accessor for PgQuery_Node(0);
  v13 = *(Node - 8);
  v15 = MEMORY[0x1EEE9AC00](Node, v14);
  v105 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v96 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v24 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = &v96 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  MEMORY[0x1EEE9AC00](v30, v31);
  v34 = &v96 - v33;
  v35 = *(a1 + 16);
  v36 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    switch(v36)
    {
      case 1:
        if (v35 != 1)
        {
          goto LABEL_50;
        }

        goto LABEL_6;
      case 2:
        if (v35 != 2)
        {
          goto LABEL_50;
        }

        goto LABEL_6;
      case 3:
        if (v35 != 3)
        {
          goto LABEL_50;
        }

        goto LABEL_6;
      case 4:
        if (v35 != 4)
        {
          goto LABEL_50;
        }

        goto LABEL_6;
      case 5:
        if (v35 != 5)
        {
          goto LABEL_50;
        }

        goto LABEL_6;
      case 6:
        if (v35 != 6)
        {
          goto LABEL_50;
        }

        goto LABEL_6;
      case 7:
        if (v35 != 7)
        {
          goto LABEL_50;
        }

        goto LABEL_6;
      case 8:
        if (v35 != 8)
        {
          goto LABEL_50;
        }

        goto LABEL_6;
      case 9:
        if (v35 != 9)
        {
          goto LABEL_50;
        }

        goto LABEL_6;
      case 10:
        if (v35 != 10)
        {
          goto LABEL_50;
        }

        goto LABEL_6;
      case 11:
        if (v35 != 11)
        {
          goto LABEL_50;
        }

        goto LABEL_6;
      case 12:
        if (v35 != 12)
        {
          goto LABEL_50;
        }

        goto LABEL_6;
      case 13:
        if (v35 != 13)
        {
          goto LABEL_50;
        }

        goto LABEL_6;
      case 14:
        if (v35 != 14)
        {
          goto LABEL_50;
        }

        goto LABEL_6;
      default:
        if (!v35)
        {
          goto LABEL_6;
        }

        goto LABEL_50;
    }
  }

  if (v35 != v36)
  {
    goto LABEL_50;
  }

LABEL_6:
  v101 = v32;
  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(a1 + 48) == *(a2 + 48) && *(a1 + 49) == *(a2 + 49) && *(a1 + 52) == *(a2 + 52) && *(a1 + 56) == *(a2 + 56))
  {
    v99 = v6;
    v100 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rawExpr;
    v37 = *(v28 + 48);
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rawExpr, v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v38 = a2 + v100;
    v100 = v37;
    outlined init with copy of PgQuery_Alias?(v38, &v34[v37], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v41 = *(v13 + 48);
    v40 = v13 + 48;
    v39 = v41;
    if (v41(v34, 1, Node) == 1)
    {
      v97 = v39;
      v98 = v40;
      v42 = v39(&v34[v100], 1, Node);

      if (v42 == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        goto LABEL_55;
      }
    }

    else
    {
      outlined init with copy of PgQuery_Alias?(v34, v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v39(&v34[v100], 1, Node) != 1)
      {
        v97 = v39;
        v98 = v40;
        outlined init with take of PgQuery_OidList(&v34[v100], v19, type metadata accessor for PgQuery_Node);
        v48 = *(Node + 20);
        v49 = *&v27[v48];
        v50 = *&v19[v48];

        if (v49 == v50 || (, , LODWORD(v100) = closure #1 in static PgQuery_Node.== infix(_:_:)(v49, v50), , , (v100 & 1) != 0))
        {
          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
          v51 = dispatch thunk of static Equatable.== infix(_:_:)();
          outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
          outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
          _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          if ((v51 & 1) == 0)
          {
            goto LABEL_49;
          }

LABEL_55:
          if ((*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cookedExpr) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cookedExpr) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cookedExpr + 8) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cookedExpr + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_49;
          }

          if ((*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generatedWhen) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generatedWhen) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generatedWhen + 8) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__generatedWhen + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_49;
          }

          v52 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__keys);
          v53 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__keys);

          NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v52, v53);

          if ((NodeV_Tt1g5 & 1) == 0)
          {
            goto LABEL_49;
          }

          v55 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__including);
          v56 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__including);

          v57 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v55, v56);

          if ((v57 & 1) == 0)
          {
            goto LABEL_49;
          }

          v58 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclusions);
          v59 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclusions);

          v60 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v58, v59);

          if ((v60 & 1) == 0)
          {
            goto LABEL_49;
          }

          v61 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);
          v62 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options);

          v63 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v61, v62);

          if ((v63 & 1) == 0)
          {
            goto LABEL_49;
          }

          if ((*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexname) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexname) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexname + 8) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexname + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_49;
          }

          if ((*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexspace) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexspace) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexspace + 8) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexspace + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resetDefaultTblspc) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resetDefaultTblspc) || (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod) || *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8) != *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_49;
          }

          v64 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
          v65 = *(v28 + 48);
          v66 = v101;
          outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v101, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          outlined init with copy of PgQuery_Alias?(a2 + v64, v66 + v65, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          if (v97(v66, 1, Node) == 1)
          {
            if (v97(v101 + v65, 1, Node) == 1)
            {
              _s10Foundation4UUIDVSgWOhTm_0(v101, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_85:
              v75 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__pktable;
              v76 = *(v102 + 48);
              v77 = v107;
              outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__pktable, v107, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
              outlined init with copy of PgQuery_Alias?(a2 + v75, v77 + v76, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
              v78 = *(v103 + 48);
              if (v78(v77, 1, RangeVar) == 1)
              {
                if (v78(v107 + v76, 1, RangeVar) == 1)
                {
                  _s10Foundation4UUIDVSgWOhTm_0(v107, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
LABEL_92:
                  v85 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkAttrs);
                  v86 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkAttrs);

                  v87 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v85, v86);

                  if (v87)
                  {
                    v88 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__pkAttrs);
                    v89 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__pkAttrs);

                    v90 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v88, v89);

                    if (v90 & 1) != 0 && (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkMatchtype) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkMatchtype) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkMatchtype + 8) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkMatchtype + 8) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkUpdAction) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkUpdAction) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkUpdAction + 8) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkUpdAction + 8) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkDelAction) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkDelAction) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkDelAction + 8) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fkDelAction + 8) || (_stringCompareWithSmolCheck(_:_:expecting:)()))
                    {
                      v91 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldConpfeqop);
                      v92 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldConpfeqop);

                      v93 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v91, v92);

                      if ((v93 & 1) != 0 && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldPktableOid) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__oldPktableOid) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__skipValidation) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__skipValidation))
                      {
                        v94 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initiallyValid);

                        v95 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_ConstraintP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__initiallyValid);

                        v46 = v94 ^ v95 ^ 1;
                        return v46 & 1;
                      }
                    }
                  }

                  goto LABEL_49;
                }
              }

              else
              {
                v79 = v107;
                outlined init with copy of PgQuery_Alias?(v107, v104, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
                if (v78(v79 + v76, 1, RangeVar) != 1)
                {
                  v80 = v107;
                  v81 = v107 + v76;
                  v82 = v99;
                  outlined init with take of PgQuery_OidList(v81, v99, type metadata accessor for PgQuery_RangeVar);
                  v83 = v104;
                  v84 = specialized static PgQuery_RangeVar.== infix(_:_:)(v104, v82);
                  outlined destroy of PgQuery_OidList(v82, type metadata accessor for PgQuery_RangeVar);
                  outlined destroy of PgQuery_OidList(v83, type metadata accessor for PgQuery_RangeVar);
                  _s10Foundation4UUIDVSgWOhTm_0(v80, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
                  if (v84)
                  {
                    goto LABEL_92;
                  }

LABEL_49:

                  goto LABEL_50;
                }

                outlined destroy of PgQuery_OidList(v104, type metadata accessor for PgQuery_RangeVar);
              }

              v43 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
              v44 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
              v45 = v107;
LABEL_48:
              _s10Foundation4UUIDVSgWOhTm_0(v45, v43, v44);
              goto LABEL_49;
            }
          }

          else
          {
            v67 = v101;
            outlined init with copy of PgQuery_Alias?(v101, v24, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            if (v97(v67 + v65, 1, Node) != 1)
            {
              v68 = v105;
              outlined init with take of PgQuery_OidList(v101 + v65, v105, type metadata accessor for PgQuery_Node);
              v69 = *(Node + 20);
              v70 = *&v24[v69];
              v71 = *(v68 + v69);
              if (v70 != v71)
              {

                v72 = closure #1 in static PgQuery_Node.== infix(_:_:)(v70, v71);

                if (!v72)
                {
                  outlined destroy of PgQuery_OidList(v105, type metadata accessor for PgQuery_Node);
                  outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
                  v43 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
                  v44 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
                  v45 = v101;
                  goto LABEL_48;
                }
              }

              type metadata accessor for UnknownStorage();
              lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
              v73 = v105;
              v74 = dispatch thunk of static Equatable.== infix(_:_:)();
              outlined destroy of PgQuery_OidList(v73, type metadata accessor for PgQuery_Node);
              outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
              _s10Foundation4UUIDVSgWOhTm_0(v101, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
              if ((v74 & 1) == 0)
              {
                goto LABEL_49;
              }

              goto LABEL_85;
            }

            outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
          }

          v43 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
          v44 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
          v45 = v101;
          goto LABEL_48;
        }

        outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
        v43 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v44 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_47:
        v45 = v34;
        goto LABEL_48;
      }

      outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
    }

    v43 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v44 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_47;
  }

LABEL_50:
  v46 = 0;
  return v46 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_Constraint(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Constraint and conformance PgQuery_Constraint, type metadata accessor for PgQuery_Constraint, &protocol conformance descriptor for PgQuery_Constraint);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_Constraint(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Constraint and conformance PgQuery_Constraint, type metadata accessor for PgQuery_Constraint, &protocol conformance descriptor for PgQuery_Constraint);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_Constraint(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Constraint and conformance PgQuery_Constraint, type metadata accessor for PgQuery_Constraint, &protocol conformance descriptor for PgQuery_Constraint);

  return Message.hash(into:)();
}

uint64_t PgQuery_DefElem._StorageClass.__deallocating_deinit()
{

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_DefElem._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_DefElem.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v6 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1 || result == 2)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
        case 4:
          lazy protocol witness table accessor for type PgQuery_DefElemAction and conformance PgQuery_DefElemAction();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        case 5:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          break;
      }
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_DefElem.traverse<A>(visitor:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v20 - v8;
  Node = type metadata accessor for PgQuery_Node(0);
  v10 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = a1[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v15 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v4))
  {
    v17 = a1[5];
    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = a1[4] & 0xFFFFFFFFFFFFLL;
    }

    if (!v18 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v4))
    {
      outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if ((*(v10 + 48))(v9, 1, Node) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        outlined init with take of PgQuery_OidList(v9, v13, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
        if (v4)
        {
          return result;
        }
      }

      if (!*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defaction) || (v19 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defaction + 8), v20 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defaction), v21 = v19, lazy protocol witness table accessor for type PgQuery_DefElemAction and conformance PgQuery_DefElemAction(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
      {
        result = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
        if (result)
        {
          return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_DefElem.== infix(_:_:)(void *a1, void *a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v34 - v15;
  if (*(a1 + 1) != *(a2 + 1) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v35 = v8;
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  v18 = *(v13 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, Node) == 1)
  {
    v20 = v19(&v16[v18], 1, Node);

    if (v20 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v19(&v16[v18], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
LABEL_11:
    v21 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v22 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_12:
    _s10Foundation4UUIDVSgWOhTm_0(v16, v21, v22);
    goto LABEL_13;
  }

  v24 = v35;
  outlined init with take of PgQuery_OidList(&v16[v18], v35, type metadata accessor for PgQuery_Node);
  v25 = *(Node + 20);
  v26 = *&v12[v25];
  v27 = *(v24 + v25);

  if (v26 != v27)
  {

    v28 = closure #1 in static PgQuery_Node.== infix(_:_:)(v26, v27);

    if (!v28)
    {
      outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
      v21 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v22 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_12;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((v29 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_18:
  v30 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defaction);
  v31 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defaction);
  if (*(a2 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defaction + 8) == 1)
  {
    if (v31 <= 1)
    {
      if (v31)
      {
        if (v30 == 1)
        {
          goto LABEL_25;
        }
      }

      else if (!v30)
      {
        goto LABEL_25;
      }
    }

    else if (v31 == 2)
    {
      if (v30 == 2)
      {
        goto LABEL_25;
      }
    }

    else if (v31 == 3)
    {
      if (v30 == 3)
      {
        goto LABEL_25;
      }
    }

    else if (v30 == 4)
    {
      goto LABEL_25;
    }

    goto LABEL_13;
  }

  if (v30 != v31)
  {
LABEL_13:

    return 0;
  }

LABEL_25:
  v32 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v33 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v32 == v33;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_DefElem(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DefElem and conformance PgQuery_DefElem, type metadata accessor for PgQuery_DefElem, &protocol conformance descriptor for PgQuery_DefElem);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_DefElem(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DefElem and conformance PgQuery_DefElem, type metadata accessor for PgQuery_DefElem, &protocol conformance descriptor for PgQuery_DefElem);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_DefElem(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DefElem and conformance PgQuery_DefElem, type metadata accessor for PgQuery_DefElem, &protocol conformance descriptor for PgQuery_DefElem);

  return Message.hash(into:)();
}

uint64_t PgQuery_RangeTblEntry._StorageClass.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 28) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablesample;
  TableSampleClause = type metadata accessor for PgQuery_TableSampleClause(0);
  (*(*(TableSampleClause - 8) + 56))(v0 + v1, 1, 1, TableSampleClause);
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subquery;
  Query = type metadata accessor for PgQuery_Query(0);
  (*(*(Query - 8) + 56))(v0 + v3, 1, 1, Query);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__securityBarrier) = 0;
  v5 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__jointype;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinmergedcols) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinaliasvars) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinleftcols) = v6;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinrightcols) = v6;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__functions) = v6;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcordinality) = 0;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablefunc;
  TableFunc = type metadata accessor for PgQuery_TableFunc(0);
  (*(*(TableFunc - 8) + 56))(v0 + v7, 1, 1, TableFunc);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__valuesLists) = v6;
  v9 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctename);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctelevelsup) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selfReference) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypes) = v6;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypmods) = v6;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colcollations) = v6;
  v10 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__enrname);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__enrtuples) = 0;
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias;
  Alias = type metadata accessor for PgQuery_Alias(0);
  v13 = *(*(Alias - 8) + 56);
  v13(v0 + v11, 1, 1, Alias);
  v13(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__eref, 1, 1, Alias);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lateral) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inh) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inFromCl) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__requiredPerms) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__checkAsUser) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selectedCols) = v6;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__insertedCols) = v6;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__updatedCols) = v6;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__extraUpdatedCols) = v6;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__securityQuals) = v6;
  return v0;
}

uint64_t PgQuery_RangeTblEntry._StorageClass.init(copying:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 28) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablesample;
  v31 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablesample;
  TableSampleClause = type metadata accessor for PgQuery_TableSampleClause(0);
  (*(*(TableSampleClause - 8) + 56))(v1 + v3, 1, 1, TableSampleClause);
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subquery;
  v29 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subquery;
  Query = type metadata accessor for PgQuery_Query(0);
  (*(*(Query - 8) + 56))(v1 + v5, 1, 1, Query);
  v27 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__securityBarrier;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__securityBarrier) = 0;
  v7 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__jointype;
  *v7 = 0;
  *(v7 + 8) = 1;
  v28 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinmergedcols;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinmergedcols) = 0;
  v26 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinaliasvars;
  v8 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinaliasvars) = MEMORY[0x1E69E7CC0];
  v30 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinleftcols;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinleftcols) = v8;
  v32 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinrightcols;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinrightcols) = v8;
  v34 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__functions;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__functions) = v8;
  v36 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcordinality;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcordinality) = 0;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablefunc;
  v35 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablefunc;
  TableFunc = type metadata accessor for PgQuery_TableFunc(0);
  (*(*(TableFunc - 8) + 56))(v1 + v9, 1, 1, TableFunc);
  v33 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__valuesLists;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__valuesLists) = v8;
  v11 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctename);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctelevelsup;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctelevelsup) = 0;
  v38 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selfReference;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selfReference) = 0;
  v37 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypes;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypes) = v8;
  v40 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypmods;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypmods) = v8;
  v41 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colcollations;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colcollations) = v8;
  v12 = (v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__enrname);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v50 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__enrtuples;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__enrtuples) = 0;
  v13 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias;
  v49 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias;
  Alias = type metadata accessor for PgQuery_Alias(0);
  v15 = *(*(Alias - 8) + 56);
  v15(v1 + v13, 1, 1, Alias);
  v48 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__eref;
  v15(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__eref, 1, 1, Alias);
  v47 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lateral;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lateral) = 0;
  v46 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inh;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inh) = 0;
  v45 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inFromCl;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inFromCl) = 0;
  v44 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__requiredPerms;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__requiredPerms) = 0;
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__checkAsUser;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__checkAsUser) = 0;
  v42 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selectedCols;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selectedCols) = v8;
  v16 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__insertedCols;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__insertedCols) = v8;
  v51 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__updatedCols;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__updatedCols) = v8;
  v52 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__extraUpdatedCols;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__extraUpdatedCols) = v8;
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__securityQuals;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__securityQuals) = v8;
  v18 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v18;
  *(v1 + 28) = *(a1 + 28);
  v19 = *(a1 + 40);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 40) = v19;
  *(v1 + 48) = *(a1 + 48);
  v20 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablesample;

  outlined assign with copy of PgQuery_Node?(a1 + v20, v1 + v31, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subquery, v1 + v29, &_s14BiomeSQLParser08PgQuery_D0VSgMd, &_s14BiomeSQLParser08PgQuery_D0VSgMR);
  *(v1 + v27) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__securityBarrier);
  v21 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__jointype + 8);
  *v7 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__jointype);
  *(v7 + 8) = v21;
  *(v1 + v28) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinmergedcols);
  *(v1 + v26) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinaliasvars);

  *(v1 + v30) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinleftcols);

  *(v1 + v32) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinrightcols);

  *(v1 + v34) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__functions);

  *(v1 + v36) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcordinality);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablefunc, v1 + v35, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMd, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMR);
  *(v1 + v33) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__valuesLists);

  v22 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctename + 8);
  *v11 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctename);
  v11[1] = v22;

  *(v1 + v39) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctelevelsup);
  *(v1 + v38) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selfReference);
  *(v1 + v37) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypes);

  *(v1 + v40) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypmods);

  *(v1 + v41) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colcollations);

  v23 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__enrname + 8);
  *v12 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__enrname);
  v12[1] = v23;

  *(v1 + v50) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__enrtuples);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias, v1 + v49, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__eref, v1 + v48, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  *(v1 + v47) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lateral);
  *(v1 + v46) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inh);
  *(v1 + v45) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inFromCl);
  *(v1 + v44) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__requiredPerms);
  *(v1 + v43) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__checkAsUser);
  *(v1 + v42) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selectedCols);

  *(v1 + v16) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__insertedCols);

  *(v1 + v51) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__updatedCols);

  *(v1 + v52) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__extraUpdatedCols);

  v24 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__securityQuals);

  *(v1 + v17) = v24;

  return v1;
}

uint64_t PgQuery_RangeTblEntry._StorageClass.deinit()
{

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablesample, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subquery, &_s14BiomeSQLParser08PgQuery_D0VSgMd, &_s14BiomeSQLParser08PgQuery_D0VSgMR);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablefunc, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMd, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMR);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__eref, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);

  return v0;
}

uint64_t PgQuery_TableFunc._StorageClass.__deallocating_deinit(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

void type metadata completion function for PgQuery_RangeTblEntry._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_TableSampleClause?, type metadata accessor for PgQuery_TableSampleClause, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Query?, type metadata accessor for PgQuery_Query, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_TableFunc?, type metadata accessor for PgQuery_TableFunc, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Alias?, type metadata accessor for PgQuery_Alias, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t closure #1 in PgQuery_RangeTblEntry.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__extraUpdatedCols;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    v7 = v11;
    while ((v6 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          v9 = v7;
          v10 = v4;
          lazy protocol witness table accessor for type PgQuery_RTEKind and conformance PgQuery_RTEKind();
          goto LABEL_20;
        case 2:
          v9 = v7;
          goto LABEL_40;
        case 3:
          v9 = v7;
          goto LABEL_35;
        case 4:
          v9 = v7;
          goto LABEL_29;
        case 5:
          v8 = v4;
          type metadata accessor for PgQuery_TableSampleClause(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TableSampleClause and conformance PgQuery_TableSampleClause, type metadata accessor for PgQuery_TableSampleClause, &protocol conformance descriptor for PgQuery_TableSampleClause);
          goto LABEL_5;
        case 6:
          v8 = v4;
          type metadata accessor for PgQuery_Query(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Query and conformance PgQuery_Query, type metadata accessor for PgQuery_Query, &protocol conformance descriptor for PgQuery_Query);
          goto LABEL_5;
        case 7:
          v9 = v7;
          goto LABEL_42;
        case 8:
          v9 = v7;
          v10 = v4;
          lazy protocol witness table accessor for type PgQuery_JoinType and conformance PgQuery_JoinType();
LABEL_20:
          v4 = v10;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        case 9:
          v9 = v7;
LABEL_29:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          break;
        case 10:
        case 11:
        case 12:
        case 13:
        case 16:
        case 20:
        case 21:
        case 22:
        case 36:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_6;
        case 14:
          v9 = v7;
          goto LABEL_42;
        case 15:
          v8 = v4;
          type metadata accessor for PgQuery_TableFunc(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TableFunc and conformance PgQuery_TableFunc, type metadata accessor for PgQuery_TableFunc, &protocol conformance descriptor for PgQuery_TableFunc);
          goto LABEL_5;
        case 17:
          v9 = v7;
          goto LABEL_35;
        case 18:
          v9 = v7;
          goto LABEL_40;
        case 19:
          v9 = v7;
          goto LABEL_42;
        case 23:
          v9 = v7;
LABEL_35:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 24:
          v9 = v7;
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          break;
        case 25:
        case 26:
          v8 = v4;
          type metadata accessor for PgQuery_Alias(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Alias and conformance PgQuery_Alias, type metadata accessor for PgQuery_Alias, &protocol conformance descriptor for PgQuery_Alias);
LABEL_5:
          v4 = v8;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_6:
          v9 = v11;
          break;
        case 27:
          v9 = v7;
          goto LABEL_42;
        case 28:
          v9 = v7;
          goto LABEL_42;
        case 29:
          v9 = v7;
LABEL_42:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 30:
          v9 = v7;
          goto LABEL_40;
        case 31:
          v9 = v7;
LABEL_40:
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 32:
          v9 = v7;
          goto LABEL_33;
        case 33:
          v9 = v7;
          goto LABEL_33;
        case 34:
          v9 = v7;
          goto LABEL_33;
        case 35:
          v9 = v7;
LABEL_33:
          dispatch thunk of Decoder.decodeRepeatedUInt64Field(value:)();
          break;
        default:
          v9 = v7;
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
      v7 = v9;
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_RangeTblEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v65 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v66 = &v61 - v11;
  Alias = type metadata accessor for PgQuery_Alias(0);
  v63 = *(Alias - 8);
  v13 = MEMORY[0x1EEE9AC00](Alias, v12);
  v62 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v64 = &v61 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_TableFuncVSgMd, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v69 = &v61 - v19;
  TableFunc = type metadata accessor for PgQuery_TableFunc(0);
  v68 = *(TableFunc - 8);
  MEMORY[0x1EEE9AC00](TableFunc, v20);
  v70 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser08PgQuery_D0VSgMd, &_s14BiomeSQLParser08PgQuery_D0VSgMR);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v73 = &v61 - v24;
  Query = type metadata accessor for PgQuery_Query(0);
  v72 = *(Query - 8);
  MEMORY[0x1EEE9AC00](Query, v25);
  v77 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMR);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v61 - v29;
  TableSampleClause = type metadata accessor for PgQuery_TableSampleClause(0);
  v32 = *(TableSampleClause - 8);
  MEMORY[0x1EEE9AC00](TableSampleClause, v33);
  v35 = &v61 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v36 = *(a1 + 24);
    v75 = *(a1 + 16);
    v76 = v36;
    lazy protocol witness table accessor for type PgQuery_RTEKind and conformance PgQuery_RTEKind();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    if (!*(a1 + 28))
    {
      goto LABEL_7;
    }
  }

  else if (!*(a1 + 28))
  {
    goto LABEL_7;
  }

  result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  if (v4)
  {
    return result;
  }

LABEL_7:
  v38 = *(a1 + 32);
  v39 = *(a1 + 40);
  v61 = a1;
  v40 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v40 = v38 & 0xFFFFFFFFFFFFLL;
  }

  if (v40)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
    }
  }

  if (*(v61 + 48))
  {
    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v41 = 0;
  }

  else
  {
    v41 = v4;
  }

  v42 = v61;
  outlined init with copy of PgQuery_Alias?(v61 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablesample, v30, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMR);
  if ((*(v32 + 48))(v30, 1, TableSampleClause) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v30, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v30, v35, type metadata accessor for PgQuery_TableSampleClause);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TableSampleClause and conformance PgQuery_TableSampleClause, type metadata accessor for PgQuery_TableSampleClause, &protocol conformance descriptor for PgQuery_TableSampleClause);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    if (v41)
    {
      v43 = type metadata accessor for PgQuery_TableSampleClause;
      v44 = v35;
      return outlined destroy of PgQuery_OidList(v44, v43);
    }

    outlined destroy of PgQuery_OidList(v35, type metadata accessor for PgQuery_TableSampleClause);
  }

  v45 = v73;
  outlined init with copy of PgQuery_Alias?(v42 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subquery, v73, &_s14BiomeSQLParser08PgQuery_D0VSgMd, &_s14BiomeSQLParser08PgQuery_D0VSgMR);
  v46 = (*(v72 + 48))(v45, 1, Query);
  v47 = v77;
  if (v46 == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v45, &_s14BiomeSQLParser08PgQuery_D0VSgMd, &_s14BiomeSQLParser08PgQuery_D0VSgMR);
    goto LABEL_28;
  }

  outlined init with take of PgQuery_OidList(v45, v77, type metadata accessor for PgQuery_Query);
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Query and conformance PgQuery_Query, type metadata accessor for PgQuery_Query, &protocol conformance descriptor for PgQuery_Query);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  if (v41)
  {
    v43 = type metadata accessor for PgQuery_Query;
    v44 = v47;
    return outlined destroy of PgQuery_OidList(v44, v43);
  }

  outlined destroy of PgQuery_OidList(v47, type metadata accessor for PgQuery_Query);
LABEL_28:
  if (*(v42 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__securityBarrier) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v41)
    {
      return result;
    }

    v41 = 0;
  }

  if (*(v42 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__jointype))
  {
    v48 = *(v42 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__jointype + 8);
    v75 = *(v42 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__jointype);
    v76 = v48;
    lazy protocol witness table accessor for type PgQuery_JoinType and conformance PgQuery_JoinType();
    v49 = v41;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v41)
    {
      return result;
    }
  }

  else
  {
    v49 = v41;
  }

  v50 = TableFunc;
  if (*(v42 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinmergedcols))
  {
    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    if (v49)
    {
      return result;
    }
  }

  if (*(*(v42 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinaliasvars) + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v49)
    {
    }
  }

  if (*(*(v42 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinleftcols) + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v49)
    {
    }
  }

  if (!*(*(v42 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinrightcols) + 16))
  {
    goto LABEL_46;
  }

  type metadata accessor for PgQuery_Node(0);
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

  dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  if (v49)
  {
  }

LABEL_46:
  if (*(*(v42 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__functions) + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v49)
    {
    }
  }

  v51 = v70;
  if (*(v42 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcordinality) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v49)
    {
      return result;
    }
  }

  v52 = v69;
  outlined init with copy of PgQuery_Alias?(v42 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablefunc, v69, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMd, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMR);
  if ((*(v68 + 48))(v52, 1, v50) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v52, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMd, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v52, v51, type metadata accessor for PgQuery_TableFunc);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TableFunc and conformance PgQuery_TableFunc, type metadata accessor for PgQuery_TableFunc, &protocol conformance descriptor for PgQuery_TableFunc);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    if (v49)
    {
      return outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_TableFunc);
    }

    outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_TableFunc);
  }

  if (*(*(v42 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__valuesLists) + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v49)
    {
    }
  }

  v53 = *(v42 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctename + 8);
  v54 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v54 = *(v42 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctename) & 0xFFFFFFFFFFFFLL;
  }

  if (v54)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v49)
    {
    }
  }

  if (*(v42 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctelevelsup))
  {
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v49)
    {
      return result;
    }
  }

  if (*(v42 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selfReference) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v49)
    {
      return result;
    }
  }

  if (*(*(v42 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypes) + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v49)
    {
    }
  }

  if (*(*(v42 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypmods) + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v49)
    {
    }
  }

  if (!*(*(v61 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colcollations) + 16))
  {
    goto LABEL_81;
  }

  type metadata accessor for PgQuery_Node(0);
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

  dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
  if (v49)
  {
  }

LABEL_81:
  v55 = *(v61 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__enrname + 8);
  v56 = HIBYTE(v55) & 0xF;
  if ((v55 & 0x2000000000000000) == 0)
  {
    v56 = *(v61 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__enrname) & 0xFFFFFFFFFFFFLL;
  }

  if (v56)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v49)
    {
    }
  }

  if (*(v61 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__enrtuples) == 0.0 || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v49))
  {
    v57 = v66;
    outlined init with copy of PgQuery_Alias?(v61 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias, v66, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
    v58 = *(v63 + 48);
    if (v58(v57, 1, Alias) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v66, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
    }

    else
    {
      outlined init with take of PgQuery_OidList(v66, v64, type metadata accessor for PgQuery_Alias);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Alias and conformance PgQuery_Alias, type metadata accessor for PgQuery_Alias, &protocol conformance descriptor for PgQuery_Alias);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      if (v49)
      {
        v59 = v64;
        return outlined destroy of PgQuery_OidList(v59, type metadata accessor for PgQuery_Alias);
      }

      outlined destroy of PgQuery_OidList(v64, type metadata accessor for PgQuery_Alias);
    }

    v60 = v65;
    outlined init with copy of PgQuery_Alias?(v61 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__eref, v65, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
    if (v58(v60, 1, Alias) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v65, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
      goto LABEL_102;
    }

    outlined init with take of PgQuery_OidList(v65, v62, type metadata accessor for PgQuery_Alias);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Alias and conformance PgQuery_Alias, type metadata accessor for PgQuery_Alias, &protocol conformance descriptor for PgQuery_Alias);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    if (!v49)
    {
      outlined destroy of PgQuery_OidList(v62, type metadata accessor for PgQuery_Alias);
LABEL_102:
      if (*(v61 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lateral) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v49))
      {
        if (*(v61 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inh) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v49))
        {
          if (*(v61 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inFromCl) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v49))
          {
            if (!*(v61 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__requiredPerms) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v49))
            {
              result = *(v61 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__checkAsUser);
              if (!result || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v49))
              {
                if (*(*(v61 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selectedCols) + 16))
                {

                  dispatch thunk of Visitor.visitPackedUInt64Field(value:fieldNumber:)();
                  if (v49)
                  {
                  }
                }

                if (*(*(v61 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__insertedCols) + 16))
                {

                  dispatch thunk of Visitor.visitPackedUInt64Field(value:fieldNumber:)();
                  if (v49)
                  {
                  }
                }

                if (*(*(v61 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__updatedCols) + 16))
                {

                  dispatch thunk of Visitor.visitPackedUInt64Field(value:fieldNumber:)();
                  if (v49)
                  {
                  }
                }

                if (*(*(v61 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__extraUpdatedCols) + 16))
                {

                  dispatch thunk of Visitor.visitPackedUInt64Field(value:fieldNumber:)();
                  if (v49)
                  {
                  }
                }

                if (*(*(v61 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__securityQuals) + 16))
                {
                  type metadata accessor for PgQuery_Node(0);
                  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

                  dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
                }
              }
            }
          }
        }
      }

      return result;
    }

    v59 = v62;
    return outlined destroy of PgQuery_OidList(v59, type metadata accessor for PgQuery_Alias);
  }

  return result;
}

uint64_t closure #1 in static PgQuery_RangeTblEntry.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Alias = type metadata accessor for PgQuery_Alias(0);
  v153 = *(Alias - 8);
  v154 = Alias;
  v6 = MEMORY[0x1EEE9AC00](Alias, v5);
  v150 = (&v142 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6, v8);
  v147 = (&v142 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v148 = (&v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12, v14);
  v146 = (&v142 - v15);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMd, &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMR);
  v17 = MEMORY[0x1EEE9AC00](v152, v16);
  v149 = &v142 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v151 = &v142 - v20;
  TableFunc = type metadata accessor for PgQuery_TableFunc(0);
  v157 = *(TableFunc - 8);
  MEMORY[0x1EEE9AC00](TableFunc, v21);
  v155 = &v142 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_TableFuncVSgMd, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMR);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v158 = &v142 - v25;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_TableFuncVSg_ADtMd, &_s14BiomeSQLParser17PgQuery_TableFuncVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v156, v26);
  v160 = &v142 - v27;
  Query = type metadata accessor for PgQuery_Query(0);
  v163 = *(Query - 8);
  MEMORY[0x1EEE9AC00](Query, v29);
  v161 = &v142 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser08PgQuery_D0VSgMd, &_s14BiomeSQLParser08PgQuery_D0VSgMR);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v162 = &v142 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser08PgQuery_D0VSg_ADtMd, &_s14BiomeSQLParser08PgQuery_D0VSg_ADtMR);
  MEMORY[0x1EEE9AC00](v34, v35);
  v164 = &v142 - v36;
  TableSampleClause = type metadata accessor for PgQuery_TableSampleClause(0);
  v38 = *(TableSampleClause - 8);
  MEMORY[0x1EEE9AC00](TableSampleClause, v39);
  v41 = &v142 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMR);
  MEMORY[0x1EEE9AC00](v42 - 8, v43);
  v45 = &v142 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_TableSampleClauseVSg_ADtMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = &v142 - v48;
  v50 = *(a1 + 16);
  v51 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v51 > 4)
    {
      if (v51 <= 6)
      {
        if (v51 == 5)
        {
          if (v50 != 5)
          {
            goto LABEL_67;
          }
        }

        else if (v50 != 6)
        {
          goto LABEL_67;
        }
      }

      else if (v51 == 7)
      {
        if (v50 != 7)
        {
          goto LABEL_67;
        }
      }

      else if (v51 == 8)
      {
        if (v50 != 8)
        {
          goto LABEL_67;
        }
      }

      else if (v50 != 9)
      {
        goto LABEL_67;
      }

      goto LABEL_9;
    }

    if (v51 > 1)
    {
      if (v51 == 2)
      {
        if (v50 != 2)
        {
          goto LABEL_67;
        }
      }

      else if (v51 == 3)
      {
        if (v50 != 3)
        {
          goto LABEL_67;
        }
      }

      else if (v50 != 4)
      {
        goto LABEL_67;
      }

LABEL_9:
      if (*(a1 + 28) != *(a2 + 28) || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 48) != *(a2 + 48))
      {
        goto LABEL_67;
      }

      v145 = a2;
      v52 = a1;
      v53 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablesample;
      v54 = *(v46 + 48);
      v144 = v52;
      outlined init with copy of PgQuery_Alias?(v52 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablesample, v49, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMR);
      v55 = v145 + v53;
      v56 = v145;
      v143 = v54;
      outlined init with copy of PgQuery_Alias?(v55, &v49[v54], &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMR);
      v57 = *(v38 + 48);
      if (v57(v49, 1, TableSampleClause) == 1)
      {
        v58 = v57(&v49[v143], 1, TableSampleClause);

        v59 = v56;
        if (v58 == 1)
        {
          _s10Foundation4UUIDVSgWOhTm_0(v49, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMR);
          goto LABEL_46;
        }
      }

      else
      {
        outlined init with copy of PgQuery_Alias?(v49, v45, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMR);
        v60 = v143;
        if (v57(&v49[v143], 1, TableSampleClause) != 1)
        {
          outlined init with take of PgQuery_OidList(&v49[v60], v41, type metadata accessor for PgQuery_TableSampleClause);
          v61 = *(TableSampleClause + 20);
          v62 = *&v45[v61];
          v63 = *&v41[v61];

          if (v62 != v63)
          {

            v64 = closure #1 in static PgQuery_TableSampleClause.== infix(_:_:)(v62, v63);

            if ((v64 & 1) == 0)
            {
              outlined destroy of PgQuery_OidList(v41, type metadata accessor for PgQuery_TableSampleClause);
              outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_TableSampleClause);
              _s10Foundation4UUIDVSgWOhTm_0(v49, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMR);
              goto LABEL_66;
            }
          }

          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
          v65 = dispatch thunk of static Equatable.== infix(_:_:)();
          outlined destroy of PgQuery_OidList(v41, type metadata accessor for PgQuery_TableSampleClause);
          outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_TableSampleClause);
          _s10Foundation4UUIDVSgWOhTm_0(v49, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSgMR);
          v59 = v56;
          if ((v65 & 1) == 0)
          {
LABEL_66:

            goto LABEL_67;
          }

LABEL_46:
          v66 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subquery;
          v67 = *(v34 + 48);
          v68 = v164;
          outlined init with copy of PgQuery_Alias?(v144 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subquery, v164, &_s14BiomeSQLParser08PgQuery_D0VSgMd, &_s14BiomeSQLParser08PgQuery_D0VSgMR);
          outlined init with copy of PgQuery_Alias?(v59 + v66, v68 + v67, &_s14BiomeSQLParser08PgQuery_D0VSgMd, &_s14BiomeSQLParser08PgQuery_D0VSgMR);
          v69 = *(v163 + 48);
          if (v69(v68, 1, Query) == 1)
          {
            if (v69(v68 + v67, 1, Query) == 1)
            {
              _s10Foundation4UUIDVSgWOhTm_0(v68, &_s14BiomeSQLParser08PgQuery_D0VSgMd, &_s14BiomeSQLParser08PgQuery_D0VSgMR);
              goto LABEL_56;
            }
          }

          else
          {
            v70 = v162;
            outlined init with copy of PgQuery_Alias?(v68, v162, &_s14BiomeSQLParser08PgQuery_D0VSgMd, &_s14BiomeSQLParser08PgQuery_D0VSgMR);
            if (v69(v68 + v67, 1, Query) != 1)
            {
              v73 = v68 + v67;
              v74 = v161;
              outlined init with take of PgQuery_OidList(v73, v161, type metadata accessor for PgQuery_Query);
              v75 = *(Query + 20);
              v76 = *(v70 + v75);
              v77 = *(v74 + v75);
              if (v76 == v77 || (, , v78 = closure #1 in static PgQuery_Query.== infix(_:_:)(v76, v77), , , v78))
              {
                type metadata accessor for UnknownStorage();
                lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
                v79 = dispatch thunk of static Equatable.== infix(_:_:)();
                outlined destroy of PgQuery_OidList(v74, type metadata accessor for PgQuery_Query);
                outlined destroy of PgQuery_OidList(v70, type metadata accessor for PgQuery_Query);
                _s10Foundation4UUIDVSgWOhTm_0(v68, &_s14BiomeSQLParser08PgQuery_D0VSgMd, &_s14BiomeSQLParser08PgQuery_D0VSgMR);
                if ((v79 & 1) == 0)
                {
                  goto LABEL_66;
                }

LABEL_56:
                v80 = v144;
                if (*(v144 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__securityBarrier) != *(v59 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__securityBarrier))
                {
                  goto LABEL_66;
                }

                if (!specialized == infix<A>(_:_:)(*(v144 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__jointype), *(v144 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__jointype + 8), *(v59 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__jointype)))
                {
                  goto LABEL_66;
                }

                if (*(v80 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinmergedcols) != *(v59 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinmergedcols))
                {
                  goto LABEL_66;
                }

                v81 = *(v80 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinaliasvars);
                v82 = *(v59 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinaliasvars);

                NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v81, v82);

                if ((NodeV_Tt1g5 & 1) == 0)
                {
                  goto LABEL_66;
                }

                v84 = *(v80 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinleftcols);
                v85 = *(v59 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinleftcols);

                v86 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v84, v85);

                if ((v86 & 1) == 0)
                {
                  goto LABEL_66;
                }

                v87 = *(v80 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinrightcols);
                v88 = *(v59 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__joinrightcols);

                v89 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v87, v88);

                if ((v89 & 1) == 0)
                {
                  goto LABEL_66;
                }

                v90 = *(v80 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__functions);
                v91 = *(v59 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__functions);

                v92 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v90, v91);

                if ((v92 & 1) == 0 || *(v80 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcordinality) != *(v59 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcordinality))
                {
                  goto LABEL_66;
                }

                v95 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablefunc;
                v96 = *(v156 + 48);
                v97 = v160;
                outlined init with copy of PgQuery_Alias?(v80 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tablefunc, v160, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMd, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMR);
                outlined init with copy of PgQuery_Alias?(v59 + v95, v97 + v96, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMd, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMR);
                v98 = *(v157 + 48);
                if (v98(v97, 1, TableFunc) == 1)
                {
                  if (v98(v160 + v96, 1, TableFunc) == 1)
                  {
                    _s10Foundation4UUIDVSgWOhTm_0(v160, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMd, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMR);
LABEL_81:
                    v111 = *(v80 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__valuesLists);
                    v112 = *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__valuesLists);

                    v113 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v111, v112);

                    if ((v113 & 1) == 0 || (*(v80 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctename) != *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctename) || *(v80 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctename + 8) != *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctename + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                    {
                      goto LABEL_66;
                    }

                    if (*(v80 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctelevelsup) != *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctelevelsup))
                    {
                      goto LABEL_66;
                    }

                    if (*(v80 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selfReference) != *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selfReference))
                    {
                      goto LABEL_66;
                    }

                    v114 = *(v80 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypes);
                    v115 = *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypes);

                    v116 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v114, v115);

                    if ((v116 & 1) == 0)
                    {
                      goto LABEL_66;
                    }

                    v117 = *(v80 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypmods);
                    v118 = *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypmods);

                    v119 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v117, v118);

                    if ((v119 & 1) == 0)
                    {
                      goto LABEL_66;
                    }

                    v120 = *(v80 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colcollations);
                    v121 = *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colcollations);

                    v122 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v120, v121);

                    if ((v122 & 1) == 0)
                    {
                      goto LABEL_66;
                    }

                    if ((*(v80 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__enrname) != *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__enrname) || *(v80 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__enrname + 8) != *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__enrname + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                    {
                      goto LABEL_66;
                    }

                    if (*(v80 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__enrtuples) != *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__enrtuples))
                    {
                      goto LABEL_66;
                    }

                    v123 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias;
                    v124 = v151;
                    v125 = *(v152 + 48);
                    outlined init with copy of PgQuery_Alias?(v80 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias, v151, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
                    outlined init with copy of PgQuery_Alias?(v145 + v123, v124 + v125, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
                    v126 = *(v153 + 48);
                    if (v126(v124, 1, v154) == 1)
                    {
                      if (v126(v151 + v125, 1, v154) == 1)
                      {
                        _s10Foundation4UUIDVSgWOhTm_0(v151, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
LABEL_97:
                        v127 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__eref;
                        v128 = *(v152 + 48);
                        v129 = v149;
                        outlined init with copy of PgQuery_Alias?(v80 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__eref, v149, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
                        outlined init with copy of PgQuery_Alias?(v145 + v127, v129 + v128, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
                        if (v126(v129, 1, v154) == 1)
                        {
                          if (v126(v149 + v128, 1, v154) == 1)
                          {
                            _s10Foundation4UUIDVSgWOhTm_0(v149, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
LABEL_100:
                            if (*(v80 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lateral) == *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lateral) && *(v80 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inh) == *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inh) && *(v80 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inFromCl) == *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inFromCl) && *(v80 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__requiredPerms) == *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__requiredPerms) && *(v80 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__checkAsUser) == *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__checkAsUser) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(*(v80 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selectedCols), *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selectedCols)) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(*(v80 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__insertedCols), *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__insertedCols)) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(*(v80 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__updatedCols), *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__updatedCols)) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(*(v80 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__extraUpdatedCols), *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__extraUpdatedCols)) & 1) != 0)
                            {
                              v130 = *(v80 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__securityQuals);
                              v131 = *(v145 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_RangeTblEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__securityQuals);

                              v93 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v130, v131);

                              return v93 & 1;
                            }

                            goto LABEL_66;
                          }

                          goto LABEL_123;
                        }

                        v137 = v149;
                        outlined init with copy of PgQuery_Alias?(v149, v148, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
                        if (v126(v137 + v128, 1, v154) == 1)
                        {
                          outlined destroy of PgQuery_OidList(v148, type metadata accessor for PgQuery_Alias);
LABEL_123:
                          v100 = &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMd;
                          v101 = &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMR;
                          v102 = v149;
                          goto LABEL_77;
                        }

                        v138 = v150;
                        outlined init with take of PgQuery_OidList(v149 + v128, v150, type metadata accessor for PgQuery_Alias);
                        if ((*v148 != *v138 || v148[1] != v138[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v148[2], v150[2]) & 1) == 0)
                        {
                          outlined destroy of PgQuery_OidList(v150, type metadata accessor for PgQuery_Alias);
                          outlined destroy of PgQuery_OidList(v148, type metadata accessor for PgQuery_Alias);
                          v100 = &_s14BiomeSQLParser13PgQuery_AliasVSgMd;
                          v101 = &_s14BiomeSQLParser13PgQuery_AliasVSgMR;
                          v102 = v149;
                          goto LABEL_77;
                        }

                        type metadata accessor for UnknownStorage();
                        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
                        v139 = v148;
                        v140 = v150;
                        v141 = dispatch thunk of static Equatable.== infix(_:_:)();
                        outlined destroy of PgQuery_OidList(v140, type metadata accessor for PgQuery_Alias);
                        outlined destroy of PgQuery_OidList(v139, type metadata accessor for PgQuery_Alias);
                        _s10Foundation4UUIDVSgWOhTm_0(v149, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
                        if (v141)
                        {
                          goto LABEL_100;
                        }

                        goto LABEL_66;
                      }

                      goto LABEL_113;
                    }

                    v132 = v151;
                    outlined init with copy of PgQuery_Alias?(v151, v146, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
                    if (v126(v132 + v125, 1, v154) == 1)
                    {
                      outlined destroy of PgQuery_OidList(v146, type metadata accessor for PgQuery_Alias);
LABEL_113:
                      v100 = &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMd;
                      v101 = &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMR;
                      v102 = v151;
                      goto LABEL_77;
                    }

                    v133 = v147;
                    outlined init with take of PgQuery_OidList(v151 + v125, v147, type metadata accessor for PgQuery_Alias);
                    if (*v146 == *v133 && v146[1] == v133[1] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v146[2], v147[2]))
                    {
                      type metadata accessor for UnknownStorage();
                      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
                      v135 = v146;
                      v134 = v147;
                      v136 = dispatch thunk of static Equatable.== infix(_:_:)();
                      outlined destroy of PgQuery_OidList(v134, type metadata accessor for PgQuery_Alias);
                      outlined destroy of PgQuery_OidList(v135, type metadata accessor for PgQuery_Alias);
                      _s10Foundation4UUIDVSgWOhTm_0(v151, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
                      if ((v136 & 1) == 0)
                      {
                        goto LABEL_66;
                      }

                      goto LABEL_97;
                    }

                    outlined destroy of PgQuery_OidList(v147, type metadata accessor for PgQuery_Alias);
                    outlined destroy of PgQuery_OidList(v146, type metadata accessor for PgQuery_Alias);
                    v100 = &_s14BiomeSQLParser13PgQuery_AliasVSgMd;
                    v101 = &_s14BiomeSQLParser13PgQuery_AliasVSgMR;
                    v102 = v151;
LABEL_77:
                    _s10Foundation4UUIDVSgWOhTm_0(v102, v100, v101);
                    goto LABEL_66;
                  }
                }

                else
                {
                  v99 = v160;
                  outlined init with copy of PgQuery_Alias?(v160, v158, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMd, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMR);
                  if (v98(v99 + v96, 1, TableFunc) != 1)
                  {
                    v103 = v155;
                    outlined init with take of PgQuery_OidList(v160 + v96, v155, type metadata accessor for PgQuery_TableFunc);
                    v104 = *(TableFunc + 20);
                    v105 = *(v158 + v104);
                    v106 = *(v103 + v104);
                    if (v105 == v106 || (, , v107 = closure #1 in static PgQuery_TableFunc.== infix(_:_:)(v105, v106), , , v107))
                    {
                      type metadata accessor for UnknownStorage();
                      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
                      v108 = v158;
                      v109 = v155;
                      v110 = dispatch thunk of static Equatable.== infix(_:_:)();
                      outlined destroy of PgQuery_OidList(v109, type metadata accessor for PgQuery_TableFunc);
                      outlined destroy of PgQuery_OidList(v108, type metadata accessor for PgQuery_TableFunc);
                      _s10Foundation4UUIDVSgWOhTm_0(v160, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMd, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMR);
                      if ((v110 & 1) == 0)
                      {
                        goto LABEL_66;
                      }

                      goto LABEL_81;
                    }

                    outlined destroy of PgQuery_OidList(v155, type metadata accessor for PgQuery_TableFunc);
                    outlined destroy of PgQuery_OidList(v158, type metadata accessor for PgQuery_TableFunc);
                    v100 = &_s14BiomeSQLParser17PgQuery_TableFuncVSgMd;
                    v101 = &_s14BiomeSQLParser17PgQuery_TableFuncVSgMR;
LABEL_76:
                    v102 = v160;
                    goto LABEL_77;
                  }

                  outlined destroy of PgQuery_OidList(v158, type metadata accessor for PgQuery_TableFunc);
                }

                v100 = &_s14BiomeSQLParser17PgQuery_TableFuncVSg_ADtMd;
                v101 = &_s14BiomeSQLParser17PgQuery_TableFuncVSg_ADtMR;
                goto LABEL_76;
              }

              outlined destroy of PgQuery_OidList(v74, type metadata accessor for PgQuery_Query);
              outlined destroy of PgQuery_OidList(v70, type metadata accessor for PgQuery_Query);
              v71 = &_s14BiomeSQLParser08PgQuery_D0VSgMd;
              v72 = &_s14BiomeSQLParser08PgQuery_D0VSgMR;
LABEL_52:
              _s10Foundation4UUIDVSgWOhTm_0(v68, v71, v72);
              goto LABEL_66;
            }

            outlined destroy of PgQuery_OidList(v70, type metadata accessor for PgQuery_Query);
          }

          v71 = &_s14BiomeSQLParser08PgQuery_D0VSg_ADtMd;
          v72 = &_s14BiomeSQLParser08PgQuery_D0VSg_ADtMR;
          goto LABEL_52;
        }

        outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_TableSampleClause);
      }

      _s10Foundation4UUIDVSgWOhTm_0(v49, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSg_ADtMd, &_s14BiomeSQLParser25PgQuery_TableSampleClauseVSg_ADtMR);
      goto LABEL_66;
    }

    if (v51)
    {
      if (v50 != 1)
      {
        goto LABEL_67;
      }

      goto LABEL_9;
    }

    if (!v50)
    {
      goto LABEL_9;
    }
  }

  else if (v50 == v51)
  {
    goto LABEL_9;
  }

LABEL_67:
  v93 = 0;
  return v93 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RangeTblEntry(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTblEntry and conformance PgQuery_RangeTblEntry, type metadata accessor for PgQuery_RangeTblEntry, &protocol conformance descriptor for PgQuery_RangeTblEntry);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RangeTblEntry(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTblEntry and conformance PgQuery_RangeTblEntry, type metadata accessor for PgQuery_RangeTblEntry, &protocol conformance descriptor for PgQuery_RangeTblEntry);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RangeTblEntry(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTblEntry and conformance PgQuery_RangeTblEntry, type metadata accessor for PgQuery_RangeTblEntry, &protocol conformance descriptor for PgQuery_RangeTblEntry);

  return Message.hash(into:)();
}

uint64_t PgQuery_RangeTblFunction._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcexpr;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v3, 1, 1, Node);
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolcount;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolcount) = 0;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolnames;
  v7 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolnames) = MEMORY[0x1E69E7CC0];
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccoltypes;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccoltypes) = v7;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccoltypmods;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccoltypmods) = v7;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolcollations;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolcollations) = v7;
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcparams;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcparams) = v7;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcexpr, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v5) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolcount);
  *(v1 + v6) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolnames);

  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccoltypes);

  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccoltypmods);

  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolcollations);

  v12 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcparams);

  *(v1 + v11) = v12;

  return v1;
}

uint64_t PgQuery_RangeTblFunction._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcexpr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t closure #1 in PgQuery_RangeTblFunction.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v6)
      {
        return result;
      }

      if (result <= 3)
      {
        v7 = v4;
        switch(result)
        {
          case 1:
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
          case 2:
            dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
            break;
          case 3:
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
            goto LABEL_17;
        }
      }

      else
      {
        if (result <= 5)
        {
          v7 = v4;
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
LABEL_17:
          v4 = v7;
LABEL_19:
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 6)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          goto LABEL_19;
        }

        if (result == 7)
        {
          dispatch thunk of Decoder.decodeRepeatedUInt64Field(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_RangeTblFunction.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v20 - v7;
  Node = type metadata accessor for PgQuery_Node(0);
  v10 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  v15 = v14;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcexpr, v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v10 + 48))(v8, 1, v15) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v16 = v22;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v8, v13, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v16 = v22;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
    if (v16)
    {
      return result;
    }
  }

  v18 = v21;
  result = *(v21 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolcount);
  if (!result || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v16))
  {
    v19 = v16;
    if (*(*(v18 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolnames) + 16))
    {
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();

      if (v16)
      {
        return result;
      }

      v19 = 0;
    }

    if (*(*(v18 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccoltypes) + 16))
    {
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();

      if (v19)
      {
        return result;
      }

      v19 = 0;
    }

    if (*(*(v18 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccoltypmods) + 16))
    {
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();

      if (v19)
      {
        return result;
      }

      v19 = 0;
    }

    if (!*(*(v18 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolcollations) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v19))
    {
      if (*(*(v18 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcparams) + 16))
      {

        dispatch thunk of Visitor.visitPackedUInt64Field(value:fieldNumber:)();
      }
    }
  }

  return result;
}

uint64_t closure #1 in static PgQuery_RangeTblFunction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v6);
  v47 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v16 = &v46 - v15;
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcexpr;
  v18 = *(v14 + 56);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcexpr, &v46 - v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v19 = a2 + v17;
  v20 = a2;
  outlined init with copy of PgQuery_Alias?(v19, &v16[v18], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, Node) != 1)
  {
    v23 = a1;
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v21(&v16[v18], 1, Node) != 1)
    {
      v26 = v47;
      outlined init with take of PgQuery_OidList(&v16[v18], v47, type metadata accessor for PgQuery_Node);
      v27 = *(Node + 20);
      v28 = *&v11[v27];
      v29 = *(v26 + v27);

      if (v28 == v29 || (, , v30 = closure #1 in static PgQuery_Node.== infix(_:_:)(v28, v29), , , v30))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v31 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v31)
        {
          goto LABEL_11;
        }

LABEL_17:

        v44 = 0;
        return v44 & 1;
      }

      outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v25 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_7:
      _s10Foundation4UUIDVSgWOhTm_0(v16, v24, v25);
      goto LABEL_17;
    }

    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
LABEL_6:
    v24 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v25 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_7;
  }

  v22 = v21(&v16[v18], 1, Node);

  v23 = a1;
  if (v22 != 1)
  {
    goto LABEL_6;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_11:
  if (*(v23 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolcount) != *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolcount))
  {
    goto LABEL_17;
  }

  v32 = *(v23 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolnames);
  v33 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolnames);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v32, v33);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_17;
  }

  v35 = *(v23 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccoltypes);
  v36 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccoltypes);

  v37 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v35, v36);

  if ((v37 & 1) == 0)
  {
    goto LABEL_17;
  }

  v38 = *(v23 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccoltypmods);
  v39 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccoltypmods);

  v40 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v38, v39);

  if ((v40 & 1) == 0)
  {
    goto LABEL_17;
  }

  v41 = *(v23 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolcollations);
  v42 = *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolcollations);

  v43 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v41, v42);

  if ((v43 & 1) == 0)
  {
    goto LABEL_17;
  }

  v44 = _sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt64V_Tt1g5(*(v23 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcparams), *(v20 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcparams));

  return v44 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RangeTblFunction(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTblFunction and conformance PgQuery_RangeTblFunction, type metadata accessor for PgQuery_RangeTblFunction, &protocol conformance descriptor for PgQuery_RangeTblFunction);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RangeTblFunction(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTblFunction and conformance PgQuery_RangeTblFunction, type metadata accessor for PgQuery_RangeTblFunction, &protocol conformance descriptor for PgQuery_RangeTblFunction);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RangeTblFunction(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTblFunction and conformance PgQuery_RangeTblFunction, type metadata accessor for PgQuery_RangeTblFunction, &protocol conformance descriptor for PgQuery_RangeTblFunction);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_PrepareStmt._StorageClass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v5 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t PgQuery_TableSampleClause.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = *(type metadata accessor for PgQuery_TableSampleClause(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PgQuery_TableSampleClause._StorageClass(0);
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v9 + 24) = MEMORY[0x1E69E7CC0];
    v15 = v4;
    v10 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_TableSampleClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__repeatable;
    Node = type metadata accessor for PgQuery_Node(0);
    (*(*(Node - 8) + 56))(v9 + v10, 1, 1, Node);
    *(v9 + 16) = *(v8 + 16);
    *(v9 + 24) = *(v8 + 24);
    v12 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_TableSampleClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__repeatable;

    v5 = v15;
    outlined assign with copy of PgQuery_Node?(v8 + v12, v9 + v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

    *(v3 + v6) = v9;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v5)
  {
    while ((v14 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 2:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
        case 3:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_TableSampleClause.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v17 - v9;
  Node = type metadata accessor for PgQuery_Node(0);
  v12 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v13);
  v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
  {
    v17[1] = a3;
    if (!*(*(a1 + 24) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
    {
      outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_TableSampleClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__repeatable, v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if ((*(v12 + 48))(v10, 1, Node) == 1)
      {
        return _s10Foundation4UUIDVSgWOhTm_0(v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        outlined init with take of PgQuery_OidList(v10, v15, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        return outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
      }
    }
  }

  return result;
}

uint64_t closure #1 in static PgQuery_TableSampleClause.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v32 - v15;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v33 = v8;
  v17 = *(a1 + 24);
  v18 = *(a2 + 24);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v17, v18);

  if (NodeV_Tt1g5)
  {
    v20 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_TableSampleClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__repeatable;
    v21 = *(v13 + 48);
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_TableSampleClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__repeatable, v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined init with copy of PgQuery_Alias?(a2 + v20, &v16[v21], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v22 = *(v5 + 48);
    if (v22(v16, 1, Node) == 1)
    {

      if (v22(&v16[v21], 1, Node) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        return 1;
      }

      goto LABEL_9;
    }

    outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v22(&v16[v21], 1, Node) == 1)
    {

      outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
LABEL_9:
      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_10:
      _s10Foundation4UUIDVSgWOhTm_0(v16, v23, v24);
      return 0;
    }

    v26 = v33;
    outlined init with take of PgQuery_OidList(&v16[v21], v33, type metadata accessor for PgQuery_Node);
    v27 = *(Node + 20);
    v28 = *&v12[v27];
    v29 = *(v26 + v27);
    if (v28 != v29)
    {

      v30 = closure #1 in static PgQuery_Node.== infix(_:_:)(v28, v29);

      if (!v30)
      {

        outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
        v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_10;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v31 = dispatch thunk of static Equatable.== infix(_:_:)();

    outlined destroy of PgQuery_OidList(v26, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
    _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v31)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_TableSampleClause(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TableSampleClause and conformance PgQuery_TableSampleClause, type metadata accessor for PgQuery_TableSampleClause, &protocol conformance descriptor for PgQuery_TableSampleClause);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_TableSampleClause(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TableSampleClause and conformance PgQuery_TableSampleClause, type metadata accessor for PgQuery_TableSampleClause, &protocol conformance descriptor for PgQuery_TableSampleClause);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_TableSampleClause(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TableSampleClause and conformance PgQuery_TableSampleClause, type metadata accessor for PgQuery_TableSampleClause, &protocol conformance descriptor for PgQuery_TableSampleClause);

  return Message.hash(into:)();
}

uint64_t PgQuery_WithCheckOption._StorageClass.__deallocating_deinit()
{

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_WithCheckOptionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_WithCheckOption._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_WithCheckOption.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v6)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result != 1)
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

LABEL_14:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          goto LABEL_5;
        }

        lazy protocol witness table accessor for type PgQuery_WCOKind and conformance PgQuery_WCOKind();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else
      {
        switch(result)
        {
          case 3:
            goto LABEL_14;
          case 4:
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
          case 5:
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_WithCheckOption.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v21 - v8;
  Node = type metadata accessor for PgQuery_Node(0);
  v11 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v15 = *(a1 + 24);
    v21 = *(a1 + 16);
    v22 = v15;
    lazy protocol witness table accessor for type PgQuery_WCOKind and conformance PgQuery_WCOKind();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v23 = v11;
  }

  else
  {
    v23 = v11;
  }

  v17 = *(a1 + 40);
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (!v18 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v4))
  {
    v19 = *(a1 + 56);
    v20 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v20 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
    }

    if (!v20 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v4))
    {
      outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_WithCheckOptionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if ((*(v23 + 48))(v9, 1, Node) == 1)
      {
        result = _s10Foundation4UUIDVSgWOhTm_0(v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        outlined init with take of PgQuery_OidList(v9, v14, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_Node);
        if (v4)
        {
          return result;
        }
      }

      if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_WithCheckOptionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cascaded) == 1)
      {
        return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
      }
    }
  }

  return result;
}

uint64_t closure #1 in static PgQuery_WithCheckOption.== infix(_:_:)(void *a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v35 - v15;
  v17 = a1[2];
  v18 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v18 > 1)
    {
      if (v18 == 2)
      {
        if (v17 != 2)
        {
          goto LABEL_30;
        }
      }

      else if (v18 == 3)
      {
        if (v17 != 3)
        {
          goto LABEL_30;
        }
      }

      else if (v17 != 4)
      {
        goto LABEL_30;
      }

      goto LABEL_8;
    }

    if (v18)
    {
      if (v17 != 1)
      {
        goto LABEL_30;
      }

LABEL_8:
      if ((a1[4] != *(a2 + 32) || a1[5] != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[6] != *(a2 + 48) || a1[7] != *(a2 + 56)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_30;
      }

      v36 = v8;
      v19 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_WithCheckOptionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual;
      v20 = *(v13 + 48);
      outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_WithCheckOptionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual, v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      outlined init with copy of PgQuery_Alias?(a2 + v19, &v16[v20], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      v21 = *(v5 + 48);
      if (v21(v16, 1, Node) == 1)
      {
        v22 = v21(&v16[v20], 1, Node);

        if (v22 == 1)
        {
          _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_35:
          v33 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_WithCheckOptionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cascaded);

          v34 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_WithCheckOptionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cascaded);

          v25 = v33 ^ v34 ^ 1;
          return v25 & 1;
        }
      }

      else
      {
        outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v21(&v16[v20], 1, Node) != 1)
        {
          v27 = v36;
          outlined init with take of PgQuery_OidList(&v16[v20], v36, type metadata accessor for PgQuery_Node);
          v28 = *(Node + 20);
          v29 = *&v12[v28];
          v30 = *(v27 + v28);

          if (v29 == v30 || (, , v31 = closure #1 in static PgQuery_Node.== infix(_:_:)(v29, v30), , , v31))
          {
            type metadata accessor for UnknownStorage();
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
            v32 = dispatch thunk of static Equatable.== infix(_:_:)();
            outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
            outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
            _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
            if (v32)
            {
              goto LABEL_35;
            }

            goto LABEL_24;
          }

          outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
          outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
          v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
          v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_23:
          _s10Foundation4UUIDVSgWOhTm_0(v16, v23, v24);
LABEL_24:

          goto LABEL_30;
        }

        outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
      }

      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
      v24 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
      goto LABEL_23;
    }

    if (!v17)
    {
      goto LABEL_8;
    }
  }

  else if (v17 == v18)
  {
    goto LABEL_8;
  }

LABEL_30:
  v25 = 0;
  return v25 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_WithCheckOption(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WithCheckOption and conformance PgQuery_WithCheckOption, type metadata accessor for PgQuery_WithCheckOption, &protocol conformance descriptor for PgQuery_WithCheckOption);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_WithCheckOption(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WithCheckOption and conformance PgQuery_WithCheckOption, type metadata accessor for PgQuery_WithCheckOption, &protocol conformance descriptor for PgQuery_WithCheckOption);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_WithCheckOption(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WithCheckOption and conformance PgQuery_WithCheckOption, type metadata accessor for PgQuery_WithCheckOption, &protocol conformance descriptor for PgQuery_WithCheckOption);

  return Message.hash(into:)();
}

uint64_t PgQuery_SortGroupClause.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1 || result == 2)
      {
LABEL_2:
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }
    }

    else
    {
      if (result == 3)
      {
        goto LABEL_2;
      }

      if (result == 4 || result == 5)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }
    }
  }
}

uint64_t PgQuery_SortGroupClause.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
  {
    if (!*(v3 + 4) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
    {
      if (!*(v3 + 8) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
      {
        if (*(v3 + 12) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
        {
          if (*(v3 + 13) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
          {
            type metadata accessor for PgQuery_SortGroupClause(0);
            return UnknownStorage.traverse<A>(visitor:)();
          }
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_SortGroupClause@<X0>(void *a1@<X8>)
{
  *(a1 + 6) = 0;
  *a1 = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance PgQuery_GrantRoleStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance PgQuery_GrantRoleStmt(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_SortGroupClause(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SortGroupClause and conformance PgQuery_SortGroupClause, type metadata accessor for PgQuery_SortGroupClause, &protocol conformance descriptor for PgQuery_SortGroupClause);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_SortGroupClause(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SortGroupClause and conformance PgQuery_SortGroupClause, type metadata accessor for PgQuery_SortGroupClause, &protocol conformance descriptor for PgQuery_SortGroupClause);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_SortGroupClause(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SortGroupClause and conformance PgQuery_SortGroupClause, type metadata accessor for PgQuery_SortGroupClause, &protocol conformance descriptor for PgQuery_SortGroupClause);

  return Message.hash(into:)();
}

uint64_t PgQuery_GroupingSet.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          break;
        case 2:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
        case 1:
          lazy protocol witness table accessor for type PgQuery_GroupingSetKind and conformance PgQuery_GroupingSetKind();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_GroupingSet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  if (*v3)
  {
    lazy protocol witness table accessor for type PgQuery_GroupingSetKind and conformance PgQuery_GroupingSetKind();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  if (*(*(v3 + 16) + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v7 = v5;
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }

    if (!*(v3 + 24))
    {
      goto LABEL_10;
    }

LABEL_9:
    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    if (v7)
    {
      return result;
    }

    goto LABEL_10;
  }

  v7 = v5;
  if (*(v3 + 24))
  {
    goto LABEL_9;
  }

LABEL_10:
  type metadata accessor for PgQuery_GroupingSet(0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance PgQuery_GroupingSet@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_GroupingSet(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GroupingSet and conformance PgQuery_GroupingSet, type metadata accessor for PgQuery_GroupingSet, &protocol conformance descriptor for PgQuery_GroupingSet);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_GroupingSet(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GroupingSet and conformance PgQuery_GroupingSet, type metadata accessor for PgQuery_GroupingSet, &protocol conformance descriptor for PgQuery_GroupingSet);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_GroupingSet(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GroupingSet and conformance PgQuery_GroupingSet, type metadata accessor for PgQuery_GroupingSet, &protocol conformance descriptor for PgQuery_GroupingSet);

  return Message.hash(into:)();
}

uint64_t PgQuery_WindowClause._StorageClass.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = v1;
  *(v0 + 56) = v1;
  *(v0 + 64) = 0;
  v2 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startOffset;
  Node = type metadata accessor for PgQuery_Node(0);
  v4 = *(*(Node - 8) + 56);
  v4(v0 + v2, 1, 1, Node);
  v4(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__endOffset, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startInRangeFunc) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__endInRangeFunc) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inRangeColl) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inRangeAsc) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inRangeNullsFirst) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__winref) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__copiedOrder) = 0;
  return v0;
}

uint64_t PgQuery_WindowDef._StorageClass.__deallocating_deinit(void *a1, void *a2)
{

  _s10Foundation4UUIDVSgWOhTm_0(v2 + *a1, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v2 + *a2, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 52);

  return MEMORY[0x1EEE6BDC0](v2, v5, v6);
}

void type metadata completion function for PgQuery_WindowClause._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_WindowClause.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__copiedOrder;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    v10 = v5;
    v8 = v5;
    while ((v7 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          v9 = v8;
          goto LABEL_17;
        case 2:
          v9 = v8;
LABEL_17:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 3:
        case 4:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_5;
        case 5:
          v9 = v8;
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          break;
        case 6:
        case 7:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_5:
          v9 = v10;
          break;
        case 8:
          v9 = v8;
          goto LABEL_23;
        case 9:
          v9 = v8;
          goto LABEL_23;
        case 10:
          v9 = v8;
          goto LABEL_23;
        case 11:
          v9 = v8;
          goto LABEL_21;
        case 12:
          v9 = v8;
          goto LABEL_21;
        case 13:
          v9 = v8;
LABEL_23:
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 14:
          v9 = v8;
LABEL_21:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        default:
          v9 = v8;
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
      v8 = v9;
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_WindowClause.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v30 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v29 - v11;
  Node = type metadata accessor for PgQuery_Node(0);
  v31 = *(Node - 8);
  v15 = MEMORY[0x1EEE9AC00](Node, v14);
  v29 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v29 - v18;
  v20 = *(a1 + 24);
  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
    }
  }

  v22 = *(a1 + 40);
  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
    }
  }

  if (!*(*(a1 + 48) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
  {
    if (!*(*(a1 + 56) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
    {
      if (!*(a1 + 64) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
      {
        outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startOffset, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        v25 = *(v31 + 48);
        v31 += 48;
        if (v25(v12, 1, Node) == 1)
        {
          _s10Foundation4UUIDVSgWOhTm_0(v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        }

        else
        {
          outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          result = outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
          if (v4)
          {
            return result;
          }
        }

        v26 = v30;
        outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__endOffset, v30, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v25(v26, 1, Node) == 1)
        {
          _s10Foundation4UUIDVSgWOhTm_0(v26, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        }

        else
        {
          v27 = v26;
          v28 = v29;
          outlined init with take of PgQuery_OidList(v27, v29, type metadata accessor for PgQuery_Node);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          result = outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_Node);
          if (v4)
          {
            return result;
          }
        }

        if (!*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startInRangeFunc) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
        {
          if (!*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__endInRangeFunc) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
          {
            if (!*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inRangeColl) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
            {
              if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inRangeAsc) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
              {
                if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inRangeNullsFirst) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
                {
                  result = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__winref);
                  if (!result || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
                  {
                    if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__copiedOrder) == 1)
                    {
                      return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t closure #1 in static PgQuery_WindowClause.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v68 = *(Node - 8);
  v6 = MEMORY[0x1EEE9AC00](Node, v5);
  v8 = &v63[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v63[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v16 = &v63[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v63[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v24 = &v63[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = &v63[-v26];
  if (*(a1 + 16) != *(a2 + 16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_27;
  }

  v66 = v16;
  v67 = v24;
  v65 = v8;
  v28 = *(a1 + 48);
  v29 = *(a2 + 48);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v28, v29);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_26;
  }

  v31 = *(a1 + 56);
  v32 = *(a2 + 56);

  v33 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v31, v32);

  if ((v33 & 1) == 0 || *(a1 + 64) != *(a2 + 64))
  {
    goto LABEL_26;
  }

  v34 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startOffset;
  v35 = *(v20 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startOffset, v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v36 = a2 + v34;
  v37 = v35;
  outlined init with copy of PgQuery_Alias?(v36, &v27[v35], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v38 = v68 + 48;
  v39 = *(v68 + 48);
  if (v39(v27, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v27, v19, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v39(&v27[v37], 1, Node) != 1)
    {
      v68 = v38;
      outlined init with take of PgQuery_OidList(&v27[v37], v11, type metadata accessor for PgQuery_Node);
      v43 = *(Node + 20);
      v44 = *&v19[v43];
      v45 = *&v11[v43];
      if (v44 == v45 || (, , v64 = closure #1 in static PgQuery_Node.== infix(_:_:)(v44, v45), , , v64))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v46 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((v46 & 1) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_19;
      }

      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
      v40 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v41 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_15:
      v42 = v27;
LABEL_25:
      _s10Foundation4UUIDVSgWOhTm_0(v42, v40, v41);
      goto LABEL_26;
    }

    outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_Node);
LABEL_14:
    v40 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v41 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_15;
  }

  if (v39(&v27[v37], 1, Node) != 1)
  {
    goto LABEL_14;
  }

  v68 = v38;
  _s10Foundation4UUIDVSgWOhTm_0(v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_19:
  v47 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__endOffset;
  v48 = *(v20 + 48);
  v49 = v67;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__endOffset, v67, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v47, v49 + v48, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v39(v49, 1, Node) == 1)
  {
    if (v39((v49 + v48), 1, Node) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v49, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_32:
      if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startInRangeFunc) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startInRangeFunc) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__endInRangeFunc) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__endInRangeFunc) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inRangeColl) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inRangeColl) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inRangeAsc) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inRangeAsc) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inRangeNullsFirst) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inRangeNullsFirst) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__winref) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__winref))
      {
        v61 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__copiedOrder);

        v62 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_WindowClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__copiedOrder);

        v51 = v61 ^ v62 ^ 1;
        return v51 & 1;
      }

      goto LABEL_26;
    }

    goto LABEL_24;
  }

  v50 = v66;
  outlined init with copy of PgQuery_Alias?(v49, v66, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v39((v49 + v48), 1, Node) == 1)
  {
    outlined destroy of PgQuery_OidList(v50, type metadata accessor for PgQuery_Node);
LABEL_24:
    v40 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v41 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v42 = v49;
    goto LABEL_25;
  }

  v53 = v49 + v48;
  v54 = v65;
  outlined init with take of PgQuery_OidList(v53, v65, type metadata accessor for PgQuery_Node);
  v55 = *(Node + 20);
  v56 = *(v50 + v55);
  v57 = *(v54 + v55);
  if (v56 != v57)
  {

    v58 = closure #1 in static PgQuery_Node.== infix(_:_:)(v56, v57);

    if (!v58)
    {
      outlined destroy of PgQuery_OidList(v54, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v66, type metadata accessor for PgQuery_Node);
      v40 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v41 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v42 = v67;
      goto LABEL_25;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v59 = v66;
  v60 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v54, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v59, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v67, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v60)
  {
    goto LABEL_32;
  }

LABEL_26:

LABEL_27:
  v51 = 0;
  return v51 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_WindowClause(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WindowClause and conformance PgQuery_WindowClause, type metadata accessor for PgQuery_WindowClause, &protocol conformance descriptor for PgQuery_WindowClause);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_WindowClause(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WindowClause and conformance PgQuery_WindowClause, type metadata accessor for PgQuery_WindowClause, &protocol conformance descriptor for PgQuery_WindowClause);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_WindowClause(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WindowClause and conformance PgQuery_WindowClause, type metadata accessor for PgQuery_WindowClause, &protocol conformance descriptor for PgQuery_WindowClause);

  return Message.hash(into:)();
}

uint64_t PgQuery_VacuumStmt.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = v5;
  if (*(*v4 + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }

    v7 = 0;
  }

  if (*(*(v4 + 8) + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v9 = v7;
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v7)
    {
      return result;
    }
  }

  else
  {
    v9 = v7;
  }

  if (*(v4 + 16) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v9))
  {
    a4(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_VacuumStmt@<X0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = v1;
  *(a1 + 16) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ObjectWithArgs(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ObjectWithArgs and conformance PgQuery_ObjectWithArgs, type metadata accessor for PgQuery_ObjectWithArgs, &protocol conformance descriptor for PgQuery_ObjectWithArgs);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ObjectWithArgs(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ObjectWithArgs and conformance PgQuery_ObjectWithArgs, type metadata accessor for PgQuery_ObjectWithArgs, &protocol conformance descriptor for PgQuery_ObjectWithArgs);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ObjectWithArgs(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ObjectWithArgs and conformance PgQuery_ObjectWithArgs, type metadata accessor for PgQuery_ObjectWithArgs, &protocol conformance descriptor for PgQuery_ObjectWithArgs);

  return Message.hash(into:)();
}

uint64_t PgQuery_Alias.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = v4[1];
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v5))
  {
    if (!*(v4[2] + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v5))
    {
      a4(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_Alias@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_AccessPriv(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AccessPriv and conformance PgQuery_AccessPriv, type metadata accessor for PgQuery_AccessPriv, &protocol conformance descriptor for PgQuery_AccessPriv);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_AccessPriv(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AccessPriv and conformance PgQuery_AccessPriv, type metadata accessor for PgQuery_AccessPriv, &protocol conformance descriptor for PgQuery_AccessPriv);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_AccessPriv(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AccessPriv and conformance PgQuery_AccessPriv, type metadata accessor for PgQuery_AccessPriv, &protocol conformance descriptor for PgQuery_AccessPriv);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PgQuery_Alias(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t PgQuery_CreateOpClassItem.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 3)
      {
        if (result == 4 || result == 5)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }

        else if (result == 6)
        {
          v6 = v3;
          type metadata accessor for PgQuery_CreateOpClassItem(0);
          type metadata accessor for PgQuery_TypeName(0);
          v7 = type metadata accessor for PgQuery_TypeName;
          v8 = &protocol conformance descriptor for PgQuery_TypeName;
          v9 = &lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName;
          goto LABEL_5;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            goto LABEL_17;
          case 2:
            v6 = v3;
            type metadata accessor for PgQuery_CreateOpClassItem(0);
            type metadata accessor for PgQuery_ObjectWithArgs(0);
            v7 = type metadata accessor for PgQuery_ObjectWithArgs;
            v8 = &protocol conformance descriptor for PgQuery_ObjectWithArgs;
            v9 = &lazy protocol witness table cache variable for type PgQuery_ObjectWithArgs and conformance PgQuery_ObjectWithArgs;
LABEL_5:
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(v9, v7, v8);
            v3 = v6;
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
          case 3:
LABEL_17:
            dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_CreateOpClassItem.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v30 = &OpClassItem - v8;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v28 = *(TypeName - 8);
  v29 = TypeName;
  MEMORY[0x1EEE9AC00](TypeName, v10);
  v27 = &OpClassItem - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &OpClassItem - v14;
  ObjectWithArgs = type metadata accessor for PgQuery_ObjectWithArgs(0);
  v17 = *(ObjectWithArgs - 8);
  MEMORY[0x1EEE9AC00](ObjectWithArgs, v18);
  v20 = &OpClassItem - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v3)
  {
    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  OpClassItem = type metadata accessor for PgQuery_CreateOpClassItem(0);
  outlined init with copy of PgQuery_Alias?(v3 + *(OpClassItem + 36), v15, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  if ((*(v17 + 48))(v15, 1, ObjectWithArgs) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
    v22 = v5;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v20, type metadata accessor for PgQuery_ObjectWithArgs);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ObjectWithArgs and conformance PgQuery_ObjectWithArgs, type metadata accessor for PgQuery_ObjectWithArgs, &protocol conformance descriptor for PgQuery_ObjectWithArgs);
    v22 = v5;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_ObjectWithArgs);
    if (v5)
    {
      return result;
    }
  }

  v23 = v30;
  if (!*(v3 + 4) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v22))
  {
    v24 = v22;
    if (*(*(v3 + 8) + 16))
    {
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      if (v22)
      {
        return result;
      }

      v24 = 0;
    }

    if (*(*(v3 + 16) + 16))
    {
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      if (v24)
      {
        return result;
      }

      v24 = 0;
    }

    outlined init with copy of PgQuery_Alias?(v3 + *(OpClassItem + 40), v23, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    if ((*(v28 + 48))(v23, 1, v29) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    }

    else
    {
      v25 = v27;
      outlined init with take of PgQuery_OidList(v23, v27, type metadata accessor for PgQuery_TypeName);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName, &protocol conformance descriptor for PgQuery_TypeName);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_TypeName);
      if (v24)
      {
        return result;
      }
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_CreateOpClassItem@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(a2 + 1) = MEMORY[0x1E69E7CC0];
  *(a2 + 2) = v4;
  UnknownStorage.init()();
  v5 = *(a1 + 36);
  ObjectWithArgs = type metadata accessor for PgQuery_ObjectWithArgs(0);
  (*(*(ObjectWithArgs - 8) + 56))(&a2[v5], 1, 1, ObjectWithArgs);
  v7 = *(a1 + 40);
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v9 = *(*(TypeName - 8) + 56);

  return v9(&a2[v7], 1, 1, TypeName);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CreateOpClassItem(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateOpClassItem and conformance PgQuery_CreateOpClassItem, type metadata accessor for PgQuery_CreateOpClassItem, &protocol conformance descriptor for PgQuery_CreateOpClassItem);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CreateOpClassItem(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateOpClassItem and conformance PgQuery_CreateOpClassItem, type metadata accessor for PgQuery_CreateOpClassItem, &protocol conformance descriptor for PgQuery_CreateOpClassItem);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CreateOpClassItem(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateOpClassItem and conformance PgQuery_CreateOpClassItem, type metadata accessor for PgQuery_CreateOpClassItem, &protocol conformance descriptor for PgQuery_CreateOpClassItem);

  return Message.hash(into:)();
}

uint64_t PgQuery_TableLikeClause.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 3 || result == 2)
      {
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else if (result == 1)
      {
        type metadata accessor for PgQuery_TableLikeClause(0);
        type metadata accessor for PgQuery_RangeVar(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_TableLikeClause.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - v6;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v9 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  TableLikeClause = type metadata accessor for PgQuery_TableLikeClause(0);
  v18 = v3;
  outlined init with copy of PgQuery_Alias?(v3 + *(TableLikeClause + 28), v7, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v9 + 48))(v7, 1, RangeVar) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v7, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v13 = v20;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v7, v12, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    v13 = v20;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RangeVar);
    if (v13)
    {
      return result;
    }
  }

  v15 = v18;
  if (!*v18 || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v13))
  {
    if (!v15[1])
    {
      return UnknownStorage.traverse<A>(visitor:)();
    }

    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (!v13)
    {
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_TableLikeClause@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 28);
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v6 = *(*(RangeVar - 8) + 56);

  return v6(&a2[v4], 1, 1, RangeVar);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_TableLikeClause(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TableLikeClause and conformance PgQuery_TableLikeClause, type metadata accessor for PgQuery_TableLikeClause, &protocol conformance descriptor for PgQuery_TableLikeClause);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_TableLikeClause(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TableLikeClause and conformance PgQuery_TableLikeClause, type metadata accessor for PgQuery_TableLikeClause, &protocol conformance descriptor for PgQuery_TableLikeClause);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_TableLikeClause(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TableLikeClause and conformance PgQuery_TableLikeClause, type metadata accessor for PgQuery_TableLikeClause, &protocol conformance descriptor for PgQuery_TableLikeClause);

  return Message.hash(into:)();
}

uint64_t PgQuery_FunctionParameter._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v16 - v5;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argType;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  (*(*(TypeName - 8) + 56))(v1 + v7, 1, 1, TypeName);
  v9 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__mode;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defexpr;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v10, 1, 1, Node);
  v12 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v12;
  v13 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argType;

  outlined assign with copy of PgQuery_Node?(a1 + v13, v1 + v7, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v14 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__mode + 8);
  *v9 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__mode);
  *(v9 + 8) = v14;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defexpr, v6, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  outlined assign with take of PgQuery_Node?(v6, v1 + v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  return v1;
}

uint64_t PgQuery_FunctionParameter._StorageClass.__deallocating_deinit()
{

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argType, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defexpr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_FunctionParameter._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_TypeName?, type metadata accessor for PgQuery_TypeName, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t closure #1 in PgQuery_FunctionParameter.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v6 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        lazy protocol witness table accessor for type PgQuery_FunctionParameterMode and conformance PgQuery_FunctionParameterMode();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 4)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
LABEL_12:
        v4 = 0;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }
    }

    else if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 2)
    {
      type metadata accessor for PgQuery_TypeName(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName, &protocol conformance descriptor for PgQuery_TypeName);
      goto LABEL_12;
    }
  }
}

uint64_t closure #1 in PgQuery_FunctionParameter.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v37 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v33 = &v31 - v9;
  Node = type metadata accessor for PgQuery_Node(0);
  v32 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v10);
  v31 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v31 - v14;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v17 = *(TypeName - 8);
  MEMORY[0x1EEE9AC00](TypeName, v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  v22 = *(a1 + 16);
  v23 = *(a1 + 24);
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v5))
  {
    outlined init with copy of PgQuery_Alias?(v21 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argType, v15, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    if ((*(v17 + 48))(v15, 1, TypeName) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    }

    else
    {
      outlined init with take of PgQuery_OidList(v15, v20, type metadata accessor for PgQuery_TypeName);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName, &protocol conformance descriptor for PgQuery_TypeName);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_TypeName);
      if (v5)
      {
        return result;
      }
    }

    v27 = v33;
    v26 = Node;
    if (!*(v21 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__mode) || (v28 = *(v21 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__mode + 8), v35 = *(v21 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__mode), v36 = v28, lazy protocol witness table accessor for type PgQuery_FunctionParameterMode and conformance PgQuery_FunctionParameterMode(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v5))
    {
      outlined init with copy of PgQuery_Alias?(v21 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defexpr, v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if ((*(v32 + 48))(v27, 1, v26) == 1)
      {
        return _s10Foundation4UUIDVSgWOhTm_0(v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        v29 = v27;
        v30 = v31;
        outlined init with take of PgQuery_OidList(v29, v31, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        return outlined destroy of PgQuery_OidList(v30, type metadata accessor for PgQuery_Node);
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_FunctionParameter.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v60 = *(Node - 8);
  v61 = Node;
  MEMORY[0x1EEE9AC00](Node, v5);
  v58 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v55 - v9;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v59, v11);
  v13 = &v55 - v12;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v15 = *(TypeName - 8);
  MEMORY[0x1EEE9AC00](TypeName, v16);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v55 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v55 - v25;
  if (*(a1 + 16) != *(a2 + 16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v56 = v10;
  v57 = v13;
  v62 = a2;
  v27 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argType;
  v28 = a1;
  v29 = *(v23 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argType, v26, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v30 = v62 + v27;
  v31 = v62;
  outlined init with copy of PgQuery_Alias?(v30, &v26[v29], &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v32 = *(v15 + 48);
  if (v32(v26, 1, TypeName) == 1)
  {
    v33 = v32(&v26[v29], 1, TypeName);

    if (v33 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v26, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
      goto LABEL_12;
    }

LABEL_8:
    _s10Foundation4UUIDVSgWOhTm_0(v26, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR);
    goto LABEL_9;
  }

  outlined init with copy of PgQuery_Alias?(v26, v22, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if (v32(&v26[v29], 1, TypeName) == 1)
  {

    outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_TypeName);
    goto LABEL_8;
  }

  outlined init with take of PgQuery_OidList(&v26[v29], v18, type metadata accessor for PgQuery_TypeName);

  v35 = specialized static PgQuery_TypeName.== infix(_:_:)(v22, v18);
  outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_TypeName);
  outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_TypeName);
  _s10Foundation4UUIDVSgWOhTm_0(v26, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if ((v35 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_12:
  v36 = *(v28 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__mode);
  v37 = *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__mode);
  if (*(v31 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__mode + 8) != 1)
  {
    v38 = v57;
    v39 = v61;
    if (v36 == v37)
    {
      goto LABEL_19;
    }

    goto LABEL_9;
  }

  v38 = v57;
  v39 = v61;
  if (v37 > 2)
  {
    if (v37 == 3)
    {
      if (v36 != 3)
      {
        goto LABEL_9;
      }
    }

    else if (v37 == 4)
    {
      if (v36 != 4)
      {
        goto LABEL_9;
      }
    }

    else if (v36 != 5)
    {
      goto LABEL_9;
    }
  }

  else if (v37)
  {
    if (v37 == 1)
    {
      if (v36 == 1)
      {
        goto LABEL_19;
      }

LABEL_9:

      return 0;
    }

    if (v36 != 2)
    {
      goto LABEL_9;
    }
  }

  else if (v36)
  {
    goto LABEL_9;
  }

LABEL_19:
  v40 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defexpr;
  v41 = *(v59 + 48);
  outlined init with copy of PgQuery_Alias?(v28 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defexpr, v38, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v62 + v40, v38 + v41, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v42 = *(v60 + 48);
  if (v42(v38, 1, v39) != 1)
  {
    v43 = v56;
    outlined init with copy of PgQuery_Alias?(v38, v56, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v42(v38 + v41, 1, v39) == 1)
    {

      outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_Node);
      goto LABEL_28;
    }

    v46 = v38 + v41;
    v47 = v58;
    outlined init with take of PgQuery_OidList(v46, v58, type metadata accessor for PgQuery_Node);
    v48 = *(v39 + 20);
    v49 = *(v43 + v48);
    v50 = *(v47 + v48);
    if (v49 != v50)
    {

      v51 = closure #1 in static PgQuery_Node.== infix(_:_:)(v49, v50);

      if (!v51)
      {

        outlined destroy of PgQuery_OidList(v58, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v56, type metadata accessor for PgQuery_Node);
        v44 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v45 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
        goto LABEL_29;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v52 = v56;
    v53 = v58;
    v54 = dispatch thunk of static Equatable.== infix(_:_:)();

    outlined destroy of PgQuery_OidList(v53, type metadata accessor for PgQuery_Node);
    outlined destroy of PgQuery_OidList(v52, type metadata accessor for PgQuery_Node);
    _s10Foundation4UUIDVSgWOhTm_0(v38, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    return (v54 & 1) != 0;
  }

  if (v42(v38 + v41, 1, v39) != 1)
  {
LABEL_28:
    v44 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v45 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_29:
    _s10Foundation4UUIDVSgWOhTm_0(v38, v44, v45);
    return 0;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v38, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  return 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_FunctionParameter(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FunctionParameter and conformance PgQuery_FunctionParameter, type metadata accessor for PgQuery_FunctionParameter, &protocol conformance descriptor for PgQuery_FunctionParameter);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_FunctionParameter(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FunctionParameter and conformance PgQuery_FunctionParameter, type metadata accessor for PgQuery_FunctionParameter, &protocol conformance descriptor for PgQuery_FunctionParameter);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_FunctionParameter(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FunctionParameter and conformance PgQuery_FunctionParameter, type metadata accessor for PgQuery_FunctionParameter, &protocol conformance descriptor for PgQuery_FunctionParameter);

  return Message.hash(into:)();
}

uint64_t PgQuery_LockingClause.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        v6 = v3;
        lazy protocol witness table accessor for type PgQuery_LockClauseStrength and conformance PgQuery_LockClauseStrength();
LABEL_5:
        v3 = v6;
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        goto LABEL_6;
      }

      if (result == 1)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v6 = v3;
    lazy protocol witness table accessor for type PgQuery_LockWaitPolicy and conformance PgQuery_LockWaitPolicy();
    goto LABEL_5;
  }

  return result;
}

uint64_t PgQuery_LockingClause.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  if (*(*v3 + 16))
  {
    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v6 = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v4)
    {
      return v6;
    }

    v5 = 0;
  }

  if (v3[1])
  {
    lazy protocol witness table accessor for type PgQuery_LockClauseStrength and conformance PgQuery_LockClauseStrength();
    v7 = v5;
    v6 = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v5)
    {
      return v6;
    }

    if (!v3[3])
    {
      goto LABEL_10;
    }

LABEL_9:
    lazy protocol witness table accessor for type PgQuery_LockWaitPolicy and conformance PgQuery_LockWaitPolicy();
    v6 = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v7)
    {
      return v6;
    }

    goto LABEL_10;
  }

  v7 = v5;
  if (v3[3])
  {
    goto LABEL_9;
  }

LABEL_10:
  type metadata accessor for PgQuery_LockingClause(0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance PgQuery_LockingClause@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_LockingClause(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_LockingClause and conformance PgQuery_LockingClause, type metadata accessor for PgQuery_LockingClause, &protocol conformance descriptor for PgQuery_LockingClause);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_LockingClause(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_LockingClause and conformance PgQuery_LockingClause, type metadata accessor for PgQuery_LockingClause, &protocol conformance descriptor for PgQuery_LockingClause);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_LockingClause(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_LockingClause and conformance PgQuery_LockingClause, type metadata accessor for PgQuery_LockingClause, &protocol conformance descriptor for PgQuery_LockingClause);

  return Message.hash(into:)();
}

uint64_t PgQuery_RowMarkClause.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v6 = v3;
          lazy protocol witness table accessor for type PgQuery_LockWaitPolicy and conformance PgQuery_LockWaitPolicy();
          goto LABEL_15;
        }

        if (result == 4)
        {
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_5;
        }

        if (result == 2)
        {
          v6 = v3;
          lazy protocol witness table accessor for type PgQuery_LockClauseStrength and conformance PgQuery_LockClauseStrength();
LABEL_15:
          v3 = v6;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_RowMarkClause.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
  {
    v6 = v4;
    if (*(v3 + 8))
    {
      lazy protocol witness table accessor for type PgQuery_LockClauseStrength and conformance PgQuery_LockClauseStrength();
      result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      if (v4)
      {
        return result;
      }

      v6 = 0;
    }

    if (*(v3 + 24))
    {
      lazy protocol witness table accessor for type PgQuery_LockWaitPolicy and conformance PgQuery_LockWaitPolicy();
      v7 = v6;
      result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      if (v6)
      {
        return result;
      }
    }

    else
    {
      v7 = v6;
    }

    if (*(v3 + 33) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v7))
    {
      type metadata accessor for PgQuery_RowMarkClause(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_RowMarkClause@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RowMarkClause(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RowMarkClause and conformance PgQuery_RowMarkClause, type metadata accessor for PgQuery_RowMarkClause, &protocol conformance descriptor for PgQuery_RowMarkClause);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RowMarkClause(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RowMarkClause and conformance PgQuery_RowMarkClause, type metadata accessor for PgQuery_RowMarkClause, &protocol conformance descriptor for PgQuery_RowMarkClause);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RowMarkClause(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RowMarkClause and conformance PgQuery_RowMarkClause, type metadata accessor for PgQuery_RowMarkClause, &protocol conformance descriptor for PgQuery_RowMarkClause);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_XmlSerialize._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_TypeName?, type metadata accessor for PgQuery_TypeName, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t PgQuery_XmlSerialize.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for PgQuery_XmlSerialize(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v3 + v7);
    type metadata accessor for PgQuery_XmlSerialize._StorageClass(0);
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 1;
    v12 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_XmlSerializeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr;
    Node = type metadata accessor for PgQuery_Node(0);
    (*(*(Node - 8) + 56))(v11 + v12, 1, 1, Node);
    v14 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_XmlSerializeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName;
    TypeName = type metadata accessor for PgQuery_TypeName(0);
    (*(*(TypeName - 8) + 56))(v11 + v14, 1, 1, TypeName);
    v22 = a1;
    v16 = a2;
    v17 = a3;
    v18 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_XmlSerializeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
    *(v11 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_XmlSerializeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
    v19 = *(v10 + 24);
    *(v11 + 16) = *(v10 + 16);
    *(v11 + 24) = v19;
    v20 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_XmlSerializeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr;

    outlined assign with copy of PgQuery_Node?(v10 + v20, v11 + v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined assign with copy of PgQuery_Node?(v10 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_XmlSerializeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, v11 + v14, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    LODWORD(v14) = *(v10 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_XmlSerializeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    *(v11 + v18) = v14;
    a3 = v17;
    a2 = v16;
    a1 = v22;

    *(v3 + v7) = v11;
    v9 = v11;
  }

  return closure #1 in PgQuery_XmlSerialize.decodeMessage<A>(decoder:)(v9, a1, a2, a3);
}

uint64_t closure #1 in PgQuery_XmlSerialize.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v6 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        type metadata accessor for PgQuery_TypeName(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName, &protocol conformance descriptor for PgQuery_TypeName);
LABEL_13:
        v4 = 0;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 4)
      {
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }
    }

    else if (result == 1)
    {
      lazy protocol witness table accessor for type PgQuery_XmlOptionType and conformance PgQuery_XmlOptionType();
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
    }

    else if (result == 2)
    {
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      goto LABEL_13;
    }
  }
}

uint64_t closure #1 in PgQuery_XmlSerialize.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v27 - v7;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v29 = *(TypeName - 8);
  v30 = TypeName;
  MEMORY[0x1EEE9AC00](TypeName, v10);
  v28 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v27 - v14;
  Node = type metadata accessor for PgQuery_Node(0);
  v17 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v18);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v21 = *(a1 + 24);
    v31 = *(a1 + 16);
    v32 = v21;
    lazy protocol witness table accessor for type PgQuery_XmlOptionType and conformance PgQuery_XmlOptionType();
    v22 = v33;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v22)
    {
      return result;
    }

    v33 = 0;
  }

  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_XmlSerializeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v17 + 48))(v15, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v20, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    v24 = v33;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_Node);
    if (v24)
    {
      return result;
    }

    v33 = 0;
  }

  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_XmlSerializeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, v8, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if ((*(v29 + 48))(v8, 1, v30) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  }

  else
  {
    v25 = v28;
    outlined init with take of PgQuery_OidList(v8, v28, type metadata accessor for PgQuery_TypeName);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TypeName and conformance PgQuery_TypeName, type metadata accessor for PgQuery_TypeName, &protocol conformance descriptor for PgQuery_TypeName);
    v26 = v33;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_TypeName);
    if (v26)
    {
      return result;
    }
  }

  result = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_XmlSerializeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  if (result)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

BOOL closure #1 in static PgQuery_XmlSerialize.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v61 = *(TypeName - 8);
  MEMORY[0x1EEE9AC00](TypeName, v5);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v59 = &v55 - v10;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v60, v11);
  v13 = &v55 - v12;
  Node = type metadata accessor for PgQuery_Node(0);
  v15 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v16);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v55 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v27 = &v55 - v26;
  v28 = *(a1 + 16);
  v29 = *(a2 + 16);
  if (*(a2 + 24) != 1)
  {
    if (v28 != v29)
    {
      return 0;
    }

    goto LABEL_11;
  }

  if (!v29)
  {
    if (!v28)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v29 != 1)
  {
    if (v28 == 2)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v28 != 1)
  {
    return 0;
  }

LABEL_11:
  v57 = TypeName;
  v58 = v13;
  v56 = v7;
  v62 = a2;
  v30 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_XmlSerializeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr;
  v31 = a1;
  v32 = *(v25 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_XmlSerializeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(v62 + v30, &v27[v32], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v33 = *(v15 + 48);
  if (v33(v27, 1, Node) == 1)
  {
    v34 = v33(&v27[v32], 1, Node);

    v35 = v58;
    if (v34 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  outlined init with copy of PgQuery_Alias?(v27, v22, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if (v33(&v27[v32], 1, Node) == 1)
  {

    outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
LABEL_16:
    v36 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v37 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
LABEL_17:
    _s10Foundation4UUIDVSgWOhTm_0(v27, v36, v37);
    goto LABEL_28;
  }

  outlined init with take of PgQuery_OidList(&v27[v32], v18, type metadata accessor for PgQuery_Node);
  v38 = *(Node + 20);
  v39 = *&v22[v38];
  v40 = *&v18[v38];

  if (v39 != v40)
  {

    v41 = closure #1 in static PgQuery_Node.== infix(_:_:)(v39, v40);

    if (!v41)
    {
      outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
      v36 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v37 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      goto LABEL_17;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v42 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_Node);
  outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_Node);
  _s10Foundation4UUIDVSgWOhTm_0(v27, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v35 = v58;
  if ((v42 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_22:
  v43 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_XmlSerializeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName;
  v44 = *(v60 + 48);
  outlined init with copy of PgQuery_Alias?(v31 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_XmlSerializeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName, v35, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v45 = v62;
  outlined init with copy of PgQuery_Alias?(v62 + v43, v35 + v44, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v46 = *(v61 + 48);
  v47 = v57;
  if (v46(v35, 1, v57) != 1)
  {
    v48 = v59;
    outlined init with copy of PgQuery_Alias?(v35, v59, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    if (v46(v35 + v44, 1, v47) != 1)
    {
      v50 = v35 + v44;
      v51 = v56;
      outlined init with take of PgQuery_OidList(v50, v56, type metadata accessor for PgQuery_TypeName);
      v52 = specialized static PgQuery_TypeName.== infix(_:_:)(v48, v51);
      outlined destroy of PgQuery_OidList(v51, type metadata accessor for PgQuery_TypeName);
      outlined destroy of PgQuery_OidList(v48, type metadata accessor for PgQuery_TypeName);
      _s10Foundation4UUIDVSgWOhTm_0(v35, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
      if (v52)
      {
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    outlined destroy of PgQuery_OidList(v48, type metadata accessor for PgQuery_TypeName);
    goto LABEL_27;
  }

  if (v46(v35 + v44, 1, v47) != 1)
  {
LABEL_27:
    _s10Foundation4UUIDVSgWOhTm_0(v35, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR);
LABEL_28:

    return 0;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v35, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
LABEL_31:
  v53 = *(v31 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_XmlSerializeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v54 = *(v45 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_XmlSerializeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v53 == v54;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_XmlSerialize(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_XmlSerialize and conformance PgQuery_XmlSerialize, type metadata accessor for PgQuery_XmlSerialize, &protocol conformance descriptor for PgQuery_XmlSerialize);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_XmlSerialize(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_XmlSerialize and conformance PgQuery_XmlSerialize, type metadata accessor for PgQuery_XmlSerialize, &protocol conformance descriptor for PgQuery_XmlSerialize);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_XmlSerialize(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_XmlSerialize and conformance PgQuery_XmlSerialize, type metadata accessor for PgQuery_XmlSerialize, &protocol conformance descriptor for PgQuery_XmlSerialize);

  return Message.hash(into:)();
}

uint64_t PgQuery_WithClause.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          break;
        case 2:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 1:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_WithClause.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for PgQuery_Node(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    if (*(v3 + 8) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
    {
      if (!*(v3 + 12) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
      {
        type metadata accessor for PgQuery_WithClause(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_WithClause@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_WithClause(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WithClause and conformance PgQuery_WithClause, type metadata accessor for PgQuery_WithClause, &protocol conformance descriptor for PgQuery_WithClause);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_WithClause(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WithClause and conformance PgQuery_WithClause, type metadata accessor for PgQuery_WithClause, &protocol conformance descriptor for PgQuery_WithClause);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_WithClause(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WithClause and conformance PgQuery_WithClause, type metadata accessor for PgQuery_WithClause, &protocol conformance descriptor for PgQuery_WithClause);

  return Message.hash(into:)();
}

uint64_t PgQuery_InferClause._StorageClass.__deallocating_deinit()
{

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_SecLabelStmt._StorageClass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v5 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_InferClause.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v6 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      else if (result == 4)
      {
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }
    }

    else if (result == 1)
    {
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
    }

    else if (result == 2)
    {
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_InferClause.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v18 - v8;
  Node = type metadata accessor for PgQuery_Node(0);
  v11 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v12);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(*(a1 + 16) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
  {
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if ((*(v11 + 48))(v9, 1, Node) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    else
    {
      outlined init with take of PgQuery_OidList(v9, v14, type metadata accessor for PgQuery_Node);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v14, type metadata accessor for PgQuery_Node);
      if (v4)
      {
        return result;
      }
    }

    v16 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__conname + 8);
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__conname) & 0xFFFFFFFFFFFFLL;
    }

    if (!v17 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v4))
    {
      result = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
      if (result)
      {
        return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_InferClause.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v6);
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v33 - v14;
  v16 = *(a1 + 16);
  v17 = *(a2 + 16);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v16, v17);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_9;
  }

  v19 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  v20 = *(v12 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v19, &v15[v20], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v21 = *(v5 + 48);
  if (v21(v15, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v15, v11, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v21(&v15[v20], 1, Node) != 1)
    {
      v25 = v34;
      outlined init with take of PgQuery_OidList(&v15[v20], v34, type metadata accessor for PgQuery_Node);
      v26 = *(Node + 20);
      v27 = *&v11[v26];
      v28 = *(v25 + v26);
      if (v27 == v28 || (, , v29 = closure #1 in static PgQuery_Node.== infix(_:_:)(v27, v28), , , v29))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v30 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if ((v30 & 1) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_14;
      }

      outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
      v22 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_8:
      _s10Foundation4UUIDVSgWOhTm_0(v15, v22, v23);
      goto LABEL_9;
    }

    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_Node);
LABEL_7:
    v22 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v23 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_8;
  }

  if (v21(&v15[v20], 1, Node) != 1)
  {
    goto LABEL_7;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_14:
  if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__conname) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__conname) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__conname + 8) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__conname + 8) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v31 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    v32 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    return v31 == v32;
  }

LABEL_9:

  return 0;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_InferClause(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InferClause and conformance PgQuery_InferClause, type metadata accessor for PgQuery_InferClause, &protocol conformance descriptor for PgQuery_InferClause);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_InferClause(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InferClause and conformance PgQuery_InferClause, type metadata accessor for PgQuery_InferClause, &protocol conformance descriptor for PgQuery_InferClause);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_InferClause(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InferClause and conformance PgQuery_InferClause, type metadata accessor for PgQuery_InferClause, &protocol conformance descriptor for PgQuery_InferClause);

  return Message.hash(into:)();
}

uint64_t PgQuery_OnConflictClause._StorageClass.__deallocating_deinit()
{
  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__infer, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMd, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMR);

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_OnConflictClause._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_InferClause?, type metadata accessor for PgQuery_InferClause, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t closure #1 in PgQuery_OnConflictClause.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v6)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result != 1)
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          v7 = v4;
          type metadata accessor for PgQuery_InferClause(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InferClause and conformance PgQuery_InferClause, type metadata accessor for PgQuery_InferClause, &protocol conformance descriptor for PgQuery_InferClause);
          goto LABEL_16;
        }

        lazy protocol witness table accessor for type PgQuery_OnConflictAction and conformance PgQuery_OnConflictAction();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else
      {
        switch(result)
        {
          case 3:
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
            break;
          case 4:
            v7 = v4;
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
LABEL_16:
            v4 = v7;
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            break;
          case 5:
            dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
            break;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_OnConflictClause.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v29 = &v26 - v8;
  Node = type metadata accessor for PgQuery_Node(0);
  v28 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v9);
  v27 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_InferClauseVSgMd, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v26 - v13;
  InferClause = type metadata accessor for PgQuery_InferClause(0);
  v16 = *(InferClause - 8);
  MEMORY[0x1EEE9AC00](InferClause, v17);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16) || (v20 = *(a1 + 24), v30 = *(a1 + 16), v31 = v20, lazy protocol witness table accessor for type PgQuery_OnConflictAction and conformance PgQuery_OnConflictAction(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__infer, v14, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMd, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMR);
    if ((*(v16 + 48))(v14, 1, InferClause) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v14, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMd, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMR);
    }

    else
    {
      outlined init with take of PgQuery_OidList(v14, v19, type metadata accessor for PgQuery_InferClause);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InferClause and conformance PgQuery_InferClause, type metadata accessor for PgQuery_InferClause, &protocol conformance descriptor for PgQuery_InferClause);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_InferClause);
      if (v4)
      {
        return result;
      }
    }

    v22 = Node;
    if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
    {
      v23 = v29;
      outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v29, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if ((*(v28 + 48))(v23, 1, v22) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        v24 = v23;
        v25 = v27;
        outlined init with take of PgQuery_OidList(v24, v27, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
        if (v4)
        {
          return result;
        }
      }

      result = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
      if (result)
      {
        return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_OnConflictClause.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v71 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v5);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v65 - v10;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v70, v12);
  v14 = &v65 - v13;
  InferClause = type metadata accessor for PgQuery_InferClause(0);
  v16 = *(InferClause - 8);
  MEMORY[0x1EEE9AC00](InferClause, v17);
  v72 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_InferClauseVSgMd, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v65 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_InferClauseVSg_ADtMd, &_s14BiomeSQLParser19PgQuery_InferClauseVSg_ADtMR);
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v27 = &v65 - v26;
  v28 = *(a1 + 16);
  v29 = *(a2 + 16);
  if (*(a2 + 24) != 1)
  {
    if (v28 == v29)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (v29 > 1)
  {
    if (v29 == 2)
    {
      if (v28 != 2)
      {
        return 0;
      }
    }

    else if (v28 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (!v29)
    {
      if (!v28)
      {
        goto LABEL_7;
      }

      return 0;
    }

    if (v28 != 1)
    {
      return 0;
    }
  }

LABEL_7:
  v67 = v11;
  v68 = Node;
  v66 = v7;
  v69 = v14;
  v30 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__infer;
  v31 = *(v25 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__infer, v27, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMd, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v30, &v27[v31], &_s14BiomeSQLParser19PgQuery_InferClauseVSgMd, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMR);
  v32 = *(v16 + 48);
  if (v32(v27, 1, InferClause) == 1)
  {
    v33 = v32(&v27[v31], 1, InferClause);

    v34 = a1;
    if (v33 == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v27, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMd, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMR);
      goto LABEL_27;
    }

    goto LABEL_15;
  }

  outlined init with copy of PgQuery_Alias?(v27, v22, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMd, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMR);
  if (v32(&v27[v31], 1, InferClause) == 1)
  {

    outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_InferClause);
LABEL_15:
    v35 = &_s14BiomeSQLParser19PgQuery_InferClauseVSg_ADtMd;
    v36 = &_s14BiomeSQLParser19PgQuery_InferClauseVSg_ADtMR;
LABEL_16:
    v37 = v27;
LABEL_17:
    _s10Foundation4UUIDVSgWOhTm_0(v37, v35, v36);
LABEL_18:

    return 0;
  }

  v39 = v72;
  outlined init with take of PgQuery_OidList(&v27[v31], v72, type metadata accessor for PgQuery_InferClause);
  v40 = *(InferClause + 20);
  v41 = *&v22[v40];
  v42 = *(v39 + v40);
  v34 = a1;

  if (v41 != v42)
  {

    v43 = closure #1 in static PgQuery_InferClause.== infix(_:_:)(v41, v42);

    if (!v43)
    {
      outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_InferClause);
      outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_InferClause);
      v35 = &_s14BiomeSQLParser19PgQuery_InferClauseVSgMd;
      v36 = &_s14BiomeSQLParser19PgQuery_InferClauseVSgMR;
      goto LABEL_16;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v44 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_InferClause);
  outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_InferClause);
  _s10Foundation4UUIDVSgWOhTm_0(v27, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMd, &_s14BiomeSQLParser19PgQuery_InferClauseVSgMR);
  if ((v44 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_27:
  v45 = *(v34 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList);
  v46 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList);

  NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v45, v46);

  if ((NodeV_Tt1g5 & 1) == 0)
  {
    goto LABEL_18;
  }

  v48 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  v49 = v69;
  v50 = *(v70 + 48);
  outlined init with copy of PgQuery_Alias?(v34 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, v69, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v48, v49 + v50, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v51 = *(v71 + 48);
  v52 = v68;
  if (v51(v49, 1, v68) != 1)
  {
    v53 = v67;
    outlined init with copy of PgQuery_Alias?(v49, v67, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v51(v49 + v50, 1, v52) != 1)
    {
      v54 = v49 + v50;
      v55 = v66;
      outlined init with take of PgQuery_OidList(v54, v66, type metadata accessor for PgQuery_Node);
      v56 = *(v52 + 20);
      v57 = *(v53 + v56);
      v58 = *(v55 + v56);
      if (v57 == v58 || (, , v59 = closure #1 in static PgQuery_Node.== infix(_:_:)(v57, v58), , , v59))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v60 = v66;
        v61 = v67;
        v62 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v60, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v61, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v49, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v62)
        {
          goto LABEL_38;
        }

        goto LABEL_18;
      }

      outlined destroy of PgQuery_OidList(v66, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v67, type metadata accessor for PgQuery_Node);
      v35 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v36 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
      v37 = v49;
      goto LABEL_17;
    }

    outlined destroy of PgQuery_OidList(v53, type metadata accessor for PgQuery_Node);
    goto LABEL_33;
  }

  if (v51(v49 + v50, 1, v52) != 1)
  {
LABEL_33:
    v35 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v36 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    v37 = v49;
    goto LABEL_17;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v49, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_38:
  v63 = *(v34 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v64 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v63 == v64;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_OnConflictClause(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_OnConflictClause and conformance PgQuery_OnConflictClause, type metadata accessor for PgQuery_OnConflictClause, &protocol conformance descriptor for PgQuery_OnConflictClause);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_OnConflictClause(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_OnConflictClause and conformance PgQuery_OnConflictClause, type metadata accessor for PgQuery_OnConflictClause, &protocol conformance descriptor for PgQuery_OnConflictClause);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_OnConflictClause(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_OnConflictClause and conformance PgQuery_OnConflictClause, type metadata accessor for PgQuery_OnConflictClause, &protocol conformance descriptor for PgQuery_OnConflictClause);

  return Message.hash(into:)();
}

uint64_t PgQuery_CommonTableExpr._StorageClass.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  v2 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctequery;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v0 + v2, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cterecursive) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cterefcount) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecolnames) = v1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecoltypes) = v1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecoltypmods) = v1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecolcollations) = v1;
  return v0;
}

uint64_t PgQuery_CommonTableExpr._StorageClass.init(copying:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = MEMORY[0x1E69E7CC0];
  *(v1 + 40) = 0;
  *(v1 + 48) = 1;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctequery;
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctequery;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v4, 1, 1, Node);
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cterecursive;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cterecursive) = 0;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cterefcount;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cterefcount) = 0;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecolnames;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecolnames) = v3;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecoltypes;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecoltypes) = v3;
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecoltypmods;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecoltypmods) = v3;
  v18 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecolcollations;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecolcollations) = v3;
  v12 = *(a1 + 24);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = v12;
  *(v1 + 32) = *(a1 + 32);
  v13 = *(a1 + 48);
  *(v1 + 40) = *(a1 + 40);
  *(v1 + 48) = v13;
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctequery;

  outlined assign with copy of PgQuery_Node?(a1 + v14, v1 + v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v6) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cterecursive);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cterefcount);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecolnames);

  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecoltypes);

  *(v1 + v11) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecoltypmods);

  v15 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecolcollations);

  *(v1 + v18) = v15;

  return v1;
}

uint64_t PgQuery_CommonTableExpr._StorageClass.__deallocating_deinit()
{

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctequery, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_CommonTableExpr._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t closure #1 in PgQuery_CommonTableExpr.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v6)
      {
        return result;
      }

      if (result <= 5)
      {
        if (result <= 2)
        {
          if (result == 1)
          {
            dispatch thunk of Decoder.decodeSingularStringField(value:)();
          }

          else if (result == 2)
          {
            goto LABEL_4;
          }
        }

        else if (result == 3)
        {
          lazy protocol witness table accessor for type PgQuery_CTEMaterialize and conformance PgQuery_CTEMaterialize();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else
        {
          if (result != 4)
          {
            goto LABEL_15;
          }

          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else if (result > 8)
      {
        if (result == 9 || result == 10 || result == 11)
        {
LABEL_4:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }
      }

      else
      {
        if (result != 6)
        {
          if (result != 7)
          {
            goto LABEL_4;
          }

LABEL_15:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_5;
        }

        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_CommonTableExpr.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - v8;
  Node = type metadata accessor for PgQuery_Node(0);
  v10 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 24);
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
    }
  }

  if (!*(*(a1 + 32) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
  {
    if (!*(a1 + 40) || (v17 = *(a1 + 48), v18 = *(a1 + 40), v19 = v17, lazy protocol witness table accessor for type PgQuery_CTEMaterialize and conformance PgQuery_CTEMaterialize(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
    {
      outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctequery, v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if ((*(v10 + 48))(v9, 1, Node) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v9, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      }

      else
      {
        outlined init with take of PgQuery_OidList(v9, v13, type metadata accessor for PgQuery_Node);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
        result = outlined destroy of PgQuery_OidList(v13, type metadata accessor for PgQuery_Node);
        if (v4)
        {
          return result;
        }
      }

      if (!*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
      {
        if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cterecursive) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
        {
          result = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cterefcount);
          if (!result || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
          {
            if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecolnames) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
            {
              if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecoltypes) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
              {
                if (!*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecoltypmods) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v4))
                {
                  if (*(*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecolcollations) + 16))
                  {
                    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);

                    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t closure #1 in static PgQuery_CommonTableExpr.== infix(_:_:)(void *a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v46 - v15;
  if (*(a1 + 1) == *(a2 + 16) || (v17 = 0, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v47 = v8;
    v18 = a1[4];
    v19 = *(a2 + 32);

    NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v18, v19);

    if ((NodeV_Tt1g5 & 1) == 0)
    {
      goto LABEL_34;
    }

    v21 = a1[5];
    v22 = *(a2 + 40);
    if (*(a2 + 48) == 1)
    {
      if (v22 > 1)
      {
        if (v22 == 2)
        {
          if (v21 != 2)
          {
            goto LABEL_34;
          }
        }

        else if (v21 != 3)
        {
          goto LABEL_34;
        }
      }

      else if (v22)
      {
        if (v21 != 1)
        {
          goto LABEL_34;
        }
      }

      else if (v21)
      {
        goto LABEL_34;
      }
    }

    else if (v21 != v22)
    {
      goto LABEL_34;
    }

    v23 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctequery;
    v24 = *(v13 + 48);
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctequery, v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined init with copy of PgQuery_Alias?(a2 + v23, &v16[v24], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v25 = *(v5 + 48);
    if (v25(v16, 1, Node) == 1)
    {
      if (v25(&v16[v24], 1, Node) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_27:
        if (*(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cterecursive) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cterecursive) && *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cterefcount) == *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cterefcount))
        {
          v34 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecolnames);
          v35 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecolnames);

          v36 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v34, v35);

          if (v36)
          {
            v37 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecoltypes);
            v38 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecoltypes);

            v39 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v37, v38);

            if (v39)
            {
              v40 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecoltypmods);
              v41 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecoltypmods);

              v42 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v40, v41);

              if (v42)
              {
                v43 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecolcollations);
                v44 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_CommonTableExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ctecolcollations);

                v17 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v43, v44);

                return v17 & 1;
              }
            }
          }
        }

LABEL_34:

        v17 = 0;
        return v17 & 1;
      }
    }

    else
    {
      outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v25(&v16[v24], 1, Node) != 1)
      {
        v28 = v47;
        outlined init with take of PgQuery_OidList(&v16[v24], v47, type metadata accessor for PgQuery_Node);
        v29 = *(Node + 20);
        v30 = *&v12[v29];
        v31 = *(v28 + v29);
        if (v30 == v31 || (, , v32 = closure #1 in static PgQuery_Node.== infix(_:_:)(v30, v31), , , v32))
        {
          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
          v33 = dispatch thunk of static Equatable.== infix(_:_:)();
          outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_Node);
          outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
          _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          if ((v33 & 1) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_27;
        }

        outlined destroy of PgQuery_OidList(v28, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
        v26 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v27 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_19:
        _s10Foundation4UUIDVSgWOhTm_0(v16, v26, v27);
        goto LABEL_34;
      }

      outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
    }

    v26 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v27 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_19;
  }

  return v17 & 1;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CommonTableExpr(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CommonTableExpr and conformance PgQuery_CommonTableExpr, type metadata accessor for PgQuery_CommonTableExpr, &protocol conformance descriptor for PgQuery_CommonTableExpr);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CommonTableExpr(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CommonTableExpr and conformance PgQuery_CommonTableExpr, type metadata accessor for PgQuery_CommonTableExpr, &protocol conformance descriptor for PgQuery_CommonTableExpr);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CommonTableExpr(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CommonTableExpr and conformance PgQuery_CommonTableExpr, type metadata accessor for PgQuery_CommonTableExpr, &protocol conformance descriptor for PgQuery_CommonTableExpr);

  return Message.hash(into:)();
}

uint64_t PgQuery_RoleSpec.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          break;
        case 2:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
        case 1:
          lazy protocol witness table accessor for type PgQuery_RoleSpecType and conformance PgQuery_RoleSpecType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_RoleSpec.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (lazy protocol witness table accessor for type PgQuery_RoleSpecType and conformance PgQuery_RoleSpecType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    v6 = *(v3 + 24);
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
    {
      if (!*(v3 + 32) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
      {
        type metadata accessor for PgQuery_RoleSpec(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_RoleSpec@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_RoleSpec(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec, &protocol conformance descriptor for PgQuery_RoleSpec);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_RoleSpec(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec, &protocol conformance descriptor for PgQuery_RoleSpec);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_RoleSpec(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RoleSpec and conformance PgQuery_RoleSpec, type metadata accessor for PgQuery_RoleSpec, &protocol conformance descriptor for PgQuery_RoleSpec);

  return Message.hash(into:)();
}

uint64_t PgQuery_TriggerTransition.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }

    else if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t PgQuery_TriggerTransition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    if (*(v3 + 16) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
    {
      if (*(v3 + 17) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
      {
        type metadata accessor for PgQuery_TriggerTransition(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_TriggerTransition@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_TriggerTransition(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TriggerTransition and conformance PgQuery_TriggerTransition, type metadata accessor for PgQuery_TriggerTransition, &protocol conformance descriptor for PgQuery_TriggerTransition);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_TriggerTransition(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TriggerTransition and conformance PgQuery_TriggerTransition, type metadata accessor for PgQuery_TriggerTransition, &protocol conformance descriptor for PgQuery_TriggerTransition);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_TriggerTransition(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TriggerTransition and conformance PgQuery_TriggerTransition, type metadata accessor for PgQuery_TriggerTransition, &protocol conformance descriptor for PgQuery_TriggerTransition);

  return Message.hash(into:)();
}

uint64_t PgQuery_PartitionElem._StorageClass.__deallocating_deinit()
{

  _s10Foundation4UUIDVSgWOhTm_0(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata completion function for PgQuery_PartitionElem._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t PgQuery_TableFunc.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(void, void, void, void))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = a7;
    v17 = *(v7 + v14);
    a5(0);
    swift_allocObject();
    v18 = a6(v17);
    a7 = v20;

    *(v10 + v14) = v18;
    v16 = v18;
  }

  return a7(v16, a1, a2, a3);
}

uint64_t closure #1 in PgQuery_PartitionElem.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v6 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }

        else if (result == 2)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else if (result == 3 || result == 4)
      {
        type metadata accessor for PgQuery_Node(0);
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 5)
      {
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_PartitionElem.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v20 - v9;
  Node = type metadata accessor for PgQuery_Node(0);
  v12 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v5))
  {
    outlined init with copy of PgQuery_Alias?(v21 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if ((*(v12 + 48))(v10, 1, Node) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    }

    else
    {
      outlined init with take of PgQuery_OidList(v10, v15, type metadata accessor for PgQuery_Node);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
      result = outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
      if (v5)
      {
        return result;
      }
    }

    if (!*(*(v21 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v5))
    {
      if (!*(*(v21 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclass) + 16) || (lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node), , dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), result = , !v5))
      {
        result = *(v21 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
        if (result)
        {
          return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
        }
      }
    }
  }

  return result;
}

BOOL closure #1 in static PgQuery_PartitionElem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v39 - v15;
  if (*(a1 + 16) == *(a2 + 16) || (v17 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v17 & 1) != 0))
  {
    v40 = v8;
    v19 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr;
    v20 = *(v13 + 48);
    outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    outlined init with copy of PgQuery_Alias?(a2 + v19, &v16[v20], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    v21 = *(v5 + 48);
    if (v21(v16, 1, Node) == 1)
    {
      v22 = v21(&v16[v20], 1, Node);

      if (v22 == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_13:
        v31 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation);
        v32 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation);

        NodeV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v31, v32);

        if (NodeV_Tt1g5)
        {
          v34 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclass);
          v35 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclass);

          v36 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v34, v35);

          if (v36)
          {
            v37 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

            v38 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

            return v37 == v38;
          }
        }

        goto LABEL_16;
      }
    }

    else
    {
      outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
      if (v21(&v16[v20], 1, Node) != 1)
      {
        v25 = v40;
        outlined init with take of PgQuery_OidList(&v16[v20], v40, type metadata accessor for PgQuery_Node);
        v26 = *(Node + 20);
        v27 = *&v12[v26];
        v28 = *(v25 + v26);

        if (v27 == v28 || (, , v29 = closure #1 in static PgQuery_Node.== infix(_:_:)(v27, v28), , , v29))
        {
          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
          v30 = dispatch thunk of static Equatable.== infix(_:_:)();
          outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
          outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
          _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
          if (v30)
          {
            goto LABEL_13;
          }

LABEL_16:

          return 0;
        }

        outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
        v23 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
        v24 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_9:
        _s10Foundation4UUIDVSgWOhTm_0(v16, v23, v24);
        goto LABEL_16;
      }

      outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
    }

    v23 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v24 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_9;
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_PartitionElem(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionElem and conformance PgQuery_PartitionElem, type metadata accessor for PgQuery_PartitionElem, &protocol conformance descriptor for PgQuery_PartitionElem);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_PartitionElem(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionElem and conformance PgQuery_PartitionElem, type metadata accessor for PgQuery_PartitionElem, &protocol conformance descriptor for PgQuery_PartitionElem);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_PartitionElem(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionElem and conformance PgQuery_PartitionElem, type metadata accessor for PgQuery_PartitionElem, &protocol conformance descriptor for PgQuery_PartitionElem);

  return Message.hash(into:)();
}

uint64_t PgQuery_PartitionSpec.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          break;
        case 2:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
        case 1:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_PartitionSpec.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    if (*(*(v3 + 16) + 16))
    {
      type metadata accessor for PgQuery_Node(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
      result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      if (v4)
      {
        return result;
      }

      if (!*(v3 + 24))
      {
        goto LABEL_11;
      }
    }

    else if (!*(v3 + 24))
    {
LABEL_11:
      type metadata accessor for PgQuery_PartitionSpec(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }

    result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    goto LABEL_11;
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_PartitionSpec@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance PgQuery_AlterTableStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance PgQuery_AlterTableStmt(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_PartitionSpec(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionSpec and conformance PgQuery_PartitionSpec, type metadata accessor for PgQuery_PartitionSpec, &protocol conformance descriptor for PgQuery_PartitionSpec);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_PartitionSpec(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionSpec and conformance PgQuery_PartitionSpec, type metadata accessor for PgQuery_PartitionSpec, &protocol conformance descriptor for PgQuery_PartitionSpec);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_PartitionSpec(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionSpec and conformance PgQuery_PartitionSpec, type metadata accessor for PgQuery_PartitionSpec, &protocol conformance descriptor for PgQuery_PartitionSpec);

  return Message.hash(into:)();
}

uint64_t PgQuery_PartitionBoundSpec.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 4)
      {
        if (result < 8)
        {
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_4;
        }

        if (result == 8)
        {
LABEL_17:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

      else
      {
        if (result > 2)
        {
          goto LABEL_17;
        }

        if (result == 1)
        {
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }

        else if (result == 2)
        {
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

LABEL_4:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_PartitionBoundSpec.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    if (*(v3 + 16) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
    {
      if (!*(v3 + 20) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
      {
        if (!*(v3 + 24) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
        {
          v8 = v4;
          if (*(*(v3 + 32) + 16))
          {
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
            result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
            if (v4)
            {
              return result;
            }

            v8 = 0;
          }

          if (*(*(v3 + 40) + 16))
          {
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
            result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
            if (v8)
            {
              return result;
            }

            v8 = 0;
          }

          if (*(*(v3 + 48) + 16))
          {
            type metadata accessor for PgQuery_Node(0);
            lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
            v9 = v8;
            result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
            if (v8)
            {
              return result;
            }
          }

          else
          {
            v9 = v8;
          }

          if (!*(v3 + 56) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v9))
          {
            type metadata accessor for PgQuery_PartitionBoundSpec(0);
            return UnknownStorage.traverse<A>(visitor:)();
          }
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_PartitionBoundSpec@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v1;
  *(a1 + 40) = v1;
  *(a1 + 48) = v1;
  *(a1 + 56) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance PgQuery_GrantStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance PgQuery_GrantStmt(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_PartitionBoundSpec(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionBoundSpec and conformance PgQuery_PartitionBoundSpec, type metadata accessor for PgQuery_PartitionBoundSpec, &protocol conformance descriptor for PgQuery_PartitionBoundSpec);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_PartitionBoundSpec(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionBoundSpec and conformance PgQuery_PartitionBoundSpec, type metadata accessor for PgQuery_PartitionBoundSpec, &protocol conformance descriptor for PgQuery_PartitionBoundSpec);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_PartitionBoundSpec(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionBoundSpec and conformance PgQuery_PartitionBoundSpec, type metadata accessor for PgQuery_PartitionBoundSpec, &protocol conformance descriptor for PgQuery_PartitionBoundSpec);

  return Message.hash(into:)();
}

void type metadata completion function for PgQuery_CommentStmt._StorageClass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node?, type metadata accessor for PgQuery_Node, MEMORY[0x1E69E6720]);
  if (v4 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

void type metadata completion function for PgQuery_TypeName(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_PartitionBoundSpec(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_RangeVar(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Alias?, type metadata accessor for PgQuery_Alias, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for PgQuery_Node.OneOf_Node(uint64_t a1)
{
  result = type metadata accessor for PgQuery_Alias(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PgQuery_RangeVar(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for PgQuery_TableFunc(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for PgQuery_Expr(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for PgQuery_Var(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for PgQuery_Param(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for PgQuery_Aggref(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for PgQuery_GroupingFunc(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for PgQuery_WindowFunc(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for PgQuery_SubscriptingRef(319);
                    if (v11 <= 0x3F)
                    {
                      result = type metadata accessor for PgQuery_FuncExpr(319);
                      if (v12 <= 0x3F)
                      {
                        result = type metadata accessor for PgQuery_NamedArgExpr(319);
                        if (v13 <= 0x3F)
                        {
                          result = type metadata accessor for PgQuery_OpExpr(319);
                          if (v14 <= 0x3F)
                          {
                            result = type metadata accessor for PgQuery_DistinctExpr(319);
                            if (v15 <= 0x3F)
                            {
                              result = type metadata accessor for PgQuery_NullIfExpr(319);
                              if (v16 <= 0x3F)
                              {
                                result = type metadata accessor for PgQuery_ScalarArrayOpExpr(319);
                                if (v17 <= 0x3F)
                                {
                                  result = type metadata accessor for PgQuery_BoolExpr(319);
                                  if (v18 <= 0x3F)
                                  {
                                    result = type metadata accessor for PgQuery_SubLink(319);
                                    if (v19 <= 0x3F)
                                    {
                                      result = type metadata accessor for PgQuery_SubPlan(319);
                                      if (v20 <= 0x3F)
                                      {
                                        result = type metadata accessor for PgQuery_AlternativeSubPlan(319);
                                        if (v21 <= 0x3F)
                                        {
                                          result = type metadata accessor for PgQuery_FieldSelect(319);
                                          if (v22 <= 0x3F)
                                          {
                                            result = type metadata accessor for PgQuery_FieldStore(319);
                                            if (v23 <= 0x3F)
                                            {
                                              result = type metadata accessor for PgQuery_RelabelType(319);
                                              if (v24 <= 0x3F)
                                              {
                                                result = type metadata accessor for PgQuery_CoerceViaIO(319);
                                                if (v25 <= 0x3F)
                                                {
                                                  result = type metadata accessor for PgQuery_ArrayCoerceExpr(319);
                                                  if (v26 <= 0x3F)
                                                  {
                                                    result = type metadata accessor for PgQuery_ConvertRowtypeExpr(319);
                                                    if (v27 <= 0x3F)
                                                    {
                                                      result = type metadata accessor for PgQuery_CollateExpr(319);
                                                      if (v28 <= 0x3F)
                                                      {
                                                        result = type metadata accessor for PgQuery_CaseExpr(319);
                                                        if (v29 <= 0x3F)
                                                        {
                                                          result = type metadata accessor for PgQuery_CaseWhen(319);
                                                          if (v30 <= 0x3F)
                                                          {
                                                            result = type metadata accessor for PgQuery_CaseTestExpr(319);
                                                            if (v31 <= 0x3F)
                                                            {
                                                              result = type metadata accessor for PgQuery_ArrayExpr(319);
                                                              if (v32 <= 0x3F)
                                                              {
                                                                result = type metadata accessor for PgQuery_RowExpr(319);
                                                                if (v33 <= 0x3F)
                                                                {
                                                                  result = type metadata accessor for PgQuery_RowCompareExpr(319);
                                                                  if (v34 <= 0x3F)
                                                                  {
                                                                    result = type metadata accessor for PgQuery_CoalesceExpr(319);
                                                                    if (v35 <= 0x3F)
                                                                    {
                                                                      result = type metadata accessor for PgQuery_MinMaxExpr(319);
                                                                      if (v36 <= 0x3F)
                                                                      {
                                                                        result = type metadata accessor for PgQuery_SQLValueFunction(319);
                                                                        if (v37 <= 0x3F)
                                                                        {
                                                                          result = type metadata accessor for PgQuery_XmlExpr(319);
                                                                          if (v38 <= 0x3F)
                                                                          {
                                                                            result = type metadata accessor for PgQuery_NullTest(319);
                                                                            if (v39 <= 0x3F)
                                                                            {
                                                                              result = type metadata accessor for PgQuery_BooleanTest(319);
                                                                              if (v40 <= 0x3F)
                                                                              {
                                                                                result = type metadata accessor for PgQuery_CoerceToDomain(319);
                                                                                if (v41 <= 0x3F)
                                                                                {
                                                                                  result = type metadata accessor for PgQuery_CoerceToDomainValue(319);
                                                                                  if (v42 <= 0x3F)
                                                                                  {
                                                                                    result = type metadata accessor for PgQuery_SetToDefault(319);
                                                                                    if (v43 <= 0x3F)
                                                                                    {
                                                                                      result = type metadata accessor for PgQuery_CurrentOfExpr(319);
                                                                                      if (v44 <= 0x3F)
                                                                                      {
                                                                                        result = type metadata accessor for PgQuery_NextValueExpr(319);
                                                                                        if (v45 <= 0x3F)
                                                                                        {
                                                                                          result = type metadata accessor for PgQuery_InferenceElem(319);
                                                                                          if (v46 <= 0x3F)
                                                                                          {
                                                                                            result = type metadata accessor for PgQuery_TargetEntry(319);
                                                                                            if (v47 <= 0x3F)
                                                                                            {
                                                                                              result = type metadata accessor for PgQuery_RangeTblRef(319);
                                                                                              if (v48 <= 0x3F)
                                                                                              {
                                                                                                result = type metadata accessor for PgQuery_JoinExpr(319);
                                                                                                if (v49 <= 0x3F)
                                                                                                {
                                                                                                  result = type metadata accessor for PgQuery_FromExpr(319);
                                                                                                  if (v50 <= 0x3F)
                                                                                                  {
                                                                                                    result = type metadata accessor for PgQuery_OnConflictExpr(319);
                                                                                                    if (v51 <= 0x3F)
                                                                                                    {
                                                                                                      result = type metadata accessor for PgQuery_IntoClause(319);
                                                                                                      if (v52 <= 0x3F)
                                                                                                      {
                                                                                                        result = type metadata accessor for PgQuery_RawStmt(319);
                                                                                                        if (v53 <= 0x3F)
                                                                                                        {
                                                                                                          result = type metadata accessor for PgQuery_Query(319);
                                                                                                          if (v54 <= 0x3F)
                                                                                                          {
                                                                                                            result = type metadata accessor for PgQuery_InsertStmt(319);
                                                                                                            if (v55 <= 0x3F)
                                                                                                            {
                                                                                                              result = type metadata accessor for PgQuery_DeleteStmt(319);
                                                                                                              if (v56 <= 0x3F)
                                                                                                              {
                                                                                                                result = type metadata accessor for PgQuery_UpdateStmt(319);
                                                                                                                if (v57 <= 0x3F)
                                                                                                                {
                                                                                                                  result = type metadata accessor for PgQuery_SelectStmt(319);
                                                                                                                  if (v58 <= 0x3F)
                                                                                                                  {
                                                                                                                    result = type metadata accessor for PgQuery_AlterTableStmt(319);
                                                                                                                    if (v59 <= 0x3F)
                                                                                                                    {
                                                                                                                      result = type metadata accessor for PgQuery_AlterTableCmd(319);
                                                                                                                      if (v60 <= 0x3F)
                                                                                                                      {
                                                                                                                        result = type metadata accessor for PgQuery_AlterDomainStmt(319);
                                                                                                                        if (v61 <= 0x3F)
                                                                                                                        {
                                                                                                                          result = type metadata accessor for PgQuery_SetOperationStmt(319);
                                                                                                                          if (v62 <= 0x3F)
                                                                                                                          {
                                                                                                                            result = type metadata accessor for PgQuery_GrantStmt(319);
                                                                                                                            if (v63 <= 0x3F)
                                                                                                                            {
                                                                                                                              result = type metadata accessor for PgQuery_GrantRoleStmt(319);
                                                                                                                              if (v64 <= 0x3F)
                                                                                                                              {
                                                                                                                                result = type metadata accessor for PgQuery_AlterDefaultPrivilegesStmt(319);
                                                                                                                                if (v65 <= 0x3F)
                                                                                                                                {
                                                                                                                                  result = type metadata accessor for PgQuery_ClosePortalStmt(319);
                                                                                                                                  if (v66 <= 0x3F)
                                                                                                                                  {
                                                                                                                                    result = type metadata accessor for PgQuery_ClusterStmt(319);
                                                                                                                                    if (v67 <= 0x3F)
                                                                                                                                    {
                                                                                                                                      result = type metadata accessor for PgQuery_CopyStmt(319);
                                                                                                                                      if (v68 <= 0x3F)
                                                                                                                                      {
                                                                                                                                        result = type metadata accessor for PgQuery_CreateStmt(319);
                                                                                                                                        if (v69 <= 0x3F)
                                                                                                                                        {
                                                                                                                                          result = type metadata accessor for PgQuery_DefineStmt(319);
                                                                                                                                          if (v70 <= 0x3F)
                                                                                                                                          {
                                                                                                                                            result = type metadata accessor for PgQuery_DropStmt(319);
                                                                                                                                            if (v71 <= 0x3F)
                                                                                                                                            {
                                                                                                                                              result = type metadata accessor for PgQuery_TruncateStmt(319);
                                                                                                                                              if (v72 <= 0x3F)
                                                                                                                                              {
                                                                                                                                                result = type metadata accessor for PgQuery_CommentStmt(319);
                                                                                                                                                if (v73 <= 0x3F)
                                                                                                                                                {
                                                                                                                                                  result = type metadata accessor for PgQuery_FetchStmt(319);
                                                                                                                                                  if (v74 <= 0x3F)
                                                                                                                                                  {
                                                                                                                                                    result = type metadata accessor for PgQuery_IndexStmt(319);
                                                                                                                                                    if (v75 <= 0x3F)
                                                                                                                                                    {
                                                                                                                                                      result = type metadata accessor for PgQuery_CreateFunctionStmt(319);
                                                                                                                                                      if (v76 <= 0x3F)
                                                                                                                                                      {
                                                                                                                                                        result = type metadata accessor for PgQuery_AlterFunctionStmt(319);
                                                                                                                                                        if (v77 <= 0x3F)
                                                                                                                                                        {
                                                                                                                                                          result = type metadata accessor for PgQuery_DoStmt(319);
                                                                                                                                                          if (v78 <= 0x3F)
                                                                                                                                                          {
                                                                                                                                                            result = type metadata accessor for PgQuery_RenameStmt(319);
                                                                                                                                                            if (v79 <= 0x3F)
                                                                                                                                                            {
                                                                                                                                                              result = type metadata accessor for PgQuery_RuleStmt(319);
                                                                                                                                                              if (v80 <= 0x3F)
                                                                                                                                                              {
                                                                                                                                                                result = type metadata accessor for PgQuery_NotifyStmt(319);
                                                                                                                                                                if (v81 <= 0x3F)
                                                                                                                                                                {
                                                                                                                                                                  result = type metadata accessor for PgQuery_ListenStmt(319);
                                                                                                                                                                  if (v82 <= 0x3F)
                                                                                                                                                                  {
                                                                                                                                                                    result = type metadata accessor for PgQuery_UnlistenStmt(319);
                                                                                                                                                                    if (v83 <= 0x3F)
                                                                                                                                                                    {
                                                                                                                                                                      result = type metadata accessor for PgQuery_TransactionStmt(319);
                                                                                                                                                                      if (v84 <= 0x3F)
                                                                                                                                                                      {
                                                                                                                                                                        result = type metadata accessor for PgQuery_ViewStmt(319);
                                                                                                                                                                        if (v85 <= 0x3F)
                                                                                                                                                                        {
                                                                                                                                                                          result = type metadata accessor for PgQuery_LoadStmt(319);
                                                                                                                                                                          if (v86 <= 0x3F)
                                                                                                                                                                          {
                                                                                                                                                                            result = type metadata accessor for PgQuery_CreateDomainStmt(319);
                                                                                                                                                                            if (v87 <= 0x3F)
                                                                                                                                                                            {
                                                                                                                                                                              result = type metadata accessor for PgQuery_CreatedbStmt(319);
                                                                                                                                                                              if (v88 <= 0x3F)
                                                                                                                                                                              {
                                                                                                                                                                                result = type metadata accessor for PgQuery_DropdbStmt(319);
                                                                                                                                                                                if (v89 <= 0x3F)
                                                                                                                                                                                {
                                                                                                                                                                                  result = type metadata accessor for PgQuery_VacuumStmt(319);
                                                                                                                                                                                  if (v90 <= 0x3F)
                                                                                                                                                                                  {
                                                                                                                                                                                    result = type metadata accessor for PgQuery_ExplainStmt(319);
                                                                                                                                                                                    if (v91 <= 0x3F)
                                                                                                                                                                                    {
                                                                                                                                                                                      result = type metadata accessor for PgQuery_CreateTableAsStmt(319);
                                                                                                                                                                                      if (v92 <= 0x3F)
                                                                                                                                                                                      {
                                                                                                                                                                                        result = type metadata accessor for PgQuery_CreateSeqStmt(319);
                                                                                                                                                                                        if (v93 <= 0x3F)
                                                                                                                                                                                        {
                                                                                                                                                                                          result = type metadata accessor for PgQuery_AlterSeqStmt(319);
                                                                                                                                                                                          if (v94 <= 0x3F)
                                                                                                                                                                                          {
                                                                                                                                                                                            result = type metadata accessor for PgQuery_VariableSetStmt(319);
                                                                                                                                                                                            if (v95 <= 0x3F)
                                                                                                                                                                                            {
                                                                                                                                                                                              result = type metadata accessor for PgQuery_VariableShowStmt(319);
                                                                                                                                                                                              if (v96 <= 0x3F)
                                                                                                                                                                                              {
                                                                                                                                                                                                result = type metadata accessor for PgQuery_DiscardStmt(319);
                                                                                                                                                                                                if (v97 <= 0x3F)
                                                                                                                                                                                                {
                                                                                                                                                                                                  result = type metadata accessor for PgQuery_CreateTrigStmt(319);
                                                                                                                                                                                                  if (v98 <= 0x3F)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    result = type metadata accessor for PgQuery_CreatePLangStmt(319);
                                                                                                                                                                                                    if (v99 <= 0x3F)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      result = type metadata accessor for PgQuery_CreateRoleStmt(319);
                                                                                                                                                                                                      if (v100 <= 0x3F)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        result = type metadata accessor for PgQuery_AlterRoleStmt(319);
                                                                                                                                                                                                        if (v101 <= 0x3F)
                                                                                                                                                                                                        {
                                                                                                                                                                                                          result = type metadata accessor for PgQuery_DropRoleStmt(319);
                                                                                                                                                                                                          if (v102 <= 0x3F)
                                                                                                                                                                                                          {
                                                                                                                                                                                                            result = type metadata accessor for PgQuery_LockStmt(319);
                                                                                                                                                                                                            if (v103 <= 0x3F)
                                                                                                                                                                                                            {
                                                                                                                                                                                                              result = type metadata accessor for PgQuery_ConstraintsSetStmt(319);
                                                                                                                                                                                                              if (v104 <= 0x3F)
                                                                                                                                                                                                              {
                                                                                                                                                                                                                result = type metadata accessor for PgQuery_ReindexStmt(319);
                                                                                                                                                                                                                if (v105 <= 0x3F)
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  result = type metadata accessor for PgQuery_CheckPointStmt(319);
                                                                                                                                                                                                                  if (v106 <= 0x3F)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    result = type metadata accessor for PgQuery_CreateSchemaStmt(319);
                                                                                                                                                                                                                    if (v107 <= 0x3F)
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                      result = type metadata accessor for PgQuery_AlterDatabaseStmt(319);
                                                                                                                                                                                                                      if (v108 <= 0x3F)
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        result = type metadata accessor for PgQuery_AlterDatabaseSetStmt(319);
                                                                                                                                                                                                                        if (v109 <= 0x3F)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          result = type metadata accessor for PgQuery_AlterRoleSetStmt(319);
                                                                                                                                                                                                                          if (v110 <= 0x3F)
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            result = type metadata accessor for PgQuery_CreateConversionStmt(319);
                                                                                                                                                                                                                            if (v111 <= 0x3F)
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              result = type metadata accessor for PgQuery_CreateCastStmt(319);
                                                                                                                                                                                                                              if (v112 <= 0x3F)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                result = type metadata accessor for PgQuery_CreateOpClassStmt(319);
                                                                                                                                                                                                                                if (v113 <= 0x3F)
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  result = type metadata accessor for PgQuery_CreateOpFamilyStmt(319);
                                                                                                                                                                                                                                  if (v114 <= 0x3F)
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    result = type metadata accessor for PgQuery_AlterOpFamilyStmt(319);
                                                                                                                                                                                                                                    if (v115 <= 0x3F)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                      result = type metadata accessor for PgQuery_PrepareStmt(319);
                                                                                                                                                                                                                                      if (v116 <= 0x3F)
                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                        result = type metadata accessor for PgQuery_ExecuteStmt(319);
                                                                                                                                                                                                                                        if (v117 <= 0x3F)
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                          result = type metadata accessor for PgQuery_DeallocateStmt(319);
                                                                                                                                                                                                                                          if (v118 <= 0x3F)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                            result = type metadata accessor for PgQuery_DeclareCursorStmt(319);
                                                                                                                                                                                                                                            if (v119 <= 0x3F)
                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                              result = type metadata accessor for PgQuery_CreateTableSpaceStmt(319);
                                                                                                                                                                                                                                              if (v120 <= 0x3F)
                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                result = type metadata accessor for PgQuery_DropTableSpaceStmt(319);
                                                                                                                                                                                                                                                if (v121 <= 0x3F)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                  result = type metadata accessor for PgQuery_AlterObjectDependsStmt(319);
                                                                                                                                                                                                                                                  if (v122 <= 0x3F)
                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                    result = type metadata accessor for PgQuery_AlterObjectSchemaStmt(319);
                                                                                                                                                                                                                                                    if (v123 <= 0x3F)
                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                      result = type metadata accessor for PgQuery_AlterOwnerStmt(319);
                                                                                                                                                                                                                                                      if (v124 <= 0x3F)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                        result = type metadata accessor for PgQuery_AlterOperatorStmt(319);
                                                                                                                                                                                                                                                        if (v125 <= 0x3F)
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                          result = type metadata accessor for PgQuery_AlterTypeStmt(319);
                                                                                                                                                                                                                                                          if (v126 <= 0x3F)
                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                            result = type metadata accessor for PgQuery_DropOwnedStmt(319);
                                                                                                                                                                                                                                                            if (v127 <= 0x3F)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                              result = type metadata accessor for PgQuery_ReassignOwnedStmt(319);
                                                                                                                                                                                                                                                              if (v128 <= 0x3F)
                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                result = type metadata accessor for PgQuery_CompositeTypeStmt(319);
                                                                                                                                                                                                                                                                if (v129 <= 0x3F)
                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                  result = type metadata accessor for PgQuery_CreateEnumStmt(319);
                                                                                                                                                                                                                                                                  if (v130 <= 0x3F)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                    result = type metadata accessor for PgQuery_CreateRangeStmt(319);
                                                                                                                                                                                                                                                                    if (v131 <= 0x3F)
                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                      result = type metadata accessor for PgQuery_AlterEnumStmt(319);
                                                                                                                                                                                                                                                                      if (v132 <= 0x3F)
                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                        result = type metadata accessor for PgQuery_AlterTSDictionaryStmt(319);
                                                                                                                                                                                                                                                                        if (v133 <= 0x3F)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                          result = type metadata accessor for PgQuery_AlterTSConfigurationStmt(319);
                                                                                                                                                                                                                                                                          if (v134 <= 0x3F)
                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                            result = type metadata accessor for PgQuery_CreateFdwStmt(319);
                                                                                                                                                                                                                                                                            if (v135 <= 0x3F)
                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                              result = type metadata accessor for PgQuery_AlterFdwStmt(319);
                                                                                                                                                                                                                                                                              if (v136 <= 0x3F)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                result = type metadata accessor for PgQuery_CreateForeignServerStmt(319);
                                                                                                                                                                                                                                                                                if (v137 <= 0x3F)
                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                  result = type metadata accessor for PgQuery_AlterForeignServerStmt(319);
                                                                                                                                                                                                                                                                                  if (v138 <= 0x3F)
                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                    result = type metadata accessor for PgQuery_CreateUserMappingStmt(319);
                                                                                                                                                                                                                                                                                    if (v139 <= 0x3F)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                      result = type metadata accessor for PgQuery_AlterUserMappingStmt(319);
                                                                                                                                                                                                                                                                                      if (v140 <= 0x3F)
                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                        result = type metadata accessor for PgQuery_DropUserMappingStmt(319);
                                                                                                                                                                                                                                                                                        if (v141 <= 0x3F)
                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                          result = type metadata accessor for PgQuery_AlterTableSpaceOptionsStmt(319);
                                                                                                                                                                                                                                                                                          if (v142 <= 0x3F)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                            result = type metadata accessor for PgQuery_AlterTableMoveAllStmt(319);
                                                                                                                                                                                                                                                                                            if (v143 <= 0x3F)
                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                              result = type metadata accessor for PgQuery_SecLabelStmt(319);
                                                                                                                                                                                                                                                                                              if (v144 <= 0x3F)
                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                result = type metadata accessor for PgQuery_CreateForeignTableStmt(319);
                                                                                                                                                                                                                                                                                                if (v145 <= 0x3F)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                  result = type metadata accessor for PgQuery_ImportForeignSchemaStmt(319);
                                                                                                                                                                                                                                                                                                  if (v146 <= 0x3F)
                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                    result = type metadata accessor for PgQuery_CreateExtensionStmt(319);
                                                                                                                                                                                                                                                                                                    if (v147 <= 0x3F)
                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                      result = type metadata accessor for PgQuery_AlterExtensionStmt(319);
                                                                                                                                                                                                                                                                                                      if (v148 <= 0x3F)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                        result = type metadata accessor for PgQuery_AlterExtensionContentsStmt(319);
                                                                                                                                                                                                                                                                                                        if (v149 <= 0x3F)
                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                          result = type metadata accessor for PgQuery_CreateEventTrigStmt(319);
                                                                                                                                                                                                                                                                                                          if (v150 <= 0x3F)
                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                            result = type metadata accessor for PgQuery_AlterEventTrigStmt(319);
                                                                                                                                                                                                                                                                                                            if (v151 <= 0x3F)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                              result = type metadata accessor for PgQuery_RefreshMatViewStmt(319);
                                                                                                                                                                                                                                                                                                              if (v152 <= 0x3F)
                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                result = type metadata accessor for PgQuery_ReplicaIdentityStmt(319);
                                                                                                                                                                                                                                                                                                                if (v153 <= 0x3F)
                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                  result = type metadata accessor for PgQuery_AlterSystemStmt(319);
                                                                                                                                                                                                                                                                                                                  if (v154 <= 0x3F)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                    result = type metadata accessor for PgQuery_CreatePolicyStmt(319);
                                                                                                                                                                                                                                                                                                                    if (v155 <= 0x3F)
                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                      result = type metadata accessor for PgQuery_AlterPolicyStmt(319);
                                                                                                                                                                                                                                                                                                                      if (v156 <= 0x3F)
                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                        result = type metadata accessor for PgQuery_CreateTransformStmt(319);
                                                                                                                                                                                                                                                                                                                        if (v157 <= 0x3F)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                          result = type metadata accessor for PgQuery_CreateAmStmt(319);
                                                                                                                                                                                                                                                                                                                          if (v158 <= 0x3F)
                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                            result = type metadata accessor for PgQuery_CreatePublicationStmt(319);
                                                                                                                                                                                                                                                                                                                            if (v159 <= 0x3F)
                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                              result = type metadata accessor for PgQuery_AlterPublicationStmt(319);
                                                                                                                                                                                                                                                                                                                              if (v160 <= 0x3F)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                result = type metadata accessor for PgQuery_CreateSubscriptionStmt(319);
                                                                                                                                                                                                                                                                                                                                if (v161 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                  result = type metadata accessor for PgQuery_AlterSubscriptionStmt(319);
                                                                                                                                                                                                                                                                                                                                  if (v162 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                    result = type metadata accessor for PgQuery_DropSubscriptionStmt(319);
                                                                                                                                                                                                                                                                                                                                    if (v163 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                      result = type metadata accessor for PgQuery_CreateStatsStmt(319);
                                                                                                                                                                                                                                                                                                                                      if (v164 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                        result = type metadata accessor for PgQuery_AlterCollationStmt(319);
                                                                                                                                                                                                                                                                                                                                        if (v165 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                          result = type metadata accessor for PgQuery_CallStmt(319);
                                                                                                                                                                                                                                                                                                                                          if (v166 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                            result = type metadata accessor for PgQuery_AlterStatsStmt(319);
                                                                                                                                                                                                                                                                                                                                            if (v167 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                              result = type metadata accessor for PgQuery_A_Expr(319);
                                                                                                                                                                                                                                                                                                                                              if (v168 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                result = type metadata accessor for PgQuery_ColumnRef(319);
                                                                                                                                                                                                                                                                                                                                                if (v169 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                  result = type metadata accessor for PgQuery_ParamRef(319);
                                                                                                                                                                                                                                                                                                                                                  if (v170 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                    result = type metadata accessor for PgQuery_A_Const(319);
                                                                                                                                                                                                                                                                                                                                                    if (v171 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                      result = type metadata accessor for PgQuery_FuncCall(319);
                                                                                                                                                                                                                                                                                                                                                      if (v172 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                        result = type metadata accessor for PgQuery_A_Star(319);
                                                                                                                                                                                                                                                                                                                                                        if (v173 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                          result = type metadata accessor for PgQuery_A_Indices(319);
                                                                                                                                                                                                                                                                                                                                                          if (v174 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                            result = type metadata accessor for PgQuery_A_Indirection(319);
                                                                                                                                                                                                                                                                                                                                                            if (v175 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                              result = type metadata accessor for PgQuery_A_ArrayExpr(319);
                                                                                                                                                                                                                                                                                                                                                              if (v176 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                result = type metadata accessor for PgQuery_ResTarget(319);
                                                                                                                                                                                                                                                                                                                                                                if (v177 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                  result = type metadata accessor for PgQuery_MultiAssignRef(319);
                                                                                                                                                                                                                                                                                                                                                                  if (v178 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                    result = type metadata accessor for PgQuery_TypeCast(319);
                                                                                                                                                                                                                                                                                                                                                                    if (v179 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                      result = type metadata accessor for PgQuery_CollateClause(319);
                                                                                                                                                                                                                                                                                                                                                                      if (v180 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                        result = type metadata accessor for PgQuery_SortBy(319);
                                                                                                                                                                                                                                                                                                                                                                        if (v181 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                          result = type metadata accessor for PgQuery_WindowDef(319);
                                                                                                                                                                                                                                                                                                                                                                          if (v182 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                            result = type metadata accessor for PgQuery_RangeSubselect(319);
                                                                                                                                                                                                                                                                                                                                                                            if (v183 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                              result = type metadata accessor for PgQuery_RangeFunction(319);
                                                                                                                                                                                                                                                                                                                                                                              if (v184 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                result = type metadata accessor for PgQuery_RangeTableSample(319);
                                                                                                                                                                                                                                                                                                                                                                                if (v185 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                  result = type metadata accessor for PgQuery_RangeTableFunc(319);
                                                                                                                                                                                                                                                                                                                                                                                  if (v186 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                    result = type metadata accessor for PgQuery_RangeTableFuncCol(319);
                                                                                                                                                                                                                                                                                                                                                                                    if (v187 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                      result = type metadata accessor for PgQuery_TypeName(319);
                                                                                                                                                                                                                                                                                                                                                                                      if (v188 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                        result = type metadata accessor for PgQuery_ColumnDef(319);
                                                                                                                                                                                                                                                                                                                                                                                        if (v189 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                          result = type metadata accessor for PgQuery_IndexElem(319);
                                                                                                                                                                                                                                                                                                                                                                                          if (v190 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                            result = type metadata accessor for PgQuery_Constraint(319);
                                                                                                                                                                                                                                                                                                                                                                                            if (v191 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                              result = type metadata accessor for PgQuery_DefElem(319);
                                                                                                                                                                                                                                                                                                                                                                                              if (v192 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                result = type metadata accessor for PgQuery_RangeTblEntry(319);
                                                                                                                                                                                                                                                                                                                                                                                                if (v193 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                  result = type metadata accessor for PgQuery_RangeTblFunction(319);
                                                                                                                                                                                                                                                                                                                                                                                                  if (v194 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                    result = type metadata accessor for PgQuery_TableSampleClause(319);
                                                                                                                                                                                                                                                                                                                                                                                                    if (v195 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                      result = type metadata accessor for PgQuery_WithCheckOption(319);
                                                                                                                                                                                                                                                                                                                                                                                                      if (v196 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                        result = type metadata accessor for PgQuery_SortGroupClause(319);
                                                                                                                                                                                                                                                                                                                                                                                                        if (v197 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                          result = type metadata accessor for PgQuery_GroupingSet(319);
                                                                                                                                                                                                                                                                                                                                                                                                          if (v198 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                            result = type metadata accessor for PgQuery_WindowClause(319);
                                                                                                                                                                                                                                                                                                                                                                                                            if (v199 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                              result = type metadata accessor for PgQuery_ObjectWithArgs(319);
                                                                                                                                                                                                                                                                                                                                                                                                              if (v200 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                result = type metadata accessor for PgQuery_AccessPriv(319);
                                                                                                                                                                                                                                                                                                                                                                                                                if (v201 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                  result = type metadata accessor for PgQuery_CreateOpClassItem(319);
                                                                                                                                                                                                                                                                                                                                                                                                                  if (v202 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                    result = type metadata accessor for PgQuery_TableLikeClause(319);
                                                                                                                                                                                                                                                                                                                                                                                                                    if (v203 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                      result = type metadata accessor for PgQuery_FunctionParameter(319);
                                                                                                                                                                                                                                                                                                                                                                                                                      if (v204 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                        result = type metadata accessor for PgQuery_LockingClause(319);
                                                                                                                                                                                                                                                                                                                                                                                                                        if (v205 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                          result = type metadata accessor for PgQuery_RowMarkClause(319);
                                                                                                                                                                                                                                                                                                                                                                                                                          if (v206 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                            result = type metadata accessor for PgQuery_XmlSerialize(319);
                                                                                                                                                                                                                                                                                                                                                                                                                            if (v207 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                              result = type metadata accessor for PgQuery_WithClause(319);
                                                                                                                                                                                                                                                                                                                                                                                                                              if (v208 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                result = type metadata accessor for PgQuery_InferClause(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                if (v209 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                  result = type metadata accessor for PgQuery_OnConflictClause(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                  if (v210 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                    result = type metadata accessor for PgQuery_CommonTableExpr(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                    if (v211 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                      result = type metadata accessor for PgQuery_RoleSpec(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                      if (v212 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                        result = type metadata accessor for PgQuery_TriggerTransition(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                        if (v213 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                          result = type metadata accessor for PgQuery_PartitionElem(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                          if (v214 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                            result = type metadata accessor for PgQuery_PartitionSpec(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                            if (v215 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                              result = type metadata accessor for PgQuery_PartitionBoundSpec(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                              if (v216 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                result = type metadata accessor for PgQuery_PartitionRangeDatum(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                                if (v217 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                  result = type metadata accessor for PgQuery_PartitionCmd(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                                  if (v218 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                    result = type metadata accessor for PgQuery_VacuumRelation(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                                    if (v219 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                      result = type metadata accessor for PgQuery_InlineCodeBlock(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if (v220 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                        result = type metadata accessor for PgQuery_CallContext(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                                        if (v221 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                                                          result = type metadata accessor for PgQuery_Integer(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                                          if (v222 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                                                                                            result = type metadata accessor for PgQuery_Float(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if (v223 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                                                                              result = type metadata accessor for PgQuery_String(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                                              if (v224 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                result = type metadata accessor for PgQuery_BitString(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                if (v225 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  result = type metadata accessor for PgQuery_Null(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if (v226 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    result = type metadata accessor for PgQuery_List(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if (v227 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      result = type metadata accessor for PgQuery_IntList(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if (v228 <= 0x3F)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        result = type metadata accessor for PgQuery_OidList(319);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if (v229 <= 0x3F)
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
                                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                            }
                                                                                                                                                                                                                          }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                      }
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                }
                                                                                                                                                                                                              }
                                                                                                                                                                                                            }
                                                                                                                                                                                                          }
                                                                                                                                                                                                        }
                                                                                                                                                                                                      }
                                                                                                                                                                                                    }
                                                                                                                                                                                                  }
                                                                                                                                                                                                }
                                                                                                                                                                                              }
                                                                                                                                                                                            }
                                                                                                                                                                                          }
                                                                                                                                                                                        }
                                                                                                                                                                                      }
                                                                                                                                                                                    }
                                                                                                                                                                                  }
                                                                                                                                                                                }
                                                                                                                                                                              }
                                                                                                                                                                            }
                                                                                                                                                                          }
                                                                                                                                                                        }
                                                                                                                                                                      }
                                                                                                                                                                    }
                                                                                                                                                                  }
                                                                                                                                                                }
                                                                                                                                                              }
                                                                                                                                                            }
                                                                                                                                                          }
                                                                                                                                                        }
                                                                                                                                                      }
                                                                                                                                                    }
                                                                                                                                                  }
                                                                                                                                                }
                                                                                                                                              }
                                                                                                                                            }
                                                                                                                                          }
                                                                                                                                        }
                                                                                                                                      }
                                                                                                                                    }
                                                                                                                                  }
                                                                                                                                }
                                                                                                                              }
                                                                                                                            }
                                                                                                                          }
                                                                                                                        }
                                                                                                                      }
                                                                                                                    }
                                                                                                                  }
                                                                                                                }
                                                                                                              }
                                                                                                            }
                                                                                                          }
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void type metadata completion function for PgQuery_PartitionCmd(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_PartitionBoundSpec?, type metadata accessor for PgQuery_PartitionBoundSpec, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for PgQuery_CreateOpClassItem(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_ObjectWithArgs?, type metadata accessor for PgQuery_ObjectWithArgs, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_TypeName?, type metadata accessor for PgQuery_TypeName, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata completion function for PgQuery_SortGroupClause(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for PgQuery_RangeFunction(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Alias?, type metadata accessor for PgQuery_Alias, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for PgQuery_CreateStatsStmt(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for PgQuery_RoleSpec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = type metadata accessor for UnknownStorage();
  if (v7 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for PgQuery_AlterSubscriptionStmt(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_AlterPublicationStmt(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_CreatePublicationStmt(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_CreateTransformStmt(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_TypeName?, type metadata accessor for PgQuery_TypeName, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_ObjectWithArgs?, type metadata accessor for PgQuery_ObjectWithArgs, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for PgQuery_AlterSystemStmt(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_VariableSetStmt?, type metadata accessor for PgQuery_VariableSetStmt, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_CreateSubscriptionStmt(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_ImportForeignSchemaStmt(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_4224Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_4225Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for PgQuery_AlterTableMoveAllStmt(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_PartitionSpec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v5 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_3768Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_3769Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_4350Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_4351Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for PgQuery_CreateForeignServerStmt(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_AlterFdwStmt(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_AlterTSConfigurationStmt(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_4182Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_4183Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for PgQuery_AlterEnumStmt(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_AlterTSDictionaryStmt(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_CreateUserMappingStmt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v4 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v5 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RoleSpec?, type metadata accessor for PgQuery_RoleSpec, MEMORY[0x1E69E6720]);
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for PgQuery_AlterOpFamilyStmt(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_CreateOpClassStmt(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_TypeName?, type metadata accessor for PgQuery_TypeName, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for PgQuery_CreateConversionStmt(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_AlterRoleSetStmt(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RoleSpec?, type metadata accessor for PgQuery_RoleSpec, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_VariableSetStmt?, type metadata accessor for PgQuery_VariableSetStmt, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for PgQuery_AlterDatabaseSetStmt(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_VariableSetStmt?, type metadata accessor for PgQuery_VariableSetStmt, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_4419Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_4420Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void type metadata completion function for PgQuery_CreateSchemaStmt(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RoleSpec?, type metadata accessor for PgQuery_RoleSpec, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for PgQuery_ReindexStmt(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_4083Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_4084Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for PgQuery_A_ArrayExpr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v4 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_AlterRoleStmt(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RoleSpec?, type metadata accessor for PgQuery_RoleSpec, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_3464Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_3465Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for PgQuery_CreatePLangStmt(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_AlterForeignServerStmt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v4 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_CreateSeqStmt(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for PgQuery_ObjectWithArgs(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_3434Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_3435Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for PgQuery_CreateExtensionStmt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v5 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_TransactionStmt(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_3591Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata completion function for PgQuery_ParamRef(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = type metadata accessor for UnknownStorage();
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_3687Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_3688Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for PgQuery_OidList(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for PgQuery_VacuumRelation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v8 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v9 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, a5, a6, MEMORY[0x1E69E6720]);
      if (v10 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_4029Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a2)
    {
      v14 = v12;
      v15 = *(v13 + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      v18 = *(*(v17 - 8) + 48);
      v19 = a1 + *(a3 + 40);

      return v18(v19, a2, v17);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_4030Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a3)
    {
      v14 = v12;
      v15 = *(v13 + 56);
      v16 = v7 + *(a4 + 36);

      return v15(v16, a2, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v18 = *(*(v17 - 8) + 56);
      v19 = v7 + *(a4 + 40);

      return v18(v19, a2, a2, v17);
    }
  }

  return result;
}

void type metadata completion function for PgQuery_CreateFunctionStmt(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_TypeName?, type metadata accessor for PgQuery_TypeName, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_3395Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_3396Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for PgQuery_WithClause(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v5 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_4677Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_4678Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for PgQuery_DropStmt(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_4464Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_4465Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for PgQuery_DefineStmt(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_3777Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a2)
    {
      v14 = v12;
      v15 = *(v13 + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      v18 = *(*(v17 - 8) + 48);
      v19 = a1 + *(a3 + 28);

      return v18(v19, a2, v17);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_4366Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a3)
    {
      v14 = v12;
      v15 = *(v13 + 56);
      v16 = v7 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v18 = *(*(v17 - 8) + 56);
      v19 = v7 + *(a4 + 28);

      return v18(v19, a2, a2, v17);
    }
  }

  return result;
}

void type metadata completion function for PgQuery_TableLikeClause(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  type metadata accessor for UnknownStorage();
  if (v9 <= 0x3F)
  {
    type metadata accessor for PgQuery_Node.OneOf_Node?(319, a6, a7, MEMORY[0x1E69E6720]);
    if (v10 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_3723Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_3724Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}