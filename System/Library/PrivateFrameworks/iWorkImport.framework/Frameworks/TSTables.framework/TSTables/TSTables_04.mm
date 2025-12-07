void *sub_221159D74(void *a1, void *a2, uint64_t a3, _OWORD **a4)
{
  v4 = a2[1];
  v5 = v4 ^ *a2;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_22;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4 ^ *a2;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_22;
    }

LABEL_21:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_22;
    }
  }

  if (v10[2] != *a2 || v10[3] != v4)
  {
    goto LABEL_21;
  }

  return v10;
}

void sub_221159FD0(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      __p[5] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_22115A034(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 |= 3u;
  *&v4.f64[0] = 0x8000000080000000;
  *&v4.f64[1] = 0x8000000080000000;
  *(v3 + 8) = vnegq_f64(v4);
  *(v3 + 24) = 0;
  result = TSUIndexSet::operator=();
  *(a1 + 8) = v3 + 32;
  return result;
}

uint64_t sub_22115A08C(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_22107C148();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_22115A1B8(a1, v6);
  }

  v7 = 32 * v2;
  v15 = 0;
  v16 = v7;
  v17 = (32 * v2);
  *v7 |= 3u;
  *&v8.f64[0] = 0x8000000080000000;
  *&v8.f64[1] = 0x8000000080000000;
  *(v7 + 8) = vnegq_f64(v8);
  *(v7 + 24) = 0;
  TSUIndexSet::operator=();
  *&v17 = v17 + 32;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  sub_22115A200(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_22115A2D0(&v15);
  return v14;
}

void sub_22115A1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_22115A2D0(va);
  _Unwind_Resume(a1);
}

void sub_22115A1B8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_22107C238();
}

void sub_22115A200(uint64_t a1, TSUIndexSet *a2, TSUIndexSet *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    *&v8.f64[0] = 0x8000000080000000;
    *&v8.f64[1] = 0x8000000080000000;
    v10 = vnegq_f64(v8);
    do
    {
      v9 = a4 + v7 * 32;
      *v9 = *(a4 + v7 * 32) | 3;
      *(v9 + 8) = v10;
      *(v9 + 24) = 0;
      TSUIndexSet::operator=();
      ++v7;
    }

    while (&v6[v7] != a3);
    while (v6 != a3)
    {
      TSUIndexSet::~TSUIndexSet(v6++);
    }
  }
}

void sub_22115A2A8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 32);
    v5 = -v2;
    do
    {
      TSUIndexSet::~TSUIndexSet(v4);
      v4 = (v6 - 32);
      v5 += 32;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_22115A2D0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    TSUIndexSet::~TSUIndexSet((i - 32));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_22115A320(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      sub_22107C148();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_2210874C4(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void *sub_22115A450(void *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_22115A698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221087E7C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22115A6AC(uint64_t a1)
{
  sub_221159784(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_22115A6E8(uint64_t a1)
{
  sub_221159AE8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_22115A724(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        TSUIndexSet::~TSUIndexSet(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_22115A8D8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSCETrackedReferenceTSPObjectDeprecated;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void TSTRegisterPersistentClasses(void *a1)
{
  v207 = a1;
  v1 = TST::TableInfoArchive::default_instance(v207);
  google::protobuf::internal::AssignDescriptors();
  v3 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v2, 6000, v1, off_2812E4498[54], "TSTTableInfo");
  v4 = TST::TableModelArchive::default_instance(v3);
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v5, 6001, v4, off_2812E4498[84], "TSTTableModel");
  v7 = TST::TableStyleArchive::default_instance(v6);
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v8, 6003, v7, off_2812E4498[160], "TSTTableStyle");
  v10 = TST::CellStyleArchive::default_instance(v9);
  google::protobuf::internal::AssignDescriptors();
  v12 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v11, 6004, v10, off_2812E4498[162], "TSTCellStyle");
  v13 = TST::ConditionalStyleSetArchive::default_instance(v12);
  google::protobuf::internal::AssignDescriptors();
  v15 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v14, 6010, v13, off_2812E4498[178], "TSTConditionalStyleSet");
  v16 = TST::Tile::default_instance(v15);
  google::protobuf::internal::AssignDescriptors();
  v18 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v17, 6002, v16, off_2812E4498[18], "TSTTableTile");
  v19 = TST::TableDataList::default_instance(v18);
  google::protobuf::internal::AssignDescriptors();
  v21 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v20, 6005, v19, off_2812E4498[38], "TSTTableDataList");
  v22 = TST::TableDataListSegment::default_instance(v21);
  google::protobuf::internal::AssignDescriptors();
  v24 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v23, 6011, v22, off_2812E4498[40], "TSTTableDataListSegment");
  v25 = TST::HeaderStorageBucket::default_instance(v24);
  google::protobuf::internal::AssignDescriptors();
  v27 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v26, 6006, v25, off_2812E4498[48], "TSTTableHeaderStorageBucket");
  v28 = TST::WPTableInfoArchive::default_instance(v27);
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v29, 6007, v28, off_2812E4498[58], "TSTWPTableInfo");
  v30 = sub_2216E1F08();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v31, 6009, v30, off_2812E4660[14], "TSTTableStrokePreset");
  v32 = sub_2216E15C8();
  google::protobuf::internal::AssignDescriptors();
  v34 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v33, 6008, v32, off_2812E4660[12], "TSTTableStylePreset");
  v35 = TST::SelectionArchive::default_instance(v34);
  google::protobuf::internal::AssignDescriptors();
  v37 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v36, 6030, v35, off_2812E4498[142], "TSTArchivedCellSelection");
  v38 = TST::DeathhawkRdar39989167CellSelectionArchive::default_instance(v37);
  google::protobuf::internal::AssignDescriptors();
  v40 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v39, 6032, v38, off_2812E4498[144], "TSTArchivedRdar39989167CellSelection");
  v41 = TST::StrokeSelectionArchive::default_instance(v40);
  google::protobuf::internal::AssignDescriptors();
  v43 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v42, 6295, v41, off_2812E4498[146], "TSTArchivedStrokeSelection");
  v44 = TST::AutofillSelectionArchive::default_instance(v43);
  google::protobuf::internal::AssignDescriptors();
  v46 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v45, 6311, v44, off_2812E4498[154], "TSTArchivedAutofillSelection");
  v47 = TST::CellMapArchive::default_instance(v46);
  google::protobuf::internal::AssignDescriptors();
  v49 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v48, 6031, v47, off_2812E4498[104], "TSTCellMap");
  v50 = TST::ConcurrentCellMapArchive::default_instance(v49);
  google::protobuf::internal::AssignDescriptors();
  v52 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v51, 6033, v50, off_2812E4498[110], "TSTConcurrentCellMap");
  v53 = TST::ConcurrentCellListArchive::default_instance(v52);
  google::protobuf::internal::AssignDescriptors();
  v55 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v54, 6034, v53, off_2812E4498[114], "TSTConcurrentCellList");
  v56 = TST::FormulaEqualsTokenAttachmentArchive::default_instance(v55);
  google::protobuf::internal::AssignDescriptors();
  v58 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v57, 6179, v56, off_2812E4498[286], "TSTFormulaEqualsTokenAttachment");
  v59 = TST::TokenAttachmentArchive::default_instance(v58);
  google::protobuf::internal::AssignDescriptors();
  v61 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v60, 6181, v59, off_2812E4498[196], "TSTWPTokenAttachment");
  v62 = TST::ExpressionNodeArchive::default_instance(v61);
  google::protobuf::internal::AssignDescriptors();
  v64 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v63, 6182, v62, off_2812E4498[198], "TSTExpressionNode");
  v65 = TST::BooleanNodeArchive::default_instance(v64);
  google::protobuf::internal::AssignDescriptors();
  v67 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v66, 6183, v65, off_2812E4498[200], "TSTBooleanNode");
  v68 = TST::NumberNodeArchive::default_instance(v67);
  google::protobuf::internal::AssignDescriptors();
  v70 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v69, 6184, v68, off_2812E4498[202], "TSTNumberNode");
  v71 = TST::StringNodeArchive::default_instance(v70);
  google::protobuf::internal::AssignDescriptors();
  v73 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v72, 6185, v71, off_2812E4498[204], "TSTStringNode");
  v74 = TST::ArrayNodeArchive::default_instance(v73);
  google::protobuf::internal::AssignDescriptors();
  v76 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v75, 6186, v74, off_2812E4498[208], "TSTArrayNode");
  v77 = TST::ListNodeArchive::default_instance(v76);
  google::protobuf::internal::AssignDescriptors();
  v79 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v78, 6187, v77, off_2812E4498[210], "TSTListNode");
  v80 = TST::VariableNodeArchive::default_instance(v79);
  google::protobuf::internal::AssignDescriptors();
  v82 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v81, 6298, v80, off_2812E4498[232], "TSTVariableNode");
  v83 = TST::SpillOriginRefNodeArchive::default_instance(v82);
  google::protobuf::internal::AssignDescriptors();
  v85 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v84, 6384, v83, off_2812E4498[234], "TSTSpillOriginRefNode");
  v86 = TST::OperatorNodeArchive::default_instance(v85);
  google::protobuf::internal::AssignDescriptors();
  v88 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v87, 6188, v86, off_2812E4498[212], "TSTOperatorNode");
  v89 = TST::PostfixOperatorNodeArchive::default_instance(v88);
  google::protobuf::internal::AssignDescriptors();
  v91 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v90, 6194, v89, off_2812E4498[214], "TSTPostfixOperatorNode");
  v92 = TST::PrefixOperatorNodeArchive::default_instance(v91);
  google::protobuf::internal::AssignDescriptors();
  v94 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v93, 6195, v92, off_2812E4498[216], "TSTPrefixOperatorNode");
  v95 = TST::FunctionNodeArchive::default_instance(v94);
  google::protobuf::internal::AssignDescriptors();
  v97 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v96, 6189, v95, off_2812E4498[218], "TSTFunctionNode");
  v98 = TST::FunctionEndNodeArchive::default_instance(v97);
  google::protobuf::internal::AssignDescriptors();
  v100 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v99, 6196, v98, off_2812E4498[220], "TSTFunctionEndNode");
  v101 = TST::DateNodeArchive::default_instance(v100);
  google::protobuf::internal::AssignDescriptors();
  v103 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v102, 6190, v101, off_2812E4498[222], "TSTDateNode");
  v104 = TST::ReferenceNodeArchive::default_instance(v103);
  google::protobuf::internal::AssignDescriptors();
  v106 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v105, 6191, v104, off_2812E4498[224], "TSTReferenceNode");
  v107 = TST::DurationNodeArchive::default_instance(v106);
  google::protobuf::internal::AssignDescriptors();
  v109 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v108, 6192, v107, off_2812E4498[226], "TSTDurationNode");
  v110 = TST::ArgumentPlaceholderNodeArchive::default_instance(v109);
  google::protobuf::internal::AssignDescriptors();
  v112 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v111, 6193, v110, off_2812E4498[228], "TSTArgumentPlaceholderNode");
  v113 = TST::IdentifierNodeArchive::default_instance(v112);
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v114, 6235, v113, off_2812E4498[206], "TSTIdentifierNode");
  v117 = objc_msgSend_setDeprecatedMessageType_(v207, v115, 6236, v116);
  v118 = TST::MergeRegionMapArchive::default_instance(v117);
  google::protobuf::internal::AssignDescriptors();
  v120 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v119, 6144, v118, off_2812E4498[102], "TSTMergeRegionMap");
  v121 = TST::EmptyExpressionNodeArchive::default_instance(v120);
  google::protobuf::internal::AssignDescriptors();
  v123 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v122, 6197, v121, off_2812E4498[230], "TSTEmptyExpressionNode");
  v124 = TST::LayoutHintArchive::default_instance(v123);
  google::protobuf::internal::AssignDescriptors();
  v126 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v125, 6198, v124, off_2812E4498[236], "TSTArchivedLayoutHint");
  v127 = TST::CompletionTokenAttachmentArchive::default_instance(v126);
  google::protobuf::internal::AssignDescriptors();
  v129 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v128, 6199, v127, off_2812E4498[238], "TSTCompletionToken");
  v130 = TST::TableDataList::default_instance(v129);
  v132 = objc_msgSend_setUpgradeMessageType_messagePrototype_unarchiveClassname_(v207, v131, 6201, v130, "TSTTableDataList");
  v133 = TST::HiddenStateFormulaOwnerArchive::default_instance(v132);
  google::protobuf::internal::AssignDescriptors();
  v135 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v134, 6204, v133, off_2812E4498[240], "TSTHiddenStateFormulaOwner");
  v136 = TST::PopUpMenuModel::default_instance(v135);
  google::protobuf::internal::AssignDescriptors();
  v138 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v137, 6206, v136, off_2812E4498[26], "TSTPopUpMenuModel");
  v139 = TST::RichTextPayloadArchive::default_instance(v138);
  google::protobuf::internal::AssignDescriptors();
  v141 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v140, 6218, v139, off_2812E4498[284], "TSTRichTextPayload");
  v142 = TST::FilterSetArchive::default_instance(v141);
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v143, 6220, v142, off_2812E4498[180], "TSTTableFilterSet");
  v146 = objc_msgSend_setDeprecatedMessageType_(v207, v144, 6219, v145);
  v147 = TST::TableStyleNetworkArchive::default_instance(v146);
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v148, 6247, v147, off_2812E4498[60], "TSTTableStyleNetwork");
  objc_msgSend_setDeprecatedMessageType_(v207, v149, 6248, v150);
  v153 = objc_msgSend_setDeprecatedMessageType_(v207, v151, 6249, v152);
  v154 = TST::ColumnRowUIDMapArchive::default_instance(v153);
  google::protobuf::internal::AssignDescriptors();
  v156 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v155, 6267, v154, off_2812E4498[90], "TSTColumnRowUIDMap");
  v157 = TST::SummaryModelArchive::default_instance(v156);
  google::protobuf::internal::AssignDescriptors();
  v159 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v158, 6316, v157, off_2812E4498[86], "TSTSummaryModel");
  v160 = TST::SummaryCellVendorArchive::default_instance(v159);
  google::protobuf::internal::AssignDescriptors();
  v162 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v161, 6317, v160, off_2812E4498[302], "TSTSummaryCellVendor");
  v163 = TST::CategoryOrderArchive::default_instance(v162);
  google::protobuf::internal::AssignDescriptors();
  v165 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v164, 6318, v163, off_2812E4498[304], "TSTCategoryOrder");
  v166 = TST::StrokeSidecarArchive::default_instance(v165);
  google::protobuf::internal::AssignDescriptors();
  v168 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v167, 6305, v166, off_2812E4498[96], "TSTStrokeSidecar");
  v169 = TST::StrokeLayerArchive::default_instance(v168);
  google::protobuf::internal::AssignDescriptors();
  v171 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v170, 6306, v169, off_2812E4498[94], "TSTStrokeLayer");
  v172 = TST::PencilAnnotationArchive::default_instance(v171);
  google::protobuf::internal::AssignDescriptors();
  v174 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v173, 6363, v172, off_2812E4498[250], "TSTPencilAnnotation");
  v175 = TST::HeaderNameMgrTileArchive::default_instance(v174);
  google::protobuf::internal::AssignDescriptors();
  v177 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v176, 6365, v175, off_2812E4498[310], "TSTHeaderNameMgrTile");
  v178 = TST::HeaderNameMgrArchive::default_instance(v177);
  google::protobuf::internal::AssignDescriptors();
  v180 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v179, 6366, v178, off_2812E4498[314], "TSTHeaderNameMgr");
  v181 = TST::PivotOwnerArchive::default_instance(v180);
  google::protobuf::internal::AssignDescriptors();
  v183 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v182, 6370, v181, off_2812E4498[282], "TSTPivotOwner");
  v184 = TST::PivotGroupingColumnOptionsMapArchive::default_instance(v183);
  google::protobuf::internal::AssignDescriptors();
  v186 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v185, 6374, v184, off_2812E4498[280], "TSTPivotGroupingColumnOptionsMap");
  v187 = TST::PivotOrderArchive::default_instance(v186);
  google::protobuf::internal::AssignDescriptors();
  v189 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v188, 6369, v187, off_2812E4498[306], "TSTPivotRowColumnOrder");
  v190 = TST::CategoryOwnerRefArchive::default_instance(v189);
  google::protobuf::internal::AssignDescriptors();
  v192 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v191, 6372, v190, off_2812E4498[278], "TSTCategoryOwner");
  v193 = TST::GroupByArchive::default_instance(v192);
  google::protobuf::internal::AssignDescriptors();
  v195 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v194, 6373, v193, off_2812E4498[274], "TSTGroupBy");
  v196 = TST::GroupByArchive_AggregatorArchive::default_instance(v195);
  google::protobuf::internal::AssignDescriptors();
  v198 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v197, 6382, v196, off_2812E4498[266], "TSTAggregator");
  v199 = TST::GroupByArchive_GroupNodeArchive::default_instance(v198);
  google::protobuf::internal::AssignDescriptors();
  v201 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v200, 6383, v199, off_2812E4498[272], "TSTGroupNode");
  v202 = TST::CellDiffArray::default_instance(v201);
  google::protobuf::internal::AssignDescriptors();
  v204 = objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v203, 6367, v202, off_2812E4498[124], "TSTCellDiffArray");
  v205 = TST::CellDiffArraySegment::default_instance(v204);
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v207, v206, 6368, v205, off_2812E4498[126], "TSTCellDiffArraySegment");
}

void sub_22115BEB8(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_22115CA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  TST::CellDiffArchive::~CellDiffArchive(va);
  _Unwind_Resume(a1);
}

TSCEASTFunctionElement *sub_22115CB54(TSCEASTIteratorBase *a1, TSCEASTFunctionElement *this, uint64_t a3, uint64_t a4)
{
  v7 = TSCEASTFunctionElement::functionIndex(this, a1, a3, a4);
  sub_22115D72C(a1 + 17, &v7, &v7);
  return this;
}

uint64_t sub_22115CBA4(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 80))(a2, a1);
  if (v4)
  {
    v9 = objc_msgSend_functionIndex(v4, v5, v6, v7);
    sub_22115D960((a1 + 136), &v9, &v9);
  }

  return a2;
}

uint64_t sub_22115CC48(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 80))(a2, a1);
  if (v4)
  {
    v9 = objc_msgSend_functionIndex(v4, v5, v6, v7);
    sub_22115D960((a1 + 136), &v9, &v9);
  }

  return a2;
}

void sub_22115CE3C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = TSCEFunctionsInUse;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_22115CF70(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22115D274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_22115D6D8(va);

  _Unwind_Resume(a1);
}

void sub_22115D5CC(TSCEASTStreamIterator *a1)
{
  *a1 = &unk_2834A22D0;
  sub_2210BDEC0(a1 + 136);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);

  JUMPOUT(0x223DA1450);
}

uint64_t sub_22115D634(uint64_t a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3)
{
  TSCEASTStreamIterator::TSCEASTStreamIterator(a1, a2, a3);
  *v5 = &unk_2834A22D0;
  *(v5 + 136) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 168) = 1065353216;
  v6 = TSCEFormulaRewriteContext::containingCell(a3);
  v7 = *&v6->var0.var0.coordinate.row;
  *(a1 + 192) = v6->var0.var0._tableUID._upper;
  *(a1 + 176) = v7;
  *(a1 + 96) = 1;
  return a1;
}

void sub_22115D6BC(_Unwind_Exception *a1)
{
  sub_2210BDEC0(v2);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(v1, v4);
  _Unwind_Resume(a1);
}

void sub_22115D6D8(TSCEASTStreamIterator *a1)
{
  *a1 = &unk_2834A22D0;
  sub_2210BDEC0(a1 + 136);

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
}

uint64_t **sub_22115D72C(void *a1, unsigned __int16 *a2, _WORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % a1[1];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 8) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

uint64_t **sub_22115D960(void *a1, unsigned __int16 *a2, _WORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % a1[1];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 8) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

void sub_22115DB94(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_22107C238();
}

uint64_t **sub_22115DBD8(void *a1, unsigned __int16 *a2, uint64_t a3, _WORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % a1[1];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 8) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_22115E36C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(*(*(a1 + 32) + 80), a2, a2, a4);
  objc_msgSend_p_convertToUuidBasedCellListUsingTableInfo_pruneCategorizedCells_(v6, v5, *(a1 + 40), *(a1 + 48));
}

void **sub_22115ECD8(void **result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      sub_2210BC5FC(result, a2);
    }

    sub_22107C148();
  }

  return result;
}

void sub_22115EDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2210BC7C0(va);
  _Unwind_Resume(a1);
}

void sub_22115F32C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 48), a2, a2, a4);
  objc_msgSend_p_accumulateBordersConcurrentlyUsingBlock_accumulateCellsConcurrentlyUsingBlock_(v6, v5, *(a1 + 32), *(a1 + 40));
}

void sub_22115F950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22115FACC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), a2, a2, a4);
  objc_msgSend_p_clearDataListIDs(v7, v4, v5, v6);
}

__n128 sub_2211600C4(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_221160114(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 8);
        v3 -= 8;
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_22116CA58(a1, v5);
  }
}

void sub_22116019C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(*(*(a1 + 32) + 80), a2, a2, a4);
  v10 = objc_msgSend_gatherer(TSTCellRegionGatherer, v7, v8, v9);
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0x7FFFFFFF;
  v28 = 0;
  v29 = &v28;
  v30 = 0x4012000000;
  v31 = sub_2211603E4;
  v32 = nullsub_14;
  v33 = &unk_22188E88F;
  v34 = *MEMORY[0x277D81490];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_2211603F4;
  v22[3] = &unk_27845FC70;
  v25 = *(a1 + 48);
  v23 = *(a1 + 40);
  v26 = &v35;
  v27 = &v28;
  v11 = v10;
  v24 = v11;
  objc_msgSend_p_simpleInvokeBlock_(v6, v12, v22, v13);
  v14 = *(v29 + 14) | 0x100000000;
  v21.origin.row = *(v36 + 6);
  v21.origin.column = v29[6];
  v21.size = v14;
  if (TSUCellRect::isValid(&v21))
  {
    objc_msgSend_addRange_(v11, v15, *&v21.origin, *&v21.size);
  }

  v18 = objc_msgSend_gatheredCellRegion(v11, v15, v16, v17);
  v19 = *(*(*(a1 + 56) + 8) + 48);
  v20 = *(v19 + 8 * a2);
  *(v19 + 8 * a2) = v18;

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v35, 8);
}

void sub_221160390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 96), 8);

  _Unwind_Resume(a1);
}

__n128 sub_2211603E4(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void *sub_2211603F4(uint64_t a1, _OWORD *a2, unint64_t a3)
{
  result = (*(*(a1 + 48) + 16))();
  if (result)
  {
    if (a3 == 0x7FFFFFFF || (a3 & 0xFFFF00000000) == 0x7FFF00000000)
    {
      v9 = *(a1 + 32);
      v10 = a2[1];
      v17[0] = *a2;
      v17[1] = v10;
      result = objc_msgSend_cellIDForCellUID_(v9, v7, v17, v8);
      a3 = result;
    }

    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 24);
    if (v12 != 0x7FFFFFFF)
    {
      v13 = *(*(a1 + 64) + 8);
      if (v12 == a3)
      {
        v14 = *(v13 + 56);
        if (v14 + *(v13 + 48) == WORD2(a3))
        {
          *(v13 + 56) = v14 + 1;
        }

        else
        {
          result = objc_msgSend_addRange_(*(a1 + 40), v7, a3 | (*(v13 + 48) << 32), *(v13 + 56) | 0x100000000);
          v16 = *(*(a1 + 64) + 8);
          *(v16 + 48) = WORD2(a3);
          *(v16 + 56) = 1;
        }

        return result;
      }

      result = objc_msgSend_addRange_(*(a1 + 40), v7, v12 & 0xFFFF0000FFFFFFFFLL | (*(v13 + 48) << 32), *(v13 + 56) | 0x100000000);
      v11 = *(*(a1 + 56) + 8);
    }

    *(v11 + 24) = a3;
    v15 = *(*(a1 + 64) + 8);
    *(v15 + 48) = WORD2(a3);
    *(v15 + 56) = 1;
  }

  return result;
}

void sub_221160BA4(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(*(a1[4] + 80), a2, a2, a4);
  objc_msgSend_p_enumerateCellsAddedAndRemovedOfType_usingBlock_(v6, v5, a1[6], a1[5]);
}

void sub_221160DEC(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_objectAtIndexedSubscript_(*(a1[4] + 80), a2, a2, a4);
  objc_msgSend_p_enumerateCellsAddedOfType_usingBlock_(v6, v5, a1[6], a1[5]);
}

void sub_221161020(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_objectAtIndexedSubscript_(*(*(a1 + 32) + 80), a2, a2, a4);
  objc_msgSend_p_enumerateCellsAddedAndRemovedForFormatsUsingBlock_(v7, v5, *(a1 + 40), v6);
}

void sub_221161330(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), a2, a2, a4);
  objc_msgSend_p_enumerateRowsOfCellsConcurrentlyUsingBlock_(v7, v5, *(a1 + 32), v6);
}

void sub_2211616C0(uint64_t a1, uint64_t a2)
{
  if (a2 > 4)
  {
    if (a2 > 7)
    {
      switch(a2)
      {
        case 8:
          v21 = *(a1 + 32);
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = sub_221162438;
          v27[3] = &unk_27845FD60;
          v28 = *(a1 + 104);
          objc_msgSend_enumerateCellsAddedAndRemovedOfType_withOptions_usingBlock_(v21, v22, 8, 0, v27);
          v4 = v28;
          break;
        case 9:
          v15 = *(a1 + 32);
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = sub_221162568;
          v25[3] = &unk_27845FD60;
          v26 = *(a1 + 112);
          objc_msgSend_enumerateCellsAddedAndRemovedOfType_withOptions_usingBlock_(v15, v16, 9, 0, v25);
          v4 = v26;
          break;
        case 10:
          v7 = *(a1 + 32);
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = sub_221162698;
          v23[3] = &unk_27845FD60;
          v24 = *(a1 + 120);
          objc_msgSend_enumerateCellsAddedAndRemovedOfType_withOptions_usingBlock_(v7, v8, 10, 0, v23);
          v4 = v24;
          break;
        default:
          return;
      }
    }

    else if (a2 == 5)
    {
      v19 = *(a1 + 32);
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = sub_2211620A8;
      v33[3] = &unk_27845FD60;
      v34 = *(a1 + 80);
      objc_msgSend_enumerateCellsAddedAndRemovedOfType_withOptions_usingBlock_(v19, v20, 5, 0, v33);
      v4 = v34;
    }

    else
    {
      v2 = *(a1 + 32);
      if (a2 == 6)
      {
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = sub_2211621D8;
        v31[3] = &unk_27845FD60;
        v32 = *(a1 + 88);
        objc_msgSend_enumerateCellsAddedAndRemovedOfType_withOptions_usingBlock_(v2, v14, 6, 0, v31);
        v4 = v32;
      }

      else
      {
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = sub_221162308;
        v29[3] = &unk_27845FD60;
        v30 = *(a1 + 96);
        objc_msgSend_enumerateCellsAddedAndRemovedOfType_withOptions_usingBlock_(v2, v3, 7, 0, v29);
        v4 = v30;
      }
    }

    goto LABEL_26;
  }

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v17 = *(a1 + 32);
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = sub_221161D94;
      v39[3] = &unk_27845FD60;
      v40 = *(a1 + 56);
      objc_msgSend_enumerateCellsAddedAndRemovedOfType_withOptions_usingBlock_(v17, v18, 2, 0, v39);
      v4 = v40;
    }

    else
    {
      v5 = *(a1 + 32);
      if (a2 == 3)
      {
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = sub_221161EC4;
        v37[3] = &unk_27845FD60;
        v38 = *(a1 + 64);
        objc_msgSend_enumerateCellsAddedAndRemovedOfType_withOptions_usingBlock_(v5, v13, 3, 0, v37);
        v4 = v38;
      }

      else
      {
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = sub_221161F78;
        v35[3] = &unk_27845FD60;
        v36 = *(a1 + 72);
        objc_msgSend_enumerateCellsAddedAndRemovedOfType_withOptions_usingBlock_(v5, v6, 4, 0, v35);
        v4 = v36;
      }
    }

    goto LABEL_26;
  }

  if (!a2)
  {
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = sub_221161C48;
    v41[3] = &unk_27845FD60;
    v11 = *(a1 + 32);
    v42 = *(a1 + 40);
    objc_msgSend_enumerateCellsAddedAndRemovedOfType_withOptions_usingBlock_(v11, v12, 0, 0, v41);
    v4 = v42;
LABEL_26:

    return;
  }

  if (a2 == 1)
  {
    v9 = *(a1 + 48);
    v10 = *(a1 + 32);

    MEMORY[0x2821F9670](v10, sel_p_enumerateCellsAddedAndRemovedForFormatsWithOptions_usingBlock_, 0, v9);
  }
}

void sub_221161C48(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v27 = a4;
  v7 = a5;
  v11 = objc_msgSend_stringValue(v27, v8, v9, v10);
  if (v11)
  {
  }

  else
  {
    v15 = objc_msgSend_stringValue(v7, v12, v13, v14);

    if (!v15)
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTConcurrentCellMap updateDataListsConcurrentlyUsingCommentStorageBlock:conditionalStyleSetBlock:controlCellSpecBlock:formulaBlock:formulaErrorBlock:importWarningSetBlock:richTextBlock:stringBlock:styleBlock:customFormatBlock:formatBlock:]_block_invoke_2", v17);
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v21);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 587, 0, "should only be enumerating the cells of interest (stringValue)");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_221161D94(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v25 = a4;
  v7 = a5;
  if ((objc_msgSend_hasFormula(v25, v8, v9, v10) & 1) == 0 && (objc_msgSend_hasFormula(v7, v11, v12, v13) & 1) == 0)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTConcurrentCellMap updateDataListsConcurrentlyUsingCommentStorageBlock:conditionalStyleSetBlock:controlCellSpecBlock:formulaBlock:formulaErrorBlock:importWarningSetBlock:richTextBlock:stringBlock:styleBlock:customFormatBlock:formatBlock:]_block_invoke_3", v15);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 594, 0, "should only be enumerating the cells of interest (hasFormula)");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_221161EC4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v20 = a4;
  v7 = a5;
  if ((objc_msgSend_hasCellStyle(v20, v8, v9, v10) & 1) != 0 || (objc_msgSend_hasCellStyle(v7, v11, v12, v13) & 1) != 0 || (objc_msgSend_hasTextStyle(v20, v14, v15, v16) & 1) != 0 || objc_msgSend_hasTextStyle(v7, v17, v18, v19))
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_221161F78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v25 = a4;
  v7 = a5;
  if ((objc_msgSend_hasFormulaAnyError(v25, v8, v9, v10) & 1) == 0 && (objc_msgSend_hasFormulaAnyError(v7, v11, v12, v13) & 1) == 0)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTConcurrentCellMap updateDataListsConcurrentlyUsingCommentStorageBlock:conditionalStyleSetBlock:controlCellSpecBlock:formulaBlock:formulaErrorBlock:importWarningSetBlock:richTextBlock:stringBlock:styleBlock:customFormatBlock:formatBlock:]_block_invoke_5", v15);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 606, 0, "should only be enumerating the cells of interest (hasFormulaAnyError)");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_2211620A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v25 = a4;
  v7 = a5;
  if ((objc_msgSend_hasRichText(v25, v8, v9, v10) & 1) == 0 && (objc_msgSend_hasRichText(v7, v11, v12, v13) & 1) == 0)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTConcurrentCellMap updateDataListsConcurrentlyUsingCommentStorageBlock:conditionalStyleSetBlock:controlCellSpecBlock:formulaBlock:formulaErrorBlock:importWarningSetBlock:richTextBlock:stringBlock:styleBlock:customFormatBlock:formatBlock:]_block_invoke_6", v15);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 611, 0, "should only be enumerating the cells of interest (hasRichText)");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_2211621D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v25 = a4;
  v7 = a5;
  if ((objc_msgSend_hasConditionalStyle(v25, v8, v9, v10) & 1) == 0 && (objc_msgSend_hasConditionalStyle(v7, v11, v12, v13) & 1) == 0)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTConcurrentCellMap updateDataListsConcurrentlyUsingCommentStorageBlock:conditionalStyleSetBlock:controlCellSpecBlock:formulaBlock:formulaErrorBlock:importWarningSetBlock:richTextBlock:stringBlock:styleBlock:customFormatBlock:formatBlock:]_block_invoke_7", v15);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 616, 0, "should only be enumerating the cells of interest (hasConditionalStyle)");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_221162308(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v25 = a4;
  v7 = a5;
  if ((objc_msgSend_hasCommentStorage(v25, v8, v9, v10) & 1) == 0 && (objc_msgSend_hasCommentStorage(v7, v11, v12, v13) & 1) == 0)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTConcurrentCellMap updateDataListsConcurrentlyUsingCommentStorageBlock:conditionalStyleSetBlock:controlCellSpecBlock:formulaBlock:formulaErrorBlock:importWarningSetBlock:richTextBlock:stringBlock:styleBlock:customFormatBlock:formatBlock:]_block_invoke_8", v15);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 621, 0, "should only be enumerating the cells of interest (hasCommentStorage)");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_221162438(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v25 = a4;
  v7 = a5;
  if ((objc_msgSend_hasImportWarningSet(v25, v8, v9, v10) & 1) == 0 && (objc_msgSend_hasImportWarningSet(v7, v11, v12, v13) & 1) == 0)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTConcurrentCellMap updateDataListsConcurrentlyUsingCommentStorageBlock:conditionalStyleSetBlock:controlCellSpecBlock:formulaBlock:formulaErrorBlock:importWarningSetBlock:richTextBlock:stringBlock:styleBlock:customFormatBlock:formatBlock:]_block_invoke_9", v15);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 626, 0, "should only be enumerating the cells of interest (hasImportWarningSet)");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_221162568(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v25 = a4;
  v7 = a5;
  if ((objc_msgSend_hasControl(v25, v8, v9, v10) & 1) == 0 && (objc_msgSend_hasControl(v7, v11, v12, v13) & 1) == 0)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTConcurrentCellMap updateDataListsConcurrentlyUsingCommentStorageBlock:conditionalStyleSetBlock:controlCellSpecBlock:formulaBlock:formulaErrorBlock:importWarningSetBlock:richTextBlock:stringBlock:styleBlock:customFormatBlock:formatBlock:]_block_invoke_10", v15);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 631, 0, "should only be enumerating the cells of interest (hasControl)");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_221162C98(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), a2, a2, a4);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);

  return MEMORY[0x2821F9670](v5, sel_p_pruneToBaseWithBaseMap_viewMap_, v6, v7);
}

uint64_t sub_221162EE0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), a2, a2, a4);
  v6 = *(a1 + 40);

  return MEMORY[0x2821F9670](v5, sel_p_pruneToBaseWithBaseMap_viewMap_, v6, 0);
}

void sub_221163090(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), a2, a2, a4);
  objc_msgSend_p_convertToInverseCellMap(v7, v4, v5, v6);
}

void sub_2211636BC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_objectLocale(*(a1 + 32), a2, a3, a4);
  v9 = objc_msgSend_count(*(*(a1 + 32) + 80), v6, v7, v8);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_221163794;
  v11[3] = &unk_27845FB10;
  v11[4] = *(a1 + 32);
  v12 = v5;
  v10 = v5;
  dispatch_apply(v9, 0, v11);
}

void sub_221163794(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_objectAtIndexedSubscript_(*(*(a1 + 32) + 80), a2, a2, a4);
  objc_msgSend_p_setObjectLocale_(v7, v5, *(a1 + 40), v6);
}

__n128 sub_221163D44(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_221163D94(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 8);
        v3 -= 8;
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_22116CBC4(a1, v5);
  }
}

void sub_221163E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), a2, a2, a4);
  v8 = objc_msgSend_copyWithZone_(v11, v6, *(a1 + 48), v7);
  v9 = *(*(*(a1 + 32) + 8) + 48);
  v10 = *(v9 + 8 * a2);
  *(v9 + 8 * a2) = v8;
}

void sub_221164450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  sub_22109DBB8(&__p);

  _Unwind_Resume(a1);
}

void sub_2211658A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47)
{
  _Block_object_dispose(&a40, 8);
  if (__p)
  {
    a47 = __p;
    operator delete(__p);
  }

  _Block_object_dispose((v49 - 192), 8);
  v51 = *(v49 - 144);
  if (v51)
  {
    *(v49 - 136) = v51;
    operator delete(v51);
  }

  _Unwind_Resume(a1);
}

__n128 sub_221165954(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_221165978(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

uint64_t sub_221165990(void *a1, uint64_t a2)
{
  v3 = a2 - a1[6];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 48);
  v6 = *(v4 + 56);
  v7 = v5 + 16 * v3;
  v8 = (v7 + 16);
  v9 = v6 - (v7 + 16);
  if (v6 != v7 + 16)
  {
    memmove((v5 + 16 * v3), v8, v6 - (v7 + 16));
  }

  *(v4 + 56) = v7 + v9;
  v10 = a1[4];
  v11 = a1[7];
  v12 = a1[8];

  return objc_msgSend_p_pruneCellsAtRow_rowsSize_columnsSize_(v10, v8, v3, v11, v12);
}

uint64_t sub_221165A10(void *a1, uint64_t a2)
{
  v3 = a2 - a1[6];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 48);
  v6 = *(v4 + 56);
  v7 = v5 + 16 * v3;
  v8 = (v7 + 16);
  v9 = v6 - (v7 + 16);
  if (v6 != v7 + 16)
  {
    memmove((v5 + 16 * v3), v8, v6 - (v7 + 16));
  }

  *(v4 + 56) = v7 + v9;
  v10 = a1[4];
  v11 = a1[7];
  v12 = a1[8];

  return objc_msgSend_p_pruneCellsAtColumn_rowsSize_columnsSize_(v10, v8, v3, v11, v12);
}

void **sub_221165C5C(uint64_t a1, void **a2, void **a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        v8 = *v4;
        *v4++ = 0;
        v9 = *v7;
        *v7++ = v8;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v10 = *--v6;
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

void sub_221166314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, char a25)
{
  for (i = 96; i != -8; i -= 8)
  {
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void sub_2211663C4(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 2)
  {
    if (!(a2 >> 62))
    {
      sub_2210C836C(a1, a2);
    }

    sub_22107C148();
  }
}

char *sub_221166464(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 2) + 1;
    if (v11 >> 62)
    {
      sub_22107C148();
    }

    v12 = &__src[-v10];
    v13 = v7 - v10;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    v29 = a1;
    if (v14)
    {
      sub_2210C836C(a1, v14);
    }

    v26 = 0;
    v27 = 4 * v15;
    v28 = (4 * v15);
    sub_22116CCC4(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 4;
  }

  else
  {
    v8 = __src + 4;
    if (v6 < 4)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 4);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 4, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 4;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_221166600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_221166638(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 2) + 1;
    if (v11 >> 62)
    {
      sub_22107C148();
    }

    v12 = &__src[-v10];
    v13 = v7 - v10;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    v29 = a1;
    if (v14)
    {
      sub_2210C836C(a1, v14);
    }

    v26 = 0;
    v27 = 4 * v15;
    v28 = (4 * v15);
    sub_22116CCC4(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 4;
  }

  else
  {
    v8 = __src + 4;
    if (v6 < 4)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 4);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 4, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 4;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_2211667D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22116680C(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      sub_22115DB94(a1, a2);
    }

    sub_22107C148();
  }
}

char *sub_2211668A8(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = &v6[-*a1] >> 1;
    if (v11 <= -2)
    {
      sub_22107C148();
    }

    v12 = &__src[-v10];
    v13 = v7 - v10;
    if (v13 <= v11 + 1)
    {
      v14 = v11 + 1;
    }

    else
    {
      v14 = v13;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 1;
    v30 = a1;
    if (v15)
    {
      sub_22115DB94(a1, v15);
    }

    v27 = 0;
    v28 = 2 * v16;
    v29 = (2 * v16);
    sub_22116CDC4(&v27, a3);
    v17 = v28;
    memcpy(v29, v4, a1[1] - v4);
    v18 = *a1;
    v19 = v28;
    *&v29 = v29 + a1[1] - v4;
    a1[1] = v4;
    v20 = v4 - v18;
    v21 = (v19 - (v4 - v18));
    memcpy(v21, v18, v20);
    v22 = *a1;
    *a1 = v21;
    v23 = a1[2];
    *(a1 + 1) = v29;
    *&v29 = v22;
    *(&v29 + 1) = v23;
    v27 = v22;
    v28 = v22;
    if (v22)
    {
      operator delete(v22);
    }

    return v17;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 2;
  }

  else
  {
    v8 = __src + 2;
    if (v6 < 2)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 2);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 2, __src, v6 - v8);
      v9 = a1[1];
    }

    v24 = v9 <= a3 || v4 > a3;
    v25 = 2;
    if (v24)
    {
      v25 = 0;
    }

    *v4 = *&a3[v25];
  }

  return v4;
}

void sub_221166A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_221166A78(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = &v6[-*a1] >> 1;
    if (v11 <= -2)
    {
      sub_22107C148();
    }

    v12 = &__src[-v10];
    v13 = v7 - v10;
    if (v13 <= v11 + 1)
    {
      v14 = v11 + 1;
    }

    else
    {
      v14 = v13;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 1;
    v30 = a1;
    if (v15)
    {
      sub_22115DB94(a1, v15);
    }

    v27 = 0;
    v28 = 2 * v16;
    v29 = (2 * v16);
    sub_22116CDC4(&v27, a3);
    v17 = v28;
    memcpy(v29, v4, a1[1] - v4);
    v18 = *a1;
    v19 = v28;
    *&v29 = v29 + a1[1] - v4;
    a1[1] = v4;
    v20 = v4 - v18;
    v21 = (v19 - (v4 - v18));
    memcpy(v21, v18, v20);
    v22 = *a1;
    *a1 = v21;
    v23 = a1[2];
    *(a1 + 1) = v29;
    *&v29 = v22;
    *(&v29 + 1) = v23;
    v27 = v22;
    v28 = v22;
    if (v22)
    {
      operator delete(v22);
    }

    return v17;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 2;
  }

  else
  {
    v8 = __src + 2;
    if (v6 < 2)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 2);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 2, __src, v6 - v8);
      v9 = a1[1];
    }

    v24 = v9 <= a3 || v4 > a3;
    v25 = 2;
    if (v24)
    {
      v25 = 0;
    }

    *v4 = *&a3[v25];
  }

  return v4;
}

void sub_221166C10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2211687C4(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_2210874C4(a1, a2);
    }

    sub_22107C148();
  }
}

void sub_221168C88(uint64_t a1, unint64_t a2)
{
  memset(v5, 0, sizeof(v5));
  TSTMakeCellUID(v5);
  v4 = *(*(*(a1 + 32) + 144) + 8 * a2);
  (*(*(a1 + 40) + 16))();
}

void sub_221168F38(uint64_t a1, unint64_t a2)
{
  v3 = *(*(*(a1 + 32) + 144) + 8 * a2);
  if (v3)
  {
    memset(v4, 0, sizeof(v4));
    TSTMakeCellUID(v4);
    (*(*(a1 + 40) + 16))();
  }
}

void sub_221169198(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_msgSend_unsignedIntegerValue(v9, v6, v7, v8);
  (*(*(a1 + 40) + 16))();
}

void sub_221169A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  _Block_object_dispose(&a33, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_221169B4C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221169B64(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_asCustomFormatWrapper(a2, a2, a3, a4);
  if (v5)
  {
    v33 = v5;
    v6 = (*(*(a1 + 32) + 16))();
    v10 = objc_msgSend_formatType(v6, v7, v8, v9);
    if (v10 != objc_msgSend_formatType(v33, v11, v12, v13))
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTConcurrentCellList p_enumerateCustomFormatsBeingAddedUsingReplacementBlock:]_block_invoke", v16);
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentCellMap.mm", v20);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 1597, 0, "Expected the custom format replacement to be of the same type as the original.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
    }

    v26 = *(*(*(a1 + 40) + 8) + 40);
    if (!v26)
    {
      v27 = objc_msgSend_array(MEMORY[0x277CBEB18], v14, v15, v16);
      v28 = *(*(a1 + 40) + 8);
      v29 = *(v28 + 40);
      *(v28 + 40) = v27;

      v26 = *(*(*(a1 + 40) + 8) + 40);
    }

    v30 = objc_msgSend_pairWithFirst_second_(MEMORY[0x277D812A8], v14, v33, v6);
    objc_msgSend_addObject_(v26, v31, v30, v32);

    v5 = v33;
  }
}

void *sub_22116A0A0(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_22107C1F0(result, a2);
    }

    sub_22107C148();
  }

  return result;
}

void sub_22116A11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

id sub_22116A130(void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_22107C148();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      sub_22107C1F0(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    sub_22107C098(a1, v13);
    v7 = a1[1];
    result = sub_22107C26C(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_22116A210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void sub_22116A774(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22116AC0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  sub_22109DBB8(&__p);

  _Unwind_Resume(a1);
}

uint64_t *sub_22116C7FC(uint64_t *result, void **a2, void **a3, unint64_t a4)
{
  if (a4)
  {
    sub_2210BC26C(result, a4);
  }

  return result;
}

uint64_t sub_22116C87C(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_22107C148();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_2210BC5FC(a1, v6);
  }

  v7 = 48 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *&v16 = 48 * v2 + 48;
  v8 = a1[1];
  v9 = (48 * v2 + *a1 - v8);
  sub_2210BC654(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_2210BC7C0(&v14);
  return v13;
}

void sub_22116C9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2210BC7C0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_22116C9DC(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_221086F38(result, a4);
  }

  return result;
}

void sub_22116CA3C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22116CA58(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_22107C148();
    }

    v8 = v6 >> 3;
    v9 = v4 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v11[4] = a1;
    if (v10)
    {
      sub_22107C1F0(a1, v10);
    }

    v11[0] = 0;
    v11[1] = 8 * v8;
    v11[3] = 0;
    bzero((8 * v8), 8 * a2);
    v11[2] = 8 * v8 + 8 * a2;
    sub_22107C098(a1, v11);
    sub_22107C26C(v11);
  }
}

void sub_22116CB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void sub_22116CBC4(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      sub_22107C148();
    }

    v8 = v6 >> 3;
    v9 = v4 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v11[4] = a1;
    if (v10)
    {
      sub_22107C1F0(a1, v10);
    }

    v11[0] = 0;
    v11[1] = 8 * v8;
    v11[3] = 0;
    bzero((8 * v8), 8 * a2);
    v11[2] = 8 * v8 + 8 * a2;
    sub_22107C098(a1, v11);
    sub_22107C26C(v11);
  }
}

void sub_22116CCB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void sub_22116CCC4(unint64_t *a1, _DWORD *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 1;
      }

      sub_2210C836C(a1[4], v11);
    }

    v7 = ((v6 >> 2) + 1) / -2;
    v8 = ((v6 >> 2) + 1) / 2;
    v9 = &v5[-4 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-4 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[4 * v7];
  }

  *v4 = *a2;
  a1[2] = (v4 + 4);
}

void sub_22116CDC4(unint64_t *a1, _WORD *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1];
      }

      sub_22115DB94(a1[4], v11);
    }

    v7 = ((v6 >> 1) + 1) / -2;
    v8 = ((v6 >> 1) + 1 + (((v6 >> 1) + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
    v9 = &v5[-v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[2 * v7];
  }

  *v4 = *a2;
  a1[2] = (v4 + 2);
}

uint64_t *sub_22116CEC0(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    sub_2210BC26C(result, a4);
  }

  return result;
}

void sub_22116CF18(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22116CF34(uint64_t a1, void **a2, void **a3, unint64_t a4)
{
  v7 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 3)
  {
    sub_2210BC2A8(a1);
    if (!(a4 >> 61))
    {
      v8 = *(a1 + 16) - *a1;
      v9 = v8 >> 2;
      if (v8 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_2210BC26C(a1, v10);
    }

    sub_22107C148();
  }

  v11 = *(a1 + 8) - v7;
  if (a4 <= v11 >> 3)
  {
    sub_22116D07C(&v21, a2, a3, v7);
    v17 = v16;
    v18 = *(a1 + 8);
    if (v18 != v16)
    {
      do
      {
        v19 = *(v18 - 8);
        v18 -= 8;
      }

      while (v18 != v17);
    }

    *(a1 + 8) = v17;
  }

  else
  {
    v12 = (a2 + v11);
    sub_22116D07C(&v20, a2, (a2 + v11), v7);
    v13 = *(a1 + 8);
    if (v12 != a3)
    {
      v14 = *(a1 + 8);
      do
      {
        v15 = *v12++;
        *v14++ = v15;
        v13 += 8;
      }

      while (v12 != a3);
    }

    *(a1 + 8) = v13;
  }
}

void **sub_22116D07C(int a1, void **a2, void **a3, id *location)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5++;
      objc_storeStrong(location++, v7);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void **sub_22116D0D8(uint64_t *a1, void **a2, void **a3, void **a4, uint64_t a5)
{
  v5 = a2;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = a3;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      sub_22107C148();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v31[4] = a1;
    if (v15)
    {
      sub_22107C1F0(a1, v15);
    }

    v25 = (8 * (v13 >> 3));
    v31[0] = 0;
    v31[1] = v25;
    v31[3] = 0;
    v26 = 8 * a5;
    v27 = &v25[a5];
    do
    {
      v28 = *v7++;
      *v25++ = v28;
      v26 -= 8;
    }

    while (v26);
    v31[2] = v27;
    v5 = sub_221122FD0(a1, v31, v5);
    sub_22107C26C(v31);
    return v5;
  }

  v16 = v10 - a2;
  v17 = (v10 - a2) >> 3;
  if (v17 >= a5)
  {
    sub_221122E10(a1, a2, a1[1], &a2[a5]);
    v24 = &v7[a5];
    v23 = v7;
    goto LABEL_18;
  }

  v19 = a1[1];
  v30 = (a3 + v16);
  if ((a3 + v16) != a4)
  {
    v19 = a1[1];
    v20 = (a3 + v16);
    v21 = v19;
    do
    {
      v22 = *v20++;
      *v21++ = v22;
      v19 += 8;
    }

    while (v20 != a4);
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    sub_221122E10(a1, v5, v10, &v5[a5]);
    v23 = v7;
    v24 = v30;
LABEL_18:
    sub_22116D07C(v31, v23, v24, v5);
  }

  return v5;
}

void sub_22116D294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_22116D2A8(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_2210BC26C(a1, a2);
  }

  return a1;
}

uint64_t *sub_22116D394(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_22116D40C(a1, a2);
  }

  return a1;
}

void sub_22116D3F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22116D40C(uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_22115DB94(a1, a2);
  }

  sub_22107C148();
}

void sub_22116DC34(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_22116E2E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = TSTCellDiffArraySegment;
  return objc_msgSendSuper2(&v3, sel_saveToArchiver_, v1);
}

id sub_22116E4A4(id result, int a2)
{
  if (a2)
  {
    v2 = *(result + 4);
    v3.receiver = *(result + 5);
    v3.super_class = TSTCellDiffArraySegment;
    return objc_msgSendSuper2(&v3, sel_loadFromUnarchiver_, v2);
  }

  return result;
}

uint64_t *sub_22116E554(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_221127690(a1, a2);
  }

  return a1;
}

void sub_22116E5B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_22116EB30(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22108CD88();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v6 = v3;
  if (v3)
  {
    memcpy(&__dst, __s, v3);
  }

  *(&__dst + v4) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_22116EC28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22116EC44(uint64_t a1, void *__src, size_t __n)
{
  *(a1 + 16) |= 2u;
  if (__n >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22108CD88();
  }

  if (__n >= 0x17)
  {
    operator new();
  }

  v5 = __n;
  if (__n)
  {
    memcpy(&__dst, __src, __n);
  }

  *(&__dst + __n) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v5 < 0)
  {
    operator delete(__dst);
  }
}

void sub_22116ED34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2211708CC(uint64_t a1, void *a2)
{
  v10 = a2;
  objc_storeStrong((*(a1 + 32) + 64), a2);
  if (objc_msgSend_count(*(*(a1 + 32) + 64), v4, v5, v6) == 1)
  {
    v9 = objc_msgSend_objectAtIndexedSubscript_(*(*(a1 + 32) + 64), v7, 0, v8);
    *(*(a1 + 32) + 144) = v9;
  }
}

void sub_221170984(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v2 = *(*(a1 + 32) + 64);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v32, v36, 16);
  if (v7)
  {
    v8 = *v33;
    do
    {
      v9 = 0;
      do
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v2);
        }

        v10 = *(*(a1 + 32) + 112);
        v11 = objc_msgSend_keys(*(*(&v32 + 1) + 8 * v9), v4, v5, v6);
        objc_msgSend_removeIndexes_(v10, v12, v11, v13);

        ++v9;
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v32, v36, 16);
    }

    while (v7);
  }

  *(*(a1 + 32) + 121) = 0;
  v17 = *(a1 + 32);
  if (v17[122] == 1)
  {
    if (*(a1 + 40) == 1)
    {
      v18 = objc_msgSend_documentRoot(v17, v14, v15, v16);
      v22 = objc_msgSend_customFormatList(v18, v19, v20, v21);

      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = *(a1 + 32);
    if (*(v24 + 124) == 2)
    {
      v25 = objc_msgSend_isNewForBraveNewCell(*(a1 + 32), v14, v15, v16) ^ 1;
      v24 = *(a1 + 32);
    }

    else
    {
      v25 = 0;
    }

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_221170C08;
    v27[3] = &unk_27845FF40;
    v27[4] = v24;
    v29 = *(a1 + 40);
    v26 = v23;
    v28 = v26;
    v30 = *(a1 + 41);
    v31 = v25;
    sub_221170F5C(v24, v27);
  }
}

void sub_221170C08(uint64_t a1, void *a2)
{
  v6 = a2;
  v84 = v6;
  v7 = *(a1 + 32);
  if (*(v7 + 124) == 2)
  {
    objc_opt_class();
    v8 = TSUDynamicCast();
    v12 = v8;
    if (v8)
    {
      v13 = objc_msgSend_format(v8, v9, v10, v11);
      v17 = objc_msgSend_asCurrencyFormat(v13, v14, v15, v16);

      if (v17)
      {
        v21 = objc_msgSend_currencyCode(v17, v18, v19, v20);

        if (!v21)
        {
          v82 = objc_alloc(MEMORY[0x277D80640]);
          v81 = objc_msgSend_decimalPlaces(v17, v22, v23, v24);
          v80 = objc_msgSend_negativeStyle(v17, v25, v26, v27);
          v31 = objc_msgSend_showThousandsSeparator(v17, v28, v29, v30);
          v35 = objc_msgSend_accountingStyle(v17, v32, v33, v34);
          v39 = objc_msgSend_context(*(a1 + 32), v36, v37, v38);
          v43 = objc_msgSend_documentRoot(v39, v40, v41, v42);
          v47 = objc_msgSend_documentLocale(v43, v44, v45, v46);
          v51 = objc_msgSend_currencyCode(v47, v48, v49, v50);
          v53 = objc_msgSend_initWithDecimalPlaces_negativeStyle_showSeparator_accountingStyle_currencyCode_(v82, v52, v81, v80, v31, v35, v51);

          objc_msgSend_setPayload_(v12, v54, v53, v55);
        }
      }

      v56 = objc_msgSend_format(v12, v18, v19, v20);
      v60 = objc_msgSend_asCustomFormatWrapper(v56, v57, v58, v59);

      if (v60)
      {
        if (*(a1 + 48) == 1)
        {
          v64 = *(a1 + 40);
          if (v64)
          {
            v65 = objc_msgSend_customFormatKey(v60, v61, v62, v63);
            v68 = objc_msgSend_customFormatForKey_(v64, v66, v65, v67);

            if (v68 && (v72 = objc_msgSend_formatType(v60, v69, v70, v71), v72 == objc_msgSend_formatType(v68, v73, v74, v75)))
            {
              v77 = objc_msgSend_populatedCustomFormatWrapperFromCFWrapper_customFormat_(MEMORY[0x277D80650], v76, v60, v68);
              objc_msgSend_setPayload_(v12, v78, v77, v79);
            }

            else
            {
              v77 = v60;
            }

            v60 = v77;
          }
        }

        *(*(a1 + 32) + 121) = 1;
      }
    }

    v7 = *(a1 + 32);
  }

  v83 = objc_msgSend_payload(v6, v3, v4, v5);
  sub_2211775F4((v7 + 72), &v83, &v83, &v84);
}

void sub_221170F5C(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = *(a1 + 64);
    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v16, v24, 16);
    if (v6)
    {
      v7 = *v17;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = sub_221172444;
        v13[3] = &unk_27845FF90;
        v14 = v3;
        v15 = &v20;
        objc_msgSend_enumerateObjectsWithBlock_(v9, v10, v13, v11);
        LOBYTE(v9) = *(v21 + 24);

        if (v9)
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v12, &v16, v24, 16);
          if (v6)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    _Block_object_dispose(&v20, 8);
  }
}

void sub_22117110C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2211712C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

id sub_221171338(id a1, unsigned int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = *(a1 + 18);
    if (!v2)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v4 = *(a1 + 8);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v15, v19, 16);
      if (v9)
      {
        v10 = *v16;
LABEL_5:
        v11 = 0;
        while (1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v4);
          }

          v2 = *(*(&v15 + 1) + 8 * v11);
          v12 = objc_msgSend_keyRange(v2, v6, v7, v8, v15);
          if (a2 >= v12 && a2 - v12 < v6)
          {
            break;
          }

          if (v9 == ++v11)
          {
            v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v15, v19, 16);
            if (v9)
            {
              goto LABEL_5;
            }

            goto LABEL_15;
          }
        }
      }

      else
      {
LABEL_15:
        v2 = 0;
      }
    }

    a1 = v2;
  }

  return a1;
}

void sub_221172114(_Unwind_Exception *a1)
{
  v4 = v1;

  _Unwind_Resume(a1);
}

char *sub_221172150(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  if (a1 && a2)
  {
    v6 = a1[18];
    if (!v6)
    {
      v6 = sub_221171338(a1, a2);
    }

    v5 = objc_msgSend_objectAtIndexedSubscript_(v6, v5, a2, a4);
  }

  return v5;
}

id sub_2211723D4(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  if (a1)
  {
    if (a2)
    {
      v8 = a1[18];
      if (!v8)
      {
        v8 = sub_221171338(a1, a2);
      }

      v6 = objc_msgSend_contentsOfObjectForKey_(v8, a2, a2, a4);
    }

    v4 = vars8;
  }

  return v6;
}

uint64_t sub_221172444(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

void sub_2211726CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22117272C(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v15 = v5;
  v10 = objc_msgSend_key(v5, v7, v8, v9);
  v14 = objc_msgSend_format(v15, v11, v12, v13);
  (*(v6 + 16))(v6, v10, v14, *(*(a1 + 40) + 8) + 24);

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }
}

void sub_221172A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221172A90(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v15 = v5;
  v10 = objc_msgSend_key(v5, v7, v8, v9);
  v14 = objc_msgSend_customFormat(v15, v11, v12, v13);
  (*(v6 + 16))(v6, v10, v14, *(*(a1 + 40) + 8) + 24);

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }
}

void sub_221172D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221172D50(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v15 = v5;
  v10 = objc_msgSend_key(v5, v7, v8, v9);
  v14 = objc_msgSend_refCount(v15, v11, v12, v13);
  (*(v6 + 16))(v6, v10, v14, *(*(a1 + 40) + 8) + 24);
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }
}

void sub_221172FB8(uint64_t a1, void *a2, uint64_t a3)
{
  v55 = a2;
  v5 = v55;
  v9 = objc_msgSend_cellSpec(v5, v6, v7, v8);
  v13 = objc_msgSend_asFormulaSpec(v9, v10, v11, v12);

  v17 = objc_msgSend_key(v5, v14, v15, v16);
  if (v13)
  {
    v21 = v17;
    v22 = *(a1 + 40);
    v23 = objc_msgSend_formulaObject(v13, v18, v19, v20);
    v24 = (*(v22 + 16))(v22, v23, v21, a3);

    if (v24)
    {
      v28 = objc_msgSend_formulaObject(v13, v25, v26, v27);

      if (v24 != v28)
      {
        if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
        {
          objc_msgSend_willModify(*(a1 + 32), v29, v30, v31);
          *(*(*(a1 + 48) + 8) + 24) = 1;
        }

        v32 = *(a1 + 32);
        if (v32[122] == 1)
        {
          objc_msgSend_p_clearReverseMapForObject_atKey_(v32, v29, v5, v21);
        }

        v33 = [TSTCellFormulaSpec alloc];
        v37 = objc_msgSend_context(*(a1 + 32), v34, v35, v36);
        v41 = objc_msgSend_documentRoot(v37, v38, v39, v40);
        v45 = objc_msgSend_documentLocale(v41, v42, v43, v44);
        v47 = objc_msgSend_initWithFormulaObject_locale_(v33, v46, v24, v45);

        objc_msgSend_setPayload_(v5, v48, v47, v49);
        v53 = *(a1 + 32);
        if (*(v53 + 122) == 1)
        {
          v54 = objc_msgSend_payload(v5, v50, v51, v52);
          sub_2211775F4((v53 + 72), &v54, &v54, &v55);
        }
      }
    }
  }
}

void sub_221173404(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = a2;
  v5 = v28;
  v9 = objc_msgSend_key(v5, v6, v7, v8);
  v10 = *(a1 + 40);
  v14 = objc_msgSend_conditionalStyleSet(v5, v11, v12, v13);
  v15 = (*(v10 + 16))(v10, v14, v9, a3);

  if (v15)
  {
    v19 = objc_msgSend_conditionalStyleSet(v5, v16, v17, v18);

    if (v15 != v19)
    {
      if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
      {
        objc_msgSend_willModify(*(a1 + 32), v20, v21, v22);
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }

      if (*(a1 + 56) == 1)
      {
        objc_msgSend_p_clearReverseMapForObject_atKey_(*(a1 + 32), v20, v5, v9);
      }

      objc_msgSend_setPayload_(v5, v20, v15, v22);
      if (*(a1 + 56) == 1)
      {
        v26 = *(a1 + 32);
        v27 = objc_msgSend_payload(v5, v23, v24, v25);
        sub_2211775F4((v26 + 72), &v27, &v27, &v28);
      }
    }
  }
}

void sub_221173750(uint64_t a1, void *a2)
{
  v22 = a2;
  v3 = v22;
  v7 = objc_msgSend_key(v3, v4, v5, v6);
  v11 = objc_msgSend_commentStorage(v3, v8, v9, v10);
  v15 = (*(*(a1 + 40) + 16))();
  if (v15 != v11)
  {
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      objc_msgSend_willModify(*(a1 + 32), v12, v13, v14);
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    v16 = *(a1 + 32);
    if (v16[122] == 1)
    {
      objc_msgSend_p_clearReverseMapForObject_atKey_(v16, v12, v3, v7);
    }

    objc_msgSend_setPayload_(v3, v12, v15, v14);
    v20 = *(a1 + 32);
    if (*(v20 + 122) == 1)
    {
      v21 = objc_msgSend_payload(v3, v17, v18, v19);
      sub_2211775F4((v20 + 72), &v21, &v21, &v22);
    }
  }
}

void sub_221173A80(uint64_t a1, void *a2)
{
  v24 = a2;
  v3 = v24;
  v7 = objc_msgSend_key(v3, v4, v5, v6);
  v11 = objc_msgSend_style(v3, v8, v9, v10);
  v12 = (*(*(a1 + 40) + 16))();
  v16 = v12;
  if (v12)
  {
    v17 = v12 == v11;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      objc_msgSend_willModify(*(a1 + 32), v13, v14, v15);
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    v18 = *(a1 + 32);
    if (v18[122] == 1)
    {
      objc_msgSend_p_clearReverseMapForObject_atKey_(v18, v13, v3, v7);
    }

    objc_msgSend_setPayload_(v3, v13, v16, v15);
    v22 = *(a1 + 32);
    if (*(v22 + 122) == 1)
    {
      v23 = objc_msgSend_payload(v3, v19, v20, v21);
      sub_2211775F4((v22 + 72), &v23, &v23, &v24);
    }
  }
}

void sub_221173DB4(uint64_t a1, void *a2)
{
  v24 = a2;
  v3 = v24;
  v7 = objc_msgSend_key(v3, v4, v5, v6);
  v11 = objc_msgSend_formulaError(v3, v8, v9, v10);
  v12 = (*(*(a1 + 40) + 16))();
  v16 = v12;
  if (v12)
  {
    v17 = v12 == v11;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      objc_msgSend_willModify(*(a1 + 32), v13, v14, v15);
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    v18 = *(a1 + 32);
    if (v18[122] == 1)
    {
      objc_msgSend_p_clearReverseMapForObject_atKey_(v18, v13, v3, v7);
    }

    objc_msgSend_setPayload_(v3, v13, v16, v15);
    v22 = *(a1 + 32);
    if (*(v22 + 122) == 1)
    {
      v23 = objc_msgSend_payload(v3, v19, v20, v21);
      sub_2211775F4((v22 + 72), &v23, &v23, &v24);
    }
  }
}

void sub_2211740E8(uint64_t a1, void *a2)
{
  v27 = a2;
  v3 = v27;
  v7 = objc_msgSend_key(v3, v4, v5, v6);
  v11 = objc_msgSend_richTextStorage(v3, v8, v9, v10);
  v12 = (*(*(a1 + 40) + 16))();
  v16 = v12;
  if (v12)
  {
    v17 = v12 == v11;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      objc_msgSend_willModify(*(a1 + 32), v13, v14, v15);
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    v18 = *(a1 + 32);
    if (v18[122] == 1)
    {
      objc_msgSend_p_clearReverseMapForObject_atKey_(v18, v13, v3, v7);
    }

    v19 = objc_msgSend_payloadWithStorage_(TSTRichTextPayload, v13, v16, v15);
    objc_msgSend_setPayload_(v3, v20, v19, v21);

    v25 = *(a1 + 32);
    if (*(v25 + 122) == 1)
    {
      v26 = objc_msgSend_payload(v3, v22, v23, v24);
      sub_2211775F4((v25 + 72), &v26, &v26, &v27);
    }
  }
}

void sub_221174444(uint64_t a1, void *a2)
{
  v22 = a2;
  v3 = v22;
  v7 = objc_msgSend_key(v3, v4, v5, v6);
  v11 = objc_msgSend_format(v3, v8, v9, v10);
  v15 = (*(*(a1 + 40) + 16))();
  if (v15 != v11)
  {
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      objc_msgSend_willModify(*(a1 + 32), v12, v13, v14);
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    v16 = *(a1 + 32);
    if (v16[122] == 1)
    {
      objc_msgSend_p_clearReverseMapForObject_atKey_(v16, v12, v3, v7);
    }

    objc_msgSend_setPayload_(v3, v12, v15, v14);
    v20 = *(a1 + 32);
    if (*(v20 + 122) == 1)
    {
      v21 = objc_msgSend_payload(v3, v17, v18, v19);
      sub_2211775F4((v20 + 72), &v21, &v21, &v22);
    }
  }
}

void sub_221174728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose((v25 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_221174770(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221174788(uint64_t a1, void *a2)
{
  v50 = a2;
  v3 = v50;
  v7 = objc_msgSend_key(v3, v4, v5, v6);
  v11 = objc_msgSend_style(v3, v8, v9, v10);
  v15 = objc_msgSend_stylesheet(v11, v12, v13, v14);
  v16 = *(a1 + 32);

  if (v15 != v16)
  {
    v20 = *(*(*(a1 + 48) + 8) + 40);
    if (!v20)
    {
      v21 = objc_msgSend_documentRoot(*(a1 + 40), v17, v18, v19);
      v25 = objc_msgSend_makeStyleMapper(v21, v22, v23, v24);
      v26 = *(*(a1 + 48) + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = v25;

      v20 = *(*(*(a1 + 48) + 8) + 40);
    }

    v28 = objc_msgSend_mappedStyleForStyle_(v20, v17, v11, v19);
    v32 = objc_msgSend_stylesheet(v28, v29, v30, v31);
    v33 = *(a1 + 32);

    if (v32 != v33)
    {
      v36 = MEMORY[0x277D81150];
      v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[TSTTableDataList repairStyleDatalistStylesheetIfNecessary]_block_invoke", v35);
      v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v39);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v41, v37, v40, 969, 0, "Expected new style to be in the document stylesheet");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44);
    }

    if (*(a1 + 64) == 1)
    {
      objc_msgSend_p_clearReverseMapForObject_atKey_(*(a1 + 40), v34, v3, v7);
    }

    objc_msgSend_setPayload_(v3, v34, v28, v35);
    if (*(a1 + 64) == 1)
    {
      v48 = *(a1 + 40);
      v49 = objc_msgSend_payload(v3, v45, v46, v47);
      sub_2211775F4((v48 + 72), &v49, &v49, &v50);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

void sub_221175048(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = *(a1 + 32);
  v7 = objc_msgSend_payload(v8, v4, v5, v6);
  sub_2211775F4((v3 + 72), &v7, &v7, &v8);
}

void sub_22117536C(uint64_t a1, void *a2)
{
  v37 = a2;
  objc_opt_class();
  v6 = TSUDynamicCast();
  if (!v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSTTableDataList(Type_Specific_API) allRichTextStorages]_block_invoke", v5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 1191, 0, "invalid nil value for '%{public}s'", "richTextObject");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  v16 = objc_msgSend_richTextStorage(v6, v3, v4, v5);

  if (!v16)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSTTableDataList(Type_Specific_API) allRichTextStorages]_block_invoke", v19);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 1192, 0, "invalid nil value for '%{public}s'", "richTextObject.richTextStorage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
  }

  if (v6)
  {
    v29 = objc_msgSend_richTextStorage(v6, v17, v18, v19);

    if (v29)
    {
      v33 = *(a1 + 32);
      v34 = objc_msgSend_richTextStorage(v6, v30, v31, v32);
      objc_msgSend_addObject_(v33, v35, v34, v36);
    }
  }
}

void sub_22117587C(uint64_t a1, void *a2, _BYTE *a3, uint64_t x3_0)
{
  v10 = objc_msgSend_format(a2, a2, a3, x3_0);
  if (objc_msgSend_formatType(v10, v7, v8, v9) == 267)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }
}

id sub_2211759C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_msgSend_asCustomFormatWrapper(v3, v4, v5, v6);
  if (v7)
  {
    v8 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = v3;
  }

  v9 = v8;

  return v9;
}

id sub_221175B68(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = objc_msgSend_customFormatKey(v3, v5, v6, v7);
  LODWORD(v4) = objc_msgSend_isEqual_(v4, v9, v8, v10);

  v11 = v3;
  if (v4)
  {
    v12 = objc_alloc(MEMORY[0x277D80650]);
    v16 = objc_msgSend_formatType(v3, v13, v14, v15);
    v17 = *(a1 + 32);
    v20 = objc_msgSend_customFormatForKey_(*(a1 + 40), v18, v17, v19);
    v11 = objc_msgSend_initWithFormatType_customFormatKey_customFormat_(v12, v21, v16, v17, v20);
  }

  return v11;
}

void sub_221176E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, void *a23, uint64_t a24, ...)
{
  va_start(va, a24);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221176E94(uint64_t a1, void *a2)
{
  v52 = a2;
  v6 = objc_msgSend_key(v52, v3, v4, v5);
  objc_opt_class();
  v7 = TSUCheckedDynamicCast();
  objc_opt_class();
  v11 = objc_msgSend_format(v7, v8, v9, v10);
  v12 = TSUDynamicCast();

  if (v12)
  {
    v16 = *(*(a1 + 56) + 8);
    if ((*(v16 + 24) & 1) == 0)
    {
      *(v16 + 24) = 1;
      if (!*(a1 + 32))
      {
        v17 = MEMORY[0x277D81150];
        v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTTableDataList(Upgrade) upgradeCellFormatsU2_0]_block_invoke", v15);
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataList.mm", v20);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 1449, 0, "invalid nil value for '%{public}s'", "customFormatList");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
      }

      objc_msgSend_willModifyForUpgrade(*(a1 + 40), v13, v14, v15);
    }

    v26 = *(a1 + 32);
    v27 = objc_msgSend_legacyID(v12, v13, v14, v15);
    v30 = objc_msgSend_upgradedCustomFormatKeyForLegacyID_(v26, v28, v27, v29);
    v33 = objc_msgSend_customFormatForKey_(*(a1 + 32), v31, v30, v32);
    v34 = objc_alloc(MEMORY[0x277D80650]);
    v38 = objc_msgSend_formatType(v33, v35, v36, v37);
    v40 = objc_msgSend_initWithFormatType_customFormatKey_customFormat_(v34, v39, v38, v30, v33);
    v41 = [TSTTableDataFormat alloc];
    v45 = objc_msgSend_refCount(v7, v42, v43, v44);
    inited = objc_msgSend_initObjectWithFormat_refCount_(v41, v46, v40, v45);
    objc_msgSend_setKey_(inited, v48, v6, v49);
    objc_msgSend_addObject_(*(a1 + 48), v50, inited, v51);
  }
}

id sub_22117728C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_copyByUpgradingToLinkedRefAtHostCellRef_(a2, a2, a1 + 32, a4);

  return v4;
}

id sub_22117738C(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_msgSend_customFormatKey(v3, v4, v5, v6);
  v13 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v8, v7, v9);
  if (!v13)
  {
    v13 = objc_msgSend_UUID(MEMORY[0x277CCAD78], v10, v11, v12);
    objc_msgSend_setObject_forKey_(*(a1 + 32), v14, v13, v7);
  }

  v15 = objc_alloc(MEMORY[0x277D80650]);
  v19 = objc_msgSend_formatType(v3, v16, v17, v18);
  v23 = objc_msgSend_customFormat(v3, v20, v21, v22);
  v25 = objc_msgSend_initWithFormatType_customFormatKey_customFormat_(v15, v24, v19, v13, v23);

  return v25;
}

void sub_2211775BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t **sub_2211775F4(void *a1, id *a2, uint64_t *a3, id *a4)
{
  v6 = objc_msgSend_tst_dataObjectHash(*a2, a2, a3, a4);
  v9 = v6;
  v10 = a1[1];
  if (!*&v10)
  {
    goto LABEL_18;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v6;
    if (v6 >= *&v10)
    {
      v13 = v6 % *&v10;
    }
  }

  else
  {
    v13 = (*&v10 - 1) & v6;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v9)
    {
      break;
    }

    if (v12 > 1)
    {
      if (v16 >= *&v10)
      {
        v16 %= *&v10;
      }
    }

    else
    {
      v16 &= *&v10 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_18;
    }

LABEL_17:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  if ((objc_msgSend_tst_dataObjectIsEqual_(v15[2], v7, *a2, v8) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v15;
}

void sub_221177870(uint64_t a1, id *a2)
{
  if (*(a1 + 8) == 1)
  {
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t **sub_221177940(void *a1, id *a2, uint64_t *a3, id *a4)
{
  v6 = objc_msgSend_tst_dataObjectHash(*a2, a2, a3, a4);
  v9 = v6;
  v10 = a1[1];
  if (!*&v10)
  {
    goto LABEL_18;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v6;
    if (v6 >= *&v10)
    {
      v13 = v6 % *&v10;
    }
  }

  else
  {
    v13 = (*&v10 - 1) & v6;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v9)
    {
      break;
    }

    if (v12 > 1)
    {
      if (v16 >= *&v10)
      {
        v16 %= *&v10;
      }
    }

    else
    {
      v16 &= *&v10 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_18;
    }

LABEL_17:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  if ((objc_msgSend_tst_dataObjectIsEqual_(v15[2], v7, *a2, v8) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v15;
}

uint64_t **sub_221177BBC(void *a1, id *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_tst_dataObjectHash(*a2, a2, a3, a4);
  v9 = a1[1];
  if (!*&v9)
  {
    return 0;
  }

  v10 = v6;
  v11 = vcnt_s8(v9);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v6;
    if (v6 >= *&v9)
    {
      v13 = v6 % *&v9;
    }
  }

  else
  {
    v13 = (*&v9 - 1) & v6;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14)
  {
    return 0;
  }

  for (i = *v14; i; i = *i)
  {
    v16 = i[1];
    if (v16 == v10)
    {
      if (objc_msgSend_tst_dataObjectIsEqual_(i[2], v7, *a2, v8))
      {
        return i;
      }
    }

    else
    {
      if (v12 > 1)
      {
        if (v16 >= *&v9)
        {
          v16 %= *&v9;
        }
      }

      else
      {
        v16 &= *&v9 - 1;
      }

      if (v16 != v13)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t sub_221177CB8(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_221087680(a1, a2, &v5);
  v3 = v5;
  v5 = 0;
  if (v3)
  {
    sub_221177870(&v6, v3);
  }

  return v2;
}

uint64_t sub_221177D04(uint64_t a1)
{
  sub_221177D40(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_221177D40(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *sub_2211786BC(_DWORD *result, _DWORD *a2)
{
  v2 = a2[1];
  v3 = *a2 == 0x7FFFFFFF || v2 == 0x7FFFFFFF;
  if (!v3 && *result != 0x7FFFFFFF)
  {
    v4 = result[1];
    if (v4 != 0x7FFFFFFF)
    {
      *result += *a2;
      result[1] = v4 + v2;
    }
  }

  return result;
}

unint64_t TSCEGridDimensions::nextCoordRowMajorOrder(TSCEGridDimensions *this, const TSCEGridCoord *a2)
{
  v3 = *a2;
  v4 = HIDWORD(*a2);
  if (a2->column == 0x7FFFFFFF)
  {
    LODWORD(v3) = 0x7FFFFFFF;
LABEL_3:
    v5 = HIDWORD(*a2);
    return v3 | (v5 << 32);
  }

  LODWORD(v5) = 0x7FFFFFFF;
  if (v4 == 0x7FFFFFFF)
  {
    return v3 | (v5 << 32);
  }

  if (this->width)
  {
    v6 = this->width - 1 > v3;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    LODWORD(v3) = v3 + 1;
    goto LABEL_3;
  }

  height = this->height;
  v8 = height != 0;
  v9 = height - 1;
  v10 = v8;
  v11 = v9 > v4;
  v12 = v4 + 1;
  if ((v10 & v11) != 0)
  {
    LODWORD(v3) = 0;
  }

  else
  {
    LODWORD(v3) = 0x7FFFFFFF;
  }

  if ((v10 & v11) != 0)
  {
    LODWORD(v5) = v12;
  }

  else
  {
    LODWORD(v5) = 0x7FFFFFFF;
  }

  return v3 | (v5 << 32);
}

unint64_t TSCEGridDimensions::nextCoordColumnMajorOrder(TSCEGridDimensions *this, const TSCEGridCoord *a2)
{
  v3 = *a2;
  v4 = HIDWORD(*a2);
  if (a2->column == 0x7FFFFFFF)
  {
    LODWORD(v3) = 0x7FFFFFFF;
  }

  else if (v4 == 0x7FFFFFFF)
  {
    LODWORD(v4) = 0x7FFFFFFF;
  }

  else
  {
    height = this->height;
    v6 = height != 0;
    v7 = height - 1;
    if (v6 && v7 > v4)
    {
      LODWORD(v4) = v4 + 1;
    }

    else
    {
      width = this->width;
      v6 = width != 0;
      v10 = width - 1;
      v11 = v6;
      v12 = v10 > v3;
      if ((v11 & v12) != 0)
      {
        LODWORD(v3) = v3 + 1;
      }

      else
      {
        LODWORD(v3) = 0x7FFFFFFF;
      }

      if ((v11 & v12) != 0)
      {
        LODWORD(v4) = 0;
      }

      else
      {
        LODWORD(v4) = 0x7FFFFFFF;
      }
    }
  }

  return v3 | (v4 << 32);
}

uint64_t TSCEGridDimensions::columnIndexForOneBasedIndex(TSCEGridDimensions *this, uint64_t a2, int a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      if (this->width >= a2)
      {
        return (a2 - 1);
      }

      else
      {
        return 0x7FFFFFFFLL;
      }
    }

    return 0x7FFFFFFFLL;
  }

  if (!a3)
  {
    return 0x7FFFFFFFLL;
  }

  width = this->width;
  if (-a2 <= width)
  {
    return (width + a2);
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

uint64_t TSCEGridDimensions::rowIndexForOneBasedIndex(TSCEGridDimensions *this, uint64_t a2, int a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      if (this->height >= a2)
      {
        return (a2 - 1);
      }

      else
      {
        return 0x7FFFFFFFLL;
      }
    }

    return 0x7FFFFFFFLL;
  }

  if (!a3)
  {
    return 0x7FFFFFFFLL;
  }

  height = this->height;
  if (-a2 <= height)
  {
    return (height + a2);
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

id TSCEGridAccessContext::argSpec(TSCEGridAccessContext *this, const char *a2, uint64_t a3, uint64_t a4)
{
  var2 = this->var2;
  if (!var2)
  {
    v6 = objc_msgSend_argumentSpecForIndex_(this->var1, a2, this->var3, a4);
    v7 = this->var2;
    this->var2 = v6;

    var2 = this->var2;
  }

  return var2;
}

id sub_221179A54(void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_22107C148();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      sub_22107C1F0(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    sub_22107C098(a1, v13);
    v7 = a1[1];
    result = sub_22107C26C(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_221179B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_221179BC0(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v8 = objc_msgSend_second(a2, v5, v6, v7);
  v12 = objc_msgSend_cost(v8, v9, v10, v11);

  v16 = objc_msgSend_second(v4, v13, v14, v15);
  v20 = objc_msgSend_cost(v16, v17, v18, v19);

  if (v12 < v20)
  {
    v21 = -1;
  }

  else
  {
    v21 = v20 < v12;
  }

  return v21;
}

void sub_22117A1CC()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v3 = objc_msgSend_initWithProperties_(v0, v1, 768, v2, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 799, 800, 801, 802, 803, 804, 805, 806, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 808, 809, 810, 811, 812, 818, 819, 820, 821, 822, 813, 814, 815, 816, 817, 823, 824, 825, 826, 827, 828);
  v4 = qword_27CFB5260;
  qword_27CFB5260 = v3;

  if (!qword_27CFB5260)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "+[TSTTableStyle properties]_block_invoke", v6);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyle.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 160, 0, "invalid nil value for '%{public}s'", "sProperties");

    v16 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v16, v13, v14, v15);
  }
}

void sub_22117A4D4()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v3 = objc_msgSend_initWithProperties_(v0, v1, 771, v2, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 808, 809, 810, 811, 812, 818, 819, 820, 821, 822, 813, 814, 815, 816, 817, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 0);
  v4 = qword_27CFB5270;
  v16 = v3;
  qword_27CFB5270 = v3;

  if (!qword_27CFB5270)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "+[TSTTableStyle propertiesAllowingNSNull]_block_invoke", v6);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyle.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 237, 0, "invalid nil value for '%{public}s'", "s_nullProperties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }
}

void sub_22117A754()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v3 = objc_msgSend_initWithProperties_(v0, v1, 768, v2, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 808, 809, 810, 811, 812, 818, 819, 820, 821, 822, 813, 814, 815, 816, 817, 823, 824, 825, 826, 827, 828);
  v4 = qword_27CFB5280;
  v16 = v3;
  qword_27CFB5280 = v3;

  if (!qword_27CFB5280)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "+[TSTTableStyle nonEmphasisTableProperties]_block_invoke", v6);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableStyle.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 346, 0, "invalid nil value for '%{public}s'", "s_nonEmphasisProperties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }
}

void sub_22117AB24(void *a1, uint64_t a2, void *a3)
{
  v178 = a1;
  v5 = a3;
  v9 = v5;
  if (v5)
  {
    v10 = (&unk_2217E0568 + 16 * a2);
    v11 = objc_msgSend_objectAtIndex_(v5, v6, *v10, v8);
    v14 = objc_msgSend_objectAtIndex_(v9, v12, v10[1], v13);
    v17 = objc_msgSend_objectAtIndex_(v9, v15, v10[2], v16);
    objc_msgSend_objectAtIndex_(v9, v18, v10[3], v19);
    v21 = v20 = v17;
    v22 = v14;
    v23 = v11;
    objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v24, v11, v25, 1.0);
  }

  else
  {
    v20 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v6, v7, v8, 0.838999987, 0.838999987, 0.838999987, 1.0);
    v21 = v20;
    v22 = v20;
    v23 = v20;
    objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v26, v20, v27, 1.0);
  }
  v28 = ;
  objc_msgSend_setObject_forProperty_(v178, v29, v28, 771);

  v32 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v30, v23, v31, 1.0);
  objc_msgSend_setObject_forProperty_(v178, v33, v32, 772);

  v36 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v34, v23, v35, 1.0);
  objc_msgSend_setObject_forProperty_(v178, v37, v36, 773);

  v40 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v38, v23, v39, 1.0);
  objc_msgSend_setObject_forProperty_(v178, v41, v40, 774);

  v44 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v42, v22, v43, 1.0);
  objc_msgSend_setObject_forProperty_(v178, v45, v44, 778);

  v48 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v46, v22, v47, 1.0);
  objc_msgSend_setObject_forProperty_(v178, v49, v48, 782);

  v52 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v50, v22, v51, 1.0);
  objc_msgSend_setObject_forProperty_(v178, v53, v52, 781);

  v56 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v54, v22, v55, 1.0);
  objc_msgSend_setObject_forProperty_(v178, v57, v56, 780);

  v60 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v58, v22, v59, 1.0);
  objc_msgSend_setObject_forProperty_(v178, v61, v60, 776);

  v64 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v62, v22, v63, 1.0);
  objc_msgSend_setObject_forProperty_(v178, v65, v64, 777);

  v68 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v66, v21, v67, 1.0);
  objc_msgSend_setObject_forProperty_(v178, v69, v68, 786);

  v72 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v70, v21, v71, 1.0);
  objc_msgSend_setObject_forProperty_(v178, v73, v72, 785);

  v76 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v74, v21, v75, 1.0);
  objc_msgSend_setObject_forProperty_(v178, v77, v76, 784);

  v80 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v78, v20, v79, 1.0);
  objc_msgSend_setObject_forProperty_(v178, v81, v80, 779);

  v84 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v82, v20, v83, 1.0);
  objc_msgSend_setObject_forProperty_(v178, v85, v84, 775);

  v88 = objc_msgSend_strokeWithColor_width_(MEMORY[0x277D803C0], v86, v20, v87, 1.0);
  objc_msgSend_setObject_forProperty_(v178, v89, v88, 783);

  objc_msgSend_setIntValue_forProperty_(v178, v90, 1, 788);
  objc_msgSend_setIntValue_forProperty_(v178, v91, 1, 789);
  objc_msgSend_setIntValue_forProperty_(v178, v92, 1, 790);
  objc_msgSend_setIntValue_forProperty_(v178, v93, 1, 792);
  objc_msgSend_setIntValue_forProperty_(v178, v94, 1, 796);
  objc_msgSend_setIntValue_forProperty_(v178, v95, 1, 794);
  objc_msgSend_setIntValue_forProperty_(v178, v96, 1, 793);
  objc_msgSend_setIntValue_forProperty_(v178, v97, 1, 791);
  objc_msgSend_setIntValue_forProperty_(v178, v98, 1, 795);
  objc_opt_class();
  v101 = objc_msgSend_objectForProperty_(v178, v99, 783, v100);
  v102 = TSUCheckedDynamicCast();

  v172 = v21;
  v173 = v9;
  v170 = v20;
  v171 = v23;
  v168 = v102;
  v169 = v22;
  objc_opt_class();
  v105 = objc_msgSend_objectForProperty_(v178, v103, 784, v104);
  v106 = TSUCheckedDynamicCast();

  v167 = v106;
  v109 = objc_msgSend_deriveCategoryTopStrokeFromFooterRowSeparatorStroke_(TSTTableStyleNetwork, v107, v102, v108);
  v166 = v109;
  v177 = objc_msgSend_deriveCategoryBottomStrokeFromFooterRowSeparatorStroke_(TSTTableStyleNetwork, v110, v102, v111);
  v117 = objc_msgSend_deriveCategoryInteriorStrokeFromFooterRowVerticalStroke_(TSTTableStyleNetwork, v112, v106, v113);
  if (v109)
  {
    objc_msgSend_setObject_forProperty_(v178, v114, v109, 808);
    objc_msgSend_setObject_forProperty_(v178, v118, v109, 809);
    objc_msgSend_setObject_forProperty_(v178, v119, v109, 810);
    objc_msgSend_setObject_forProperty_(v178, v120, v109, 811);
    objc_msgSend_setObject_forProperty_(v178, v121, v109, 812);
  }

  if (v177)
  {
    objc_msgSend_setObject_forProperty_(v178, v114, v177, 813);
    objc_msgSend_setObject_forProperty_(v178, v122, v177, 814);
    objc_msgSend_setObject_forProperty_(v178, v123, v177, 815);
    objc_msgSend_setObject_forProperty_(v178, v124, v177, 816);
    objc_msgSend_setObject_forProperty_(v178, v125, v177, 817);
  }

  v126 = objc_msgSend_emptyStrokeWithWidth_(MEMORY[0x277D803C0], v114, v115, v116, 0.0);
  objc_msgSend_setObject_forProperty_(v178, v127, v126, 818);
  objc_msgSend_setObject_forProperty_(v178, v128, v126, 819);
  objc_msgSend_setObject_forProperty_(v178, v129, v126, 820);
  objc_msgSend_setObject_forProperty_(v178, v130, v126, 821);
  objc_msgSend_setObject_forProperty_(v178, v131, v126, 822);
  if (v117)
  {
    objc_msgSend_setObject_forProperty_(v178, v132, v117, 823);
    objc_msgSend_setObject_forProperty_(v178, v133, v117, 824);
    objc_msgSend_setObject_forProperty_(v178, v134, v117, 825);
    objc_msgSend_setObject_forProperty_(v178, v135, v117, 826);
    objc_msgSend_setObject_forProperty_(v178, v136, v117, 827);
  }

  v176 = objc_msgSend_deriveBodyPivotGroupHorizontalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v132, 0, v178);
  v175 = objc_msgSend_deriveBodyPivotGroupVerticalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v137, 0, v178);
  v174 = objc_msgSend_deriveBodyPivotDeEmphasisHorizontalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v138, 0, v178);
  v140 = objc_msgSend_deriveBodyPivotEmphasisVerticalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v139, 0, v178);
  v142 = objc_msgSend_deriveHeaderColumnPivotGroupHorizontalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v141, 0, v178);
  v144 = objc_msgSend_deriveHeaderColumnPivotGroupDeEmphasisStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v143, 0, v178);
  v146 = objc_msgSend_deriveHeaderColumnPivotSeparatorStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v145, 0, v178);
  v148 = objc_msgSend_deriveHeaderRowPivotGroupVerticalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v147, 0, v178);
  v150 = objc_msgSend_deriveHeaderRowPivotGroupDeEmphasisStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v149, 0, v178);
  v152 = objc_msgSend_deriveHeaderRowPivotTitleStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v151, 0, v178);
  v154 = objc_msgSend_deriveFooterRowPivotGroupVerticalStrokeFromTableStyle_propertyMap_(TSTTableStyleNetwork, v153, 0, v178);
  objc_msgSend_setObject_forProperty_(v178, v155, v176, 828);
  objc_msgSend_setObject_forProperty_(v178, v156, v175, 829);
  objc_msgSend_setObject_forProperty_(v178, v157, v174, 830);
  objc_msgSend_setObject_forProperty_(v178, v158, v140, 831);
  objc_msgSend_setObject_forProperty_(v178, v159, v142, 832);
  objc_msgSend_setObject_forProperty_(v178, v160, v144, 833);
  objc_msgSend_setObject_forProperty_(v178, v161, v146, 834);
  objc_msgSend_setObject_forProperty_(v178, v162, v148, 835);
  objc_msgSend_setObject_forProperty_(v178, v163, v150, 836);
  objc_msgSend_setObject_forProperty_(v178, v164, v152, 837);
  objc_msgSend_setObject_forProperty_(v178, v165, v154, 838);
}

void sub_2211819B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221181A20(uint64_t a1, const char *a2, _BYTE *a3, uint64_t a4)
{
  v10 = objc_msgSend_boxedValueForProperty_(*(a1 + 32), a2, a2, a4);
  v9 = objc_msgSend_boxedValueForProperty_(*(a1 + 40), v7, a2, v8);
  TSDMixingTypeWithObjects();
  *(*(*(a1 + 56) + 8) + 24) = TSDMixingTypeBestFromMixingTypes();
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    *a3 = 1;
  }
}

void sub_221181CF8(void **a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v11 = objc_msgSend_boxedValueForProperty_(a1[4], a2, a2, a4);
  v8 = objc_msgSend_boxedValueForProperty_(a1[5], v6, a2, v7);
  v9 = TSDMixingMixedObjectWithFraction();
  objc_msgSend_setBoxedValue_forProperty_(a1[6], v10, v9, a2);
}

void sub_221182970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

id sub_221183128(const unsigned __int8 *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  uuid_unparse_upper(a1, v5);
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, v5, v2);

  return v3;
}

void sub_221183FE8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_221184204(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22108CD88();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v6 = v3;
  if (v3)
  {
    memcpy(&__dst, __s, v3);
  }

  *(&__dst + v4) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_2211842FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TSCEFormulaCreationMagic::arg(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X2>, void *a3@<X1>, uint64_t *a4@<X8>)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3321888768;
  v8[2] = sub_221184534;
  v8[3] = &unk_2834A24B0;
  v10 = this;
  v9 = 0;
  v9 = MEMORY[0x223DA1C10](*a3);

  *a4 = objc_msgSend_copy(v8, v5, v6, v7);
}

uint64_t sub_221184534(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    a3[v3 + 1] = *a3;
  }

  return (*(*(a1 + 32) + 16))();
}

TSCEASTNodeArgInfo *TSCEASTNodeArgInfo::setPositionForArg(TSCEASTNodeArgInfo *this, unsigned int a2)
{
  if (a2 <= 2)
  {
    this->var1[a2] = this->var0;
  }

  return this;
}

uint64_t TSCEFormulaCreator::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  (*(*a1 + 16))();
  return *(a2 + 8) - v3;
}

{
  v5 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0x7FFF7FFFFFFFLL;
  v6 = -1;
  v7 = -1;
  v3 = *(a2 + 8);
  (*(*a1 + 16))();
  return *(a2 + 8) - v3;
}

void sub_2211845B0(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  v3 = MEMORY[0x223DA1C10](*(a2 + 32));
  v4 = *(a1 + 32);
  *(a1 + 32) = v3;
}

void TSCEFormulaCreator::TSCEFormulaCreator(TSCEFormulaCreator *this, const TSCEFormulaCreator *a2)
{
  this->var0 = 0;
  v3 = MEMORY[0x223DA1C10](a2->var0);
  var0 = this->var0;
  this->var0 = v3;
}

{
  this->var0 = 0;
  v3 = MEMORY[0x223DA1C10](a2->var0);
  var0 = this->var0;
  this->var0 = v3;
}

uint64_t *TSCEFormulaCreator::TSCEFormulaCreator(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a1 = objc_msgSend_copy(a2, a2, a3, a4);
  return a1;
}

{
  *a1 = objc_msgSend_copy(a2, a2, a3, a4);
  return a1;
}

void *TSCEFormulaCreationMagic::number@<X0>(TSCEFormulaCreationMagic *this@<X0>, TSUDecimal a2@<0:X1, 8:X2>, void *a3@<X8>, uint64_t a4@<X3>)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2211846E4;
  v6[3] = &unk_2784601E0;
  v6[4] = this;
  v6[5] = a2._decimal.w[0];
  result = objc_msgSend_copy(v6, a2._decimal.w[0], a2._decimal.w[1], a4);
  *a3 = result;
  return result;
}

unint64_t sub_2211846E4(TSCEASTNodeArray *a1, TSCEASTNodeArray *this, const TSUDecimal *a3, uint64_t a4)
{
  result = TSCEASTNumberElement::appendNumberElement(this, &a1[1], a3, a4);
  ++LODWORD(a3->_decimal.w[0]);
  return result;
}

void *TSCEFormulaCreationMagic::duration@<X0>(__int16 a1@<W0>, const char *a2@<X1>, void *a3@<X8>, double a4@<D0>, uint64_t a5@<X2>, uint64_t a6@<X3>)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2211847A4;
  v8[3] = &unk_278460200;
  *&v8[4] = a4;
  v10 = a1;
  v9 = a2;
  result = objc_msgSend_copy(v8, a2, a5, a6);
  *a3 = result;
  return result;
}

unint64_t sub_2211847A4(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3, uint64_t a4)
{
  result = TSCEASTDurationElement::appendDurationElement(a2, *(a1 + 32), *(a1 + 44), (a1 + 40), a4);
  ++*a3;
  return result;
}

void *TSCEFormulaCreationMagic::duration@<X0>(__int16 a1@<W0>, void *a2@<X8>, double a3@<D0>, const char *a4@<X1>, uint64_t a5@<X2>, uint64_t a6@<X3>)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2211847A4;
  v8[3] = &unk_278460200;
  *&v8[4] = a3;
  v10 = a1;
  v9 = 66593;
  result = objc_msgSend_copy(v8, a4, a5, a6);
  *a2 = result;
  return result;
}

void TSCEFormulaCreationMagic::string(TSCEFormulaCreationMagic *this@<X0>, uint64_t *a2@<X8>)
{
  v3 = this;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_221184920;
  v8[3] = &unk_278460228;
  v9 = v3;
  v4 = v3;
  *a2 = objc_msgSend_copy(v8, v5, v6, v7);
}

unint64_t sub_221184920(uint64_t a1, TSCEASTNodeArray *this, NSString *a3)
{
  result = TSCEASTStringElement::appendStringElement(this, *(a1 + 32), a3);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::date(TSCEFormulaCreationMagic *this@<X0>, NSDate *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = this;
  v6 = a2;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_221184A3C;
  v12[3] = &unk_278460250;
  v13 = v5;
  v14 = v6;
  v7 = v6;
  v8 = v5;
  *a3 = objc_msgSend_copy(v12, v9, v10, v11);
}

unint64_t sub_221184A3C(uint64_t a1, TSCEASTNodeArray *this, _DWORD *a3, uint64_t a4, uint64_t a5, BOOL a6)
{
  result = TSCEASTDateElement::appendDateElement(this, *(a1 + 32), *(a1 + 40), 0, 0);
  ++*a3;
  return result;
}

void *TSCEFormulaCreationMagic::BOOLean@<X0>(TSCEFormulaCreationMagic *this@<X0>, void *a2@<X8>, const char *a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_221184AFC;
  v7[3] = &unk_278460270;
  v8 = this;
  result = objc_msgSend_copy(v7, a3, a4, a5);
  *a2 = result;
  return result;
}

unint64_t sub_221184AFC(uint64_t a1, TSCEASTNodeArray *this, _DWORD *a3, uint64_t a4)
{
  result = TSCEASTBooleanElement::appendBooleanElement(this, *(a1 + 32), a3, a4);
  ++*a3;
  return result;
}

void *TSCEFormulaCreationMagic::function_0arg@<X0>(__int16 a1@<W0>, void *a2@<X8>, const char *a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_221184BB4;
  v7[3] = &unk_278460290;
  v8 = a1;
  result = objc_msgSend_copy(v7, a3, a4, a5);
  *a2 = result;
  return result;
}

unint64_t sub_221184BB4(uint64_t a1, TSCEASTNodeArray *this, _DWORD *a3, uint64_t a4, NSString *a5)
{
  result = TSCEASTFunctionElement::appendFunctionElement(this, *(a1 + 32), 0, 0, a5);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::function_1arg(__int16 a1@<W0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3321888768;
  v10[2] = sub_221184CAC;
  v10[3] = &unk_2834A24E0;
  v11 = 0;
  v5 = MEMORY[0x223DA1C10](*a2);
  v6 = v11;
  v11 = v5;

  v12 = a1;
  *a3 = objc_msgSend_copy(v10, v7, v8, v9);
}

unint64_t sub_221184CAC(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  result = TSCEASTFunctionElement::appendFunctionElement(a2, *(a1 + 40), 1u, 0, v6);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::function_2arg(__int16 a1@<W0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3321888768;
  v14[2] = sub_221184DF4;
  v14[3] = &unk_2834A2510;
  v15 = 0;
  v7 = MEMORY[0x223DA1C10](*a2);
  v8 = v15;
  v15 = v7;

  v16 = 0;
  v9 = MEMORY[0x223DA1C10](*a3);
  v10 = v16;
  v16 = v9;

  v17 = a1;
  *a4 = objc_msgSend_copy(v14, v11, v12, v13);
}

unint64_t sub_221184DF4(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  result = TSCEASTFunctionElement::appendFunctionElement(a2, *(a1 + 48), 2u, 0, v6);
  ++*a3;
  return result;
}

void sub_221184E6C(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  v4 = MEMORY[0x223DA1C10](*(a2 + 32));
  v5 = *(a1 + 32);
  *(a1 + 32) = v4;

  *(a1 + 40) = 0;
  v6 = MEMORY[0x223DA1C10](*(a2 + 40));
  v7 = *(a1 + 40);
  *(a1 + 40) = v6;
}

void sub_221184ECC(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void TSCEFormulaCreationMagic::function_3arg(__int16 a1@<W0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3321888768;
  v18[2] = sub_22118501C;
  v18[3] = &unk_2834A2540;
  v19 = 0;
  v9 = MEMORY[0x223DA1C10](*a2);
  v10 = v19;
  v19 = v9;

  v20 = 0;
  v11 = MEMORY[0x223DA1C10](*a3);
  v12 = v20;
  v20 = v11;

  v21 = 0;
  v13 = MEMORY[0x223DA1C10](*a4);
  v14 = v21;
  v21 = v13;

  v22 = a1;
  *a5 = objc_msgSend_copy(v18, v15, v16, v17);
}

unint64_t sub_22118501C(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  (*(*(a1 + 48) + 16))();
  result = TSCEASTFunctionElement::appendFunctionElement(a2, *(a1 + 56), 3u, 0, v6);
  ++*a3;
  return result;
}

void sub_2211850AC(void *a1, void *a2)
{
  a1[4] = 0;
  v4 = MEMORY[0x223DA1C10](a2[4]);
  v5 = a1[4];
  a1[4] = v4;

  a1[5] = 0;
  v6 = MEMORY[0x223DA1C10](a2[5]);
  v7 = a1[5];
  a1[5] = v6;

  a1[6] = 0;
  v8 = MEMORY[0x223DA1C10](a2[6]);
  v9 = a1[6];
  a1[6] = v8;
}

void sub_221185124(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void TSCEFormulaCreationMagic::function_4arg(__int16 a1@<W0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3321888768;
  v22[2] = sub_2211852B0;
  v22[3] = &unk_2834A2570;
  v23 = 0;
  v11 = MEMORY[0x223DA1C10](*a2);
  v12 = v23;
  v23 = v11;

  v24 = 0;
  v13 = MEMORY[0x223DA1C10](*a3);
  v14 = v24;
  v24 = v13;

  v25 = 0;
  v15 = MEMORY[0x223DA1C10](*a4);
  v16 = v25;
  v25 = v15;

  v26 = 0;
  v17 = MEMORY[0x223DA1C10](*a5);
  v18 = v26;
  v26 = v17;

  v27 = a1;
  *a6 = objc_msgSend_copy(v22, v19, v20, v21);
}

unint64_t sub_2211852B0(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  (*(*(a1 + 48) + 16))();
  (*(*(a1 + 56) + 16))();
  result = TSCEASTFunctionElement::appendFunctionElement(a2, *(a1 + 64), 4u, 0, v6);
  ++*a3;
  return result;
}

void sub_221185358(void *a1, void *a2)
{
  a1[4] = 0;
  v4 = MEMORY[0x223DA1C10](a2[4]);
  v5 = a1[4];
  a1[4] = v4;

  a1[5] = 0;
  v6 = MEMORY[0x223DA1C10](a2[5]);
  v7 = a1[5];
  a1[5] = v6;

  a1[6] = 0;
  v8 = MEMORY[0x223DA1C10](a2[6]);
  v9 = a1[6];
  a1[6] = v8;

  a1[7] = 0;
  v10 = MEMORY[0x223DA1C10](a2[7]);
  v11 = a1[7];
  a1[7] = v10;
}

void sub_2211853E8(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void TSCEFormulaCreationMagic::function_5arg(__int16 a1@<W0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3321888768;
  v26[2] = sub_2211855A8;
  v26[3] = &unk_2834A25A0;
  v27 = 0;
  v13 = MEMORY[0x223DA1C10](*a2);
  v14 = v27;
  v27 = v13;

  v28 = 0;
  v15 = MEMORY[0x223DA1C10](*a3);
  v16 = v28;
  v28 = v15;

  v29 = 0;
  v17 = MEMORY[0x223DA1C10](*a4);
  v18 = v29;
  v29 = v17;

  v30 = 0;
  v19 = MEMORY[0x223DA1C10](*a5);
  v20 = v30;
  v30 = v19;

  v31 = 0;
  v21 = MEMORY[0x223DA1C10](*a6);
  v22 = v31;
  v31 = v21;

  v32 = a1;
  *a7 = objc_msgSend_copy(v26, v23, v24, v25);
}

unint64_t sub_2211855A8(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  (*(*(a1 + 48) + 16))();
  (*(*(a1 + 56) + 16))();
  (*(*(a1 + 64) + 16))();
  result = TSCEASTFunctionElement::appendFunctionElement(a2, *(a1 + 72), 5u, 0, v6);
  ++*a3;
  return result;
}

void sub_221185668(void *a1, void *a2)
{
  a1[4] = 0;
  v4 = MEMORY[0x223DA1C10](a2[4]);
  v5 = a1[4];
  a1[4] = v4;

  a1[5] = 0;
  v6 = MEMORY[0x223DA1C10](a2[5]);
  v7 = a1[5];
  a1[5] = v6;

  a1[6] = 0;
  v8 = MEMORY[0x223DA1C10](a2[6]);
  v9 = a1[6];
  a1[6] = v8;

  a1[7] = 0;
  v10 = MEMORY[0x223DA1C10](a2[7]);
  v11 = a1[7];
  a1[7] = v10;

  a1[8] = 0;
  v12 = MEMORY[0x223DA1C10](a2[8]);
  v13 = a1[8];
  a1[8] = v12;
}

void sub_221185710(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void TSCEFormulaCreationMagic::function_6arg(__int16 a1@<W0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, uint64_t *a8@<X8>)
{
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3321888768;
  v30[2] = sub_22118590C;
  v30[3] = &unk_2834A25D0;
  v31 = 0;
  v15 = MEMORY[0x223DA1C10](*a2);
  v16 = v31;
  v31 = v15;

  v32 = 0;
  v17 = MEMORY[0x223DA1C10](*a3);
  v18 = v32;
  v32 = v17;

  v33 = 0;
  v19 = MEMORY[0x223DA1C10](*a4);
  v20 = v33;
  v33 = v19;

  v34 = 0;
  v21 = MEMORY[0x223DA1C10](*a5);
  v22 = v34;
  v34 = v21;

  v35 = 0;
  v23 = MEMORY[0x223DA1C10](*a6);
  v24 = v35;
  v35 = v23;

  v36 = 0;
  v25 = MEMORY[0x223DA1C10](*a7);
  v26 = v36;
  v36 = v25;

  v37 = a1;
  *a8 = objc_msgSend_copy(v30, v27, v28, v29);
}

unint64_t sub_22118590C(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  (*(*(a1 + 48) + 16))();
  (*(*(a1 + 56) + 16))();
  (*(*(a1 + 64) + 16))();
  (*(*(a1 + 72) + 16))();
  result = TSCEASTFunctionElement::appendFunctionElement(a2, *(a1 + 80), 6u, 0, v6);
  ++*a3;
  return result;
}

void sub_2211859E4(void *a1, void *a2)
{
  a1[4] = 0;
  v4 = MEMORY[0x223DA1C10](a2[4]);
  v5 = a1[4];
  a1[4] = v4;

  a1[5] = 0;
  v6 = MEMORY[0x223DA1C10](a2[5]);
  v7 = a1[5];
  a1[5] = v6;

  a1[6] = 0;
  v8 = MEMORY[0x223DA1C10](a2[6]);
  v9 = a1[6];
  a1[6] = v8;

  a1[7] = 0;
  v10 = MEMORY[0x223DA1C10](a2[7]);
  v11 = a1[7];
  a1[7] = v10;

  a1[8] = 0;
  v12 = MEMORY[0x223DA1C10](a2[8]);
  v13 = a1[8];
  a1[8] = v12;

  a1[9] = 0;
  v14 = MEMORY[0x223DA1C10](a2[9]);
  v15 = a1[9];
  a1[9] = v14;
}

void sub_221185AA4(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void TSCEFormulaCreationMagic::function_7arg(__int16 a1@<W0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3321888768;
  v34[2] = sub_221185CD4;
  v34[3] = &unk_2834A2600;
  v35 = 0;
  v17 = MEMORY[0x223DA1C10](*a2);
  v18 = v35;
  v35 = v17;

  v36 = 0;
  v19 = MEMORY[0x223DA1C10](*a3);
  v20 = v36;
  v36 = v19;

  v37 = 0;
  v21 = MEMORY[0x223DA1C10](*a4);
  v22 = v37;
  v37 = v21;

  v38 = 0;
  v23 = MEMORY[0x223DA1C10](*a5);
  v24 = v38;
  v38 = v23;

  v39 = 0;
  v25 = MEMORY[0x223DA1C10](*a6);
  v26 = v39;
  v39 = v25;

  v40 = 0;
  v27 = MEMORY[0x223DA1C10](*a7);
  v28 = v40;
  v40 = v27;

  v41 = 0;
  v29 = MEMORY[0x223DA1C10](*a8);
  v30 = v41;
  v41 = v29;

  v42 = a1;
  *a9 = objc_msgSend_copy(v34, v31, v32, v33);
}

unint64_t sub_221185CD4(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  (*(*(a1 + 48) + 16))();
  (*(*(a1 + 56) + 16))();
  (*(*(a1 + 64) + 16))();
  (*(*(a1 + 72) + 16))();
  (*(*(a1 + 80) + 16))();
  result = TSCEASTFunctionElement::appendFunctionElement(a2, *(a1 + 88), 7u, 0, v6);
  ++*a3;
  return result;
}

void sub_221185DC4(void *a1, void *a2)
{
  a1[4] = 0;
  v4 = MEMORY[0x223DA1C10](a2[4]);
  v5 = a1[4];
  a1[4] = v4;

  a1[5] = 0;
  v6 = MEMORY[0x223DA1C10](a2[5]);
  v7 = a1[5];
  a1[5] = v6;

  a1[6] = 0;
  v8 = MEMORY[0x223DA1C10](a2[6]);
  v9 = a1[6];
  a1[6] = v8;

  a1[7] = 0;
  v10 = MEMORY[0x223DA1C10](a2[7]);
  v11 = a1[7];
  a1[7] = v10;

  a1[8] = 0;
  v12 = MEMORY[0x223DA1C10](a2[8]);
  v13 = a1[8];
  a1[8] = v12;

  a1[9] = 0;
  v14 = MEMORY[0x223DA1C10](a2[9]);
  v15 = a1[9];
  a1[9] = v14;

  a1[10] = 0;
  v16 = MEMORY[0x223DA1C10](a2[10]);
  v17 = a1[10];
  a1[10] = v16;
}

void sub_221185E9C(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void TSCEFormulaCreationMagic::function_8arg(__int16 a1@<W0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>, void *a10)
{
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3321888768;
  v37[2] = sub_221186108;
  v37[3] = &unk_2834A2630;
  v38 = 0;
  v18 = MEMORY[0x223DA1C10](*a2);
  v19 = v38;
  v38 = v18;

  v39 = 0;
  v20 = MEMORY[0x223DA1C10](*a3);
  v21 = v39;
  v39 = v20;

  v40 = 0;
  v22 = MEMORY[0x223DA1C10](*a4);
  v23 = v40;
  v40 = v22;

  v41 = 0;
  v24 = MEMORY[0x223DA1C10](*a5);
  v25 = v41;
  v41 = v24;

  v42 = 0;
  v26 = MEMORY[0x223DA1C10](*a6);
  v27 = v42;
  v42 = v26;

  v43 = 0;
  v28 = MEMORY[0x223DA1C10](*a7);
  v29 = v43;
  v43 = v28;

  v44 = 0;
  v30 = MEMORY[0x223DA1C10](*a8);
  v31 = v44;
  v44 = v30;

  v45 = 0;
  v32 = MEMORY[0x223DA1C10](*a10);
  v33 = v45;
  v45 = v32;

  v46 = a1;
  *a9 = objc_msgSend_copy(v37, v34, v35, v36);
}

unint64_t sub_221186108(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  (*(*(a1 + 48) + 16))();
  (*(*(a1 + 56) + 16))();
  (*(*(a1 + 64) + 16))();
  (*(*(a1 + 72) + 16))();
  (*(*(a1 + 80) + 16))();
  (*(*(a1 + 88) + 16))();
  result = TSCEASTFunctionElement::appendFunctionElement(a2, *(a1 + 96), 8u, 0, v6);
  ++*a3;
  return result;
}

void sub_221186210(void *a1, void *a2)
{
  a1[4] = 0;
  v4 = MEMORY[0x223DA1C10](a2[4]);
  v5 = a1[4];
  a1[4] = v4;

  a1[5] = 0;
  v6 = MEMORY[0x223DA1C10](a2[5]);
  v7 = a1[5];
  a1[5] = v6;

  a1[6] = 0;
  v8 = MEMORY[0x223DA1C10](a2[6]);
  v9 = a1[6];
  a1[6] = v8;

  a1[7] = 0;
  v10 = MEMORY[0x223DA1C10](a2[7]);
  v11 = a1[7];
  a1[7] = v10;

  a1[8] = 0;
  v12 = MEMORY[0x223DA1C10](a2[8]);
  v13 = a1[8];
  a1[8] = v12;

  a1[9] = 0;
  v14 = MEMORY[0x223DA1C10](a2[9]);
  v15 = a1[9];
  a1[9] = v14;

  a1[10] = 0;
  v16 = MEMORY[0x223DA1C10](a2[10]);
  v17 = a1[10];
  a1[10] = v16;

  a1[11] = 0;
  v18 = MEMORY[0x223DA1C10](a2[11]);
  v19 = a1[11];
  a1[11] = v18;
}

void sub_221186300(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void *TSCEFormulaCreationMagic::function_onArgVector@<X0>(__int16 a1@<W0>, const char *a2@<X1>, void *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2211863EC;
  v7[3] = &unk_2784602B0;
  v7[4] = a2;
  v8 = a1;
  result = objc_msgSend_copy(v7, a2, a4, a5);
  *a3 = result;
  return result;
}

unint64_t sub_2211863EC(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3, uint64_t a4, NSString *a5)
{
  v8 = *(a1 + 32);
  v9 = *v8;
  v10 = v8[1];
  if (*v8 == v10)
  {
    v13 = *v8;
  }

  else
  {
    do
    {
      v11 = *v9;
      v9 += 8;
      (*(v11 + 16))();
    }

    while (v9 != v10);
    v12 = *(a1 + 32);
    v9 = *v12;
    v13 = v12[1];
  }

  result = TSCEASTFunctionElement::appendFunctionElement(a2, *(a1 + 40), (v13 - v9) >> 3, 0, a5);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::AND(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(7, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::AND(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(7, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::OR(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(102, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::NOT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(96, &v5, a3);
}

void TSCEFormulaCreationMagic::SUMIFS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(231, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::SUM(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(168, &v5, a3);
}

void TSCEFormulaCreationMagic::SUM(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(168, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::SUM(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(168, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::COUNT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(30, &v5, a3);
}

void TSCEFormulaCreationMagic::COUNTA(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(31, &v5, a3);
}

void TSCEFormulaCreationMagic::RANGE_TRACKING_FORMULA(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(168, &v5, a3);
}

void TSCEFormulaCreationMagic::ISERROR(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(70, &v5, a3);
}

void TSCEFormulaCreationMagic::ISBLANK(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(69, &v5, a3);
}

void TSCEFormulaCreationMagic::PLAINTEXT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(297, &v5, a3);
}

void TSCEFormulaCreationMagic::IF(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3321888768;
  v17[2] = sub_221186D34;
  v17[3] = &unk_2834A2660;
  v18 = 0;
  v8 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v9 = v18;
  v18 = v8;

  v19 = 0;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v11 = v19;
  v19 = v10;

  v20 = 0;
  v12 = MEMORY[0x223DA1C10](*a3.var0);
  v13 = v20;
  v20 = v12;

  *a5 = objc_msgSend_copy(v17, v14, v15, v16);
}

unint64_t sub_221186D34(void *a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(a1[4] + 16))();
  appended = TSCEASTThunkElement::appendThunkNodeHeader(a2, 0, 27, v6);
  var1 = a2->var1;
  (*(a1[5] + 16))();
  if (a2->var0)
  {
    *&a2->var0[appended + 1] = a2->var1 - var1;
  }

  v10 = TSCEASTThunkElement::appendThunkNodeHeader(a2, 0, 27, v9);
  v11 = a2->var1;
  (*(a1[6] + 16))();
  if (a2->var0)
  {
    *&a2->var0[v10 + 1] = a2->var1 - v11;
  }

  result = TSCEASTFunctionElement::appendFunctionElement(a2, 0x3E, 3u, 0, v12);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::IFS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v25 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v23 = v12;
  TSCEFormulaCreationMagic::thunk(&v24, &v23, v27);
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v21 = v13;
  TSCEFormulaCreationMagic::thunk(&v22, &v21, v28);
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v19 = v14;
  TSCEFormulaCreationMagic::thunk(&v20, &v19, v29);
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::thunk(&v18, &v17, v30);
  TSCEFormulaCreationMagic::function_5arg(313, &v25, &v24, &v22, &v20, &v18, a7);
}

void TSCEFormulaCreationMagic::thunk(uint64_t *__return_ptr a1@<X8>, TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a3@<0:X1>)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3321888768;
  v9[2] = sub_2211891A4;
  v9[3] = &unk_2834A27A0;
  v10 = 0;
  v4 = MEMORY[0x223DA1C10](*this, a3.var0);
  v5 = v10;
  v10 = v4;

  *a1 = objc_msgSend_copy(v9, v6, v7, v8);
}

void TSCEFormulaCreationMagic::IFS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator tsceformulacreatora@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, tsceformulacreatora.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v30 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v28 = v14;
  TSCEFormulaCreationMagic::thunk(&v29, &v28, v32);
  v15 = MEMORY[0x223DA1C10](*tsceformulacreatora.var0);
  v26 = v15;
  TSCEFormulaCreationMagic::thunk(&v27, &v26, v33);
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v24 = v16;
  TSCEFormulaCreationMagic::thunk(&v25, &v24, v34);
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v22 = v17;
  TSCEFormulaCreationMagic::thunk(&v23, &v22, v35);
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::thunk(&v21, &v20, v36);
  TSCEFormulaCreationMagic::function_6arg(313, &v30, &v29, &v27, &v25, &v23, &v21, a8);
}

void TSCEFormulaCreationMagic::SWITCH(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator tsceformulacreatora@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, tsceformulacreatora.var0, a4.var0, a5.var0, a6.var0);
  v25 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v23 = v12;
  TSCEFormulaCreationMagic::thunk(&v24, &v23, v27);
  v13 = MEMORY[0x223DA1C10](*tsceformulacreatora.var0);
  v21 = v13;
  TSCEFormulaCreationMagic::thunk(&v22, &v21, v28);
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v19 = v14;
  TSCEFormulaCreationMagic::thunk(&v20, &v19, v29);
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::thunk(&v18, &v17, v30);
  TSCEFormulaCreationMagic::function_5arg(336, &v25, &v24, &v22, &v20, &v18, a7);
}

void TSCEFormulaCreationMagic::SWITCH(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator tsceformulacreatora@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, tsceformulacreatora.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v30 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v28 = v14;
  TSCEFormulaCreationMagic::thunk(&v29, &v28, v32);
  v15 = MEMORY[0x223DA1C10](*tsceformulacreatora.var0);
  v26 = v15;
  TSCEFormulaCreationMagic::thunk(&v27, &v26, v33);
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v24 = v16;
  TSCEFormulaCreationMagic::thunk(&v25, &v24, v34);
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v22 = v17;
  TSCEFormulaCreationMagic::thunk(&v23, &v22, v35);
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::thunk(&v21, &v20, v36);
  TSCEFormulaCreationMagic::function_6arg(336, &v30, &v29, &v27, &v25, &v23, &v21, a8);
}

void TSCEFormulaCreationMagic::SWITCH(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator tsceformulacreatora@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, TSCEFormulaCreator a8@<0:X7>, uint64_t *a9@<X8>)
{
  v22 = MEMORY[0x223DA1C10](*this, a2.var0, tsceformulacreatora.var0, a4.var0, a5.var0, a6.var0, a7.var0, a8.var0);
  v35 = v22;
  v16 = MEMORY[0x223DA1C10](*a2.var0);
  v33 = v16;
  TSCEFormulaCreationMagic::thunk(&v34, &v33, v37);
  v17 = MEMORY[0x223DA1C10](*tsceformulacreatora.var0);
  v31 = v17;
  TSCEFormulaCreationMagic::thunk(&v32, &v31, v38);
  v18 = MEMORY[0x223DA1C10](*a4.var0);
  v29 = v18;
  TSCEFormulaCreationMagic::thunk(&v30, &v29, v39);
  v19 = MEMORY[0x223DA1C10](*a5.var0);
  v27 = v19;
  TSCEFormulaCreationMagic::thunk(&v28, &v27, v40);
  v20 = MEMORY[0x223DA1C10](*a6.var0);
  v25 = v20;
  TSCEFormulaCreationMagic::thunk(&v26, &v25, v41);
  v21 = MEMORY[0x223DA1C10](*a7.var0);
  v23 = v21;
  TSCEFormulaCreationMagic::thunk(&v24, &v23, v42);
  TSCEFormulaCreationMagic::function_7arg(336, &v35, &v34, &v32, &v30, &v28, &v26, &v24, a9);
}

void TSCEFormulaCreationMagic::WRAPCOLS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(357, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::WRAPCOLS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(357, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::WRAPROWS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(358, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::WRAPROWS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(358, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::STOCK(uint64_t *__return_ptr a1@<X8>, TSCEFormulaCreationMagic *this@<X0>, NSString *a3@<X1>)
{
  v5 = this;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_221187B00;
  v10[3] = &unk_2784602D8;
  v11 = v5;
  v12 = a3;
  v6 = v5;
  *a1 = objc_msgSend_copy(v10, v7, v8, v9);
}

unint64_t sub_221187B00(uint64_t a1, TSCEASTNodeArray *this, NSString *a3)
{
  TSCEASTStringElement::appendStringElement(this, *(a1 + 32), a3);
  TSUDecimal::operator=();
  TSCEASTNumberElement::appendNumberElement(this, &v9, v5, v6);
  result = TSCEASTFunctionElement::appendFunctionElement(this, 0x12A, 2u, 0, v7);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::IF(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3321888768;
  v13[2] = sub_221187C54;
  v13[3] = &unk_2834A2690;
  v14 = 0;
  v6 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v7 = v14;
  v14 = v6;

  v15 = 0;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v9 = v15;
  v15 = v8;

  *a4 = objc_msgSend_copy(v13, v10, v11, v12);
}

unint64_t sub_221187C54(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  appended = TSCEASTThunkElement::appendThunkNodeHeader(a2, 0, 27, v6);
  var1 = a2->var1;
  (*(*(a1 + 40) + 16))();
  if (a2->var0)
  {
    *&a2->var0[appended + 1] = a2->var1 - var1;
  }

  result = TSCEASTFunctionElement::appendFunctionElement(a2, 0x3E, 2u, 0, v9);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::LET(TSCEFormulaCreationMagic *this@<X0>, NSString *a2@<X2>, TSCEFormulaCreator a3@<0:X3>, TSCEFormulaCreator a4@<0:X4>, void *a5@<X1>, uint64_t *a6@<X8>)
{
  v8 = this;
  v10 = a5;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3321888768;
  v19[2] = sub_221187E24;
  v19[3] = &unk_2834A26C8;
  v21 = 0;
  v11 = MEMORY[0x223DA1C10](*a2);
  v12 = v21;
  v21 = v11;

  v13 = v10;
  v23 = v8;
  v20 = v13;
  v22 = 0;
  v14 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v22;
  v22 = v14;

  *a6 = objc_msgSend_copy(v19, v16, v17, v18);
}

void sub_221187E24(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 40) + 16))();
  TSCEASTCompactWhitespace::TSCEASTCompactWhitespace(v9, 0);
  TSCEASTLetBindElement::appendLetNodeHeader(a2, *(a1 + 32), v9, *(a1 + 56), 0);
  ++*a3;
  (*(*(a1 + 48) + 16))();
  TSCEASTLetBindElement::appendEndScopeNode(a2, v6, v7, v8);
  ++*a3;
  v10 = v9;
  sub_22107C2C0(&v10);
}

void sub_221187EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_22107C2C0(va);
  _Unwind_Resume(a1);
}

void sub_221187EF4(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  v4 = MEMORY[0x223DA1C10](*(a2 + 40));
  v5 = *(a1 + 40);
  *(a1 + 40) = v4;

  *(a1 + 48) = 0;
  v6 = MEMORY[0x223DA1C10](*(a2 + 48));
  v7 = *(a1 + 48);
  *(a1 + 48) = v6;
}

void sub_221187F54(uint64_t a1)
{
  v2 = *(a1 + 40);
}

void TSCEFormulaCreationMagic::LET(TSCEFormulaCreationMagic *this@<X0>, NSString *a2@<X2>, TSCEFormulaCreator a3@<0:X3>, NSString *a4@<X4>, TSCEFormulaCreator a5@<0:X5>, TSCEFormulaCreator a6@<0:X6>, void *a7@<X1>, uint64_t *a8@<X8>)
{
  v12 = this;
  v14 = a7;
  v15 = a3.var0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3321888768;
  v21[2] = sub_221188114;
  v21[3] = &unk_2834A2700;
  v27 = v12;
  v24 = 0;
  v24 = MEMORY[0x223DA1C10](*a2);

  v16 = v14;
  v22 = v16;
  v25 = 0;
  v25 = MEMORY[0x223DA1C10](*a4);

  v17 = v15;
  v23 = v17;
  v26 = 0;
  v26 = MEMORY[0x223DA1C10](*a5.var0);

  *a8 = objc_msgSend_copy(v21, v18, v19, v20);
}

void sub_221188114(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  v6 = *(a1 + 72);
  TSCEASTCompactWhitespace::TSCEASTCompactWhitespace(v13, 0);
  (*(*(a1 + 48) + 16))();
  TSCEASTLetBindElement::appendLetNodeHeader(a2, *(a1 + 32), v13, v6, 0);
  ++*a3;
  (*(*(a1 + 56) + 16))();
  TSCEASTLetBindElement::appendLetNodeHeader(a2, *(a1 + 40), v13, (v6 + 1), 1);
  ++*a3;
  (*(*(a1 + 64) + 16))();
  TSCEASTLetBindElement::appendEndScopeNode(a2, v7, v8, v9);
  ++*a3;
  TSCEASTLetBindElement::appendEndScopeNode(a2, v10, v11, v12);
  ++*a3;
  v14 = v13;
  sub_22107C2C0(&v14);
}

void sub_221188230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_22107C2C0(va);
  _Unwind_Resume(a1);
}

void sub_221188248(void *a1, void *a2)
{
  a1[6] = 0;
  v4 = MEMORY[0x223DA1C10](a2[6]);
  v5 = a1[6];
  a1[6] = v4;

  a1[7] = 0;
  v6 = MEMORY[0x223DA1C10](a2[7]);
  v7 = a1[7];
  a1[7] = v6;

  a1[8] = 0;
  v8 = MEMORY[0x223DA1C10](a2[8]);
  v9 = a1[8];
  a1[8] = v8;
}

void sub_2211882C0(uint64_t a1)
{
  v2 = *(a1 + 48);
}

void TSCEFormulaCreationMagic::LET(TSCEFormulaCreationMagic *this@<X0>, NSString *a2@<X2>, TSCEFormulaCreator a3@<0:X3>, NSString *a4@<X4>, TSCEFormulaCreator a5@<0:X5>, NSString *a6@<X6>, TSCEFormulaCreator a7@<0:X7>, void *a8@<X1>, uint64_t *a9@<X8>, TSCEFormulaCreator a10)
{
  v16 = this;
  v18 = a8;
  v19 = a3.var0;
  v20 = a5.var0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3321888768;
  v27[2] = sub_2211884EC;
  v27[3] = &unk_2834A2738;
  v35 = v16;
  v31 = 0;
  v31 = MEMORY[0x223DA1C10](*a2);

  v21 = v18;
  v28 = v21;
  v32 = 0;
  v32 = MEMORY[0x223DA1C10](*a4);

  v22 = v19;
  v29 = v22;
  v33 = 0;
  v33 = MEMORY[0x223DA1C10](*a6);

  v23 = v20;
  v30 = v23;
  v34 = 0;
  v34 = MEMORY[0x223DA1C10](*a7.var0);

  *a9 = objc_msgSend_copy(v27, v24, v25, v26);
}

void sub_2211884EC(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  v6 = *(a1 + 88);
  TSCEASTCompactWhitespace::TSCEASTCompactWhitespace(v16, 0);
  (*(*(a1 + 56) + 16))();
  TSCEASTLetBindElement::appendLetNodeHeader(a2, *(a1 + 32), v16, v6, 0);
  ++*a3;
  (*(*(a1 + 64) + 16))();
  TSCEASTLetBindElement::appendLetNodeHeader(a2, *(a1 + 40), v16, (v6 + 1), 1);
  ++*a3;
  (*(*(a1 + 72) + 16))();
  TSCEASTLetBindElement::appendLetNodeHeader(a2, *(a1 + 48), v16, (v6 + 2), 1);
  ++*a3;
  (*(*(a1 + 80) + 16))();
  TSCEASTLetBindElement::appendEndScopeNode(a2, v7, v8, v9);
  ++*a3;
  TSCEASTLetBindElement::appendEndScopeNode(a2, v10, v11, v12);
  ++*a3;
  TSCEASTLetBindElement::appendEndScopeNode(a2, v13, v14, v15);
  ++*a3;
  v17 = v16;
  sub_22107C2C0(&v17);
}

void sub_221188658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_22107C2C0(va);
  _Unwind_Resume(a1);
}

void sub_221188670(void *a1, void *a2)
{
  a1[7] = 0;
  v4 = MEMORY[0x223DA1C10](a2[7]);
  v5 = a1[7];
  a1[7] = v4;

  a1[8] = 0;
  v6 = MEMORY[0x223DA1C10](a2[8]);
  v7 = a1[8];
  a1[8] = v6;

  a1[9] = 0;
  v8 = MEMORY[0x223DA1C10](a2[9]);
  v9 = a1[9];
  a1[9] = v8;

  a1[10] = 0;
  v10 = MEMORY[0x223DA1C10](a2[10]);
  v11 = a1[10];
  a1[10] = v10;
}

void sub_221188700(uint64_t a1)
{
  v2 = *(a1 + 56);
}

void *TSCEFormulaCreationMagic::letOrLambdaVar@<X0>(TSCEFormulaCreationMagic *this@<X0>, void *a2@<X8>, const char *a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2211887C8;
  v7[3] = &unk_2784602F8;
  v8 = this;
  result = objc_msgSend_copy(v7, a3, a4, a5);
  *a2 = result;
  return result;
}

unint64_t sub_2211887C8(uint64_t a1, TSCEASTNodeArray *this, _DWORD *a3, uint64_t a4)
{
  result = TSCEASTVariableElement::appendVariableElement(this, *(a1 + 32), a3, a4);
  ++*a3;
  return result;
}

void *TSCEFormulaCreationMagic::LET_VAR@<X0>(TSCEFormulaCreationMagic *this@<X0>, void *a2@<X8>, const char *a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2211887C8;
  v7[3] = &unk_2784602F8;
  v8 = this;
  result = objc_msgSend_copy(v7, a3, a4, a5);
  *a2 = result;
  return result;
}

void TSCEFormulaCreationMagic::LAMBDA(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v7 = a1;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3321888768;
  v14[2] = sub_22118896C;
  v14[3] = &unk_2834A2770;
  v16 = 0;
  v8 = MEMORY[0x223DA1C10](*a2);
  v9 = v16;
  v16 = v8;

  v15 = v7;
  v17 = a3;
  v10 = v7;
  *a4 = objc_msgSend_copy(v14, v11, v12, v13);
}

void sub_22118896C(uint64_t a1, TSCEASTNodeArray *this, _DWORD *a3, uint64_t a4)
{
  appended = TSCEASTThunkElement::appendThunkNodeHeader(this, 0, 56, a4);
  var1 = this->var1;
  (*(*(a1 + 40) + 16))();
  if (this->var0)
  {
    *&this->var0[appended + 1] = this->var1 - var1;
  }

  TSCEASTCompactWhitespace::TSCEASTCompactWhitespace(v9, 0);
  TSCEASTLambdaElement::appendLambdaNode(this, *(a1 + 32), v9, v9, *(a1 + 48));
  ++*a3;
  v10 = v9;
  sub_22107C2C0(&v10);
}

void sub_221188A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_22107C2C0(va);
  _Unwind_Resume(a1);
}

void sub_221188A4C(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  v3 = MEMORY[0x223DA1C10](*(a2 + 40));
  v4 = *(a1 + 40);
  *(a1 + 40) = v3;
}

void TSCEFormulaCreationMagic::parens(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3321888768;
  v9[2] = sub_221188B44;
  v9[3] = &unk_2834A27A0;
  v10 = 0;
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v10;
  v10 = v4;

  *a3 = objc_msgSend_copy(v9, v6, v7, v8);
}

unint64_t sub_221188B44(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  result = TSCEASTListElement::appendListNode(a2, 1, v5, v6);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::list(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3321888768;
  v13[2] = sub_221188C68;
  v13[3] = &unk_2834A2690;
  v14 = 0;
  v6 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v7 = v14;
  v14 = v6;

  v15 = 0;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v9 = v15;
  v15 = v8;

  *a4 = objc_msgSend_copy(v13, v10, v11, v12);
}

unint64_t sub_221188C68(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  result = TSCEASTListElement::appendListNode(a2, 2, v6, v7);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::list(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3321888768;
  v17[2] = sub_221188DE4;
  v17[3] = &unk_2834A2660;
  v18 = 0;
  v8 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v9 = v18;
  v18 = v8;

  v19 = 0;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v11 = v19;
  v19 = v10;

  v20 = 0;
  v12 = MEMORY[0x223DA1C10](*a3.var0);
  v13 = v20;
  v20 = v12;

  *a5 = objc_msgSend_copy(v17, v14, v15, v16);
}

unint64_t sub_221188DE4(void *a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(a1[4] + 16))();
  (*(a1[5] + 16))();
  (*(a1[6] + 16))();
  result = TSCEASTListElement::appendListNode(a2, 3, v6, v7);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::array(__int16 a1@<W0>, __int16 a2@<W1>, uint64_t *a3@<X8>, uint64_t *a4@<X2>)
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3321888768;
  v10[2] = sub_221188F40;
  v10[3] = &unk_2834A27D0;
  memset(v11, 0, sizeof(v11));
  sub_22119D9CC(v11, *a4, a4[1], (a4[1] - *a4) >> 3);
  v12 = a1;
  v13 = a2;
  *a3 = objc_msgSend_copy(v10, v7, v8, v9);
  v14 = v11;
  sub_22107C2C0(&v14);
}

void sub_221188F28(_Unwind_Exception *a1)
{
  *(v2 - 40) = v1;
  sub_22107C2C0((v2 - 40));
  _Unwind_Resume(a1);
}

unint64_t sub_221188F40(uint64_t a1, TSCEASTNodeArray *this, _DWORD *a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  while (v7 != v8)
  {
    v9 = *v7++;
    (*(v9 + 16))();
  }

  result = TSCEASTArrayElement::appendArrayNode(this, *(a1 + 56), *(a1 + 58), a4);
  ++*a3;
  return result;
}

uint64_t *sub_221188FBC(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v2 = (a1 + 32);
  v2[2] = 0;
  return sub_22119D9CC(v2, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
}

void *TSCEFormulaCreationMagic::emptyArg@<X0>(void *a1@<X8>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  result = objc_msgSend_copy(&unk_2834A2800, a2, a3, a4);
  *a1 = result;
  return result;
}

unint64_t sub_221189034(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3, uint64_t a4)
{
  result = TSCEASTTagOnlyElement::appendTagOnlyElement(a2, 23, a3, a4);
  ++*a3;
  return result;
}

void *TSCEFormulaCreationMagic::token@<X0>(TSCEFormulaCreationMagic *this@<X0>, void *a2@<X8>, const char *a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2211890E8;
  v7[3] = &unk_278460270;
  v8 = this;
  result = objc_msgSend_copy(v7, a3, a4, a5);
  *a2 = result;
  return result;
}

unint64_t sub_2211890E8(uint64_t a1, TSCEASTNodeArray *this, _DWORD *a3, uint64_t a4)
{
  result = TSCEASTTokenElement::appendTokenElement(this, *(a1 + 32), a3, a4);
  ++*a3;
  return result;
}

void *TSCEFormulaCreationMagic::nop@<X0>(void *a1@<X8>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  result = objc_msgSend_copy(&unk_2834A2820, a2, a3, a4);
  *a1 = result;
  return result;
}

unint64_t sub_221189154(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  TSUDecimal::operator=();
  result = TSCEASTNumberElement::appendNumberElement(a2, &v8, v5, v6);
  ++*a3;
  return result;
}

uint64_t sub_2211891A4(uint64_t a1, TSCEASTNodeArray *this, _DWORD *a3, uint64_t a4)
{
  appended = TSCEASTThunkElement::appendThunkNodeHeader(this, 0, 27, a4);
  var1 = this->var1;
  result = (*(*(a1 + 32) + 16))();
  if (this->var0)
  {
    *&this->var0[appended + 1] = this->var1 - var1;
  }

  ++*a3;
  return result;
}

void *TSCEFormulaCreationMagic::refError@<X0>(void *a1@<X8>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  result = objc_msgSend_copy(&unk_2834A2840, a2, a3, a4);
  *a1 = result;
  return result;
}

unint64_t sub_221189260(int a1, TSCEASTNodeArray *this, _DWORD *a3, uint64_t a4, uint64_t a5, TSCEUndoTractList *a6)
{
  result = TSCEASTRelativeCoordRefElement::appendReferenceError(this, this, a3, a4, a5, a6);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::refErrorWithUUID(TSCEFormulaCreationMagic *this@<X0>, TSKUIDStruct a2@<0:X1, 8:X2>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  upper = a2._upper;
  lower = a2._lower;
  v8 = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_22118935C;
  v13[3] = &unk_278460340;
  v17 = upper;
  v15 = this;
  v16 = lower;
  v14 = v8;
  v9 = v8;
  *a4 = objc_msgSend_copy(v13, v10, v11, v12);
}

unint64_t sub_22118935C(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  v10._flags = 0;
  v9._flags = *(a1 + 56);
  TSCEASTRefFlags::setPreserveFlags(&v10, &v9);
  result = TSCEASTRelativeCoordRefElement::appendReferenceErrorWithTractList(a2, (a1 + 40), v10._flags, *(a1 + 32), v6, v7);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::cellRef(TSCEFormulaCreationMagic *this@<X0>, TSCECrossTableReference *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a2;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22118948C;
  v10[3] = &unk_278460368;
  v12 = *this;
  v13 = *(this + 2);
  v11 = v5;
  v6 = v5;
  *a3 = objc_msgSend_copy(v10, v7, v8, v9);
}

unint64_t sub_22118948C(uint64_t a1, TSCEASTNodeArray *this, _DWORD *a3, uint64_t a4, uint64_t a5, TSCEUndoTractList *a6)
{
  if (*(a1 + 62))
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  LOBYTE(v9._row) = v7 | *(a1 + 63);
  result = TSCEASTRelativeCoordRefElement::appendRelativeCoordRefElement(this, (a1 + 40), (a1 + 56), &v9, *(a1 + 32), a6);
  ++*a3;
  return result;
}

uint64_t *TSCEFormulaCreationMagic::cellRef@<X0>(uint64_t *__return_ptr a1@<X8>, TSCEFormulaCreationMagic *this@<X0>, TSCECellRef *a3@<X1>, __int128 *a4@<X2>, uint64_t a5@<X3>)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_221189594;
  v7[3] = &unk_278460388;
  v8 = *this;
  v9 = *(this + 2);
  v12 = a3;
  v10 = *a4;
  v11 = *(a4 + 2);
  result = objc_msgSend_copy(v7, a3, a4, a5);
  *a1 = result;
  return result;
}

unint64_t sub_221189594(uint64_t a1, TSCEASTNodeArray *this, _DWORD *a3, uint64_t a4, uint64_t a5, TSCEUndoTractList *a6)
{
  LOBYTE(var11.coordinate.row) = *(a1 + 80);
  result = TSCEASTRelativeCoordRefElement::appendReference(this, (a1 + 32), &var11, (a1 + 56), 0, a6);
  ++*a3;
  return result;
}

void *TSCEFormulaCreationMagic::cellRefViaComponents@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_221189670;
  v9[3] = &unk_2784603A8;
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = a5;
  v9[7] = a6;
  v10 = a4;
  v11 = a3;
  result = objc_msgSend_copy(v9, a2, a3, a4);
  *a7 = result;
  return result;
}

unint64_t sub_221189670(__n128 *a1, TSCEASTNodeArray *this, uint64_t a3, const TSUPreserveFlags *a4, const TSKUIDStruct *a5)
{
  v6 = this;
  v9 = a1 + 2;
  v8 = a1[2].n128_u64[0];
  if (v8 || (v10 = a1[2].n128_u64[1]) != 0)
  {
    LODWORD(v10) = v8 != *(a3 + 16) || a1[2].n128_u64[1] != *(a3 + 24);
  }

  v11 = *(a3 + 32);
  v12 = (v11 & 0xFFFF00000000) == 0x7FFF00000000 || v11 == 0x7FFFFFFF;
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a3 + 32);
  }

  v14 = a1[3].n128_u64[0];
  if (v10)
  {
    if (v14 == 2)
    {
      v15 = a1[4].n128_u32[0];
      v16 = a1[3].n128_u64[1];
      v17 = v16 == 1;
      if (v16 == 1)
      {
        v18 = 0;
      }

      else
      {
        v18 = v13;
      }

      v19 = v15 - v18;
      if (v15 == 0x7FFFFFFF)
      {
        v20 = 0x7FFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      result = TSCEASTRelativeCoordRefElement::appendCrossTableRowReferenceElement(v6, v20, v17, v9, a5);
    }

    else
    {
      v28 = a1[3].n128_u64[1];
      if (v28 == 2)
      {
        v29 = a1[4].n128_u16[2];
        v12 = v14 == 1;
        v30 = v14 == 1;
        v31 = v13 >> 32;
        if (v12)
        {
          LOWORD(v31) = 0;
        }

        v32 = v29 - v31;
        if (v29 == 0x7FFF)
        {
          v32 = 0x7FFF;
        }

        result = TSCEASTRelativeCoordRefElement::appendCrossTableColumnReferenceElement(this, v32, v30, v9, a5);
      }

      else
      {
        HIBYTE(v44.var1) = (v14 == 1) | (2 * (v28 == 1));
        LODWORD(this) = a1[4].n128_u32[0];
        WORD2(this) = a1[4].n128_u16[2];
        v38 = (&v44.var1 + 7);
        v44.var0 = TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(v13, this, v38, a4);
        result = TSCEASTRelativeCoordRefElement::appendCrossTableCellReferenceElement(v6, &v44, (a1[3].n128_u64[0] == 1), a1[3].n128_u64[1] == 1, v9, 0, v39);
      }
    }
  }

  else if (v14 == 2)
  {
    v22 = a1[4].n128_u32[0];
    v23 = a1[3].n128_u64[1];
    v24 = v23 == 1;
    if (v23 == 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = v13;
    }

    v26 = v22 - v25;
    if (v22 == 0x7FFFFFFF)
    {
      v27 = 0x7FFFFFFFLL;
    }

    else
    {
      v27 = v26;
    }

    result = TSCEASTRelativeCoordRefElement::appendLocalRowReferenceElement(v6, v27, v24, a4);
  }

  else
  {
    v33 = a1[3].n128_u64[1];
    if (v33 == 2)
    {
      v34 = a1[4].n128_u16[2];
      v12 = v14 == 1;
      v35 = v14 == 1;
      v36 = v13 >> 32;
      if (v12)
      {
        LOWORD(v36) = 0;
      }

      v37 = v34 - v36;
      if (v34 == 0x7FFF)
      {
        v37 = 0x7FFF;
      }

      result = TSCEASTRelativeCoordRefElement::appendLocalColumnReferenceElement(this, v37, v35, a4);
    }

    else
    {
      v43 = (v14 == 1) | (2 * (v33 == 1));
      LODWORD(this) = a1[4].n128_u32[0];
      WORD2(this) = a1[4].n128_u16[2];
      v40 = &v43;
      RelativeCellCoordinateFromAbsoluteCoordinates = TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(v13, this, v40, a4);
      result = TSCEASTRelativeCoordRefElement::appendLocalCellReferenceElement(v6, ((RelativeCellCoordinateFromAbsoluteCoordinates << 16) >> 48), RelativeCellCoordinateFromAbsoluteCoordinates, a1[3].n128_u64[0] == 1, a1[3].n128_u64[1] == 1, 0, v42);
    }
  }

  ++*a3;
  return result;
}

void *TSCEFormulaCreationMagic::localCellRefViaComponents@<X0>(int a1@<W0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_221189670;
  v7[3] = &unk_2784603A8;
  v7[4] = 0;
  v7[5] = 0;
  v7[6] = a3;
  v7[7] = a4;
  v8 = a2;
  v9 = a1;
  result = objc_msgSend_copy(v7, a2, a3, a4);
  *a5 = result;
  return result;
}

void TSCEFormulaCreationMagic::cellRange(TSCEFormulaCreationMagic *this@<X0>, TSKUIDStruct a2@<0:X1, 8:X2>, uint64_t a3@<X3>, int a4@<W4>, int a5@<W5>, uint64_t *a6@<X8>)
{
  lower = a2._lower;
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = sub_221189670;
  v24 = &unk_2784603A8;
  v25 = this;
  v26 = a2._lower;
  v27 = 0u;
  v28 = a3;
  upper = a2._upper;
  v11 = objc_msgSend_copy(&v21, a2._lower, a2._upper, a3);
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = sub_221189670;
  v24 = &unk_2784603A8;
  v25 = this;
  v26 = lower;
  v27 = 0u;
  v28 = a5;
  upper = a4;
  v15 = objc_msgSend_copy(&v21, v12, v13, v14);
  v16 = MEMORY[0x223DA1C10](v11);
  v20 = v16;
  v17 = MEMORY[0x223DA1C10](v15);
  v19 = v17;
  v18.var0 = &v19;
  TSCEFormulaCreationMagic::colon(&v20, v18, v30, a6);
}

void TSCEFormulaCreationMagic::colon(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3321888768;
  v13[2] = sub_22118AC68;
  v13[3] = &unk_2834A2690;
  v14 = 0;
  v6 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v7 = v14;
  v14 = v6;

  v15 = 0;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v9 = v15;
  v15 = v8;

  *a4 = objc_msgSend_copy(v13, v10, v11, v12);
}

void TSCEFormulaCreationMagic::uidRef(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3321888768;
  v12[2] = sub_221189C98;
  v12[3] = &unk_2834A2860;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  sub_221086EBC(&v13, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 4);
  __p = 0;
  v17 = 0;
  v18 = 0;
  sub_221086EBC(&__p, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 4);
  v19 = a1;
  v20 = a2;
  *a5 = objc_msgSend_copy(v12, v9, v10, v11);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }
}

void sub_221189C64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_221189C98(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  v6 = objc_opt_new();
  v7 = [TSCEUndoTract alloc];
  v9 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v7, v8, a1 + 32, a1 + 56, 4);
  objc_msgSend_setIsRangeRef_(v9, v10, 1, v11);
  objc_msgSend_appendUidTract_(v6, v12, v9, v13);
  v17 = objc_msgSend_preserveFlags(v6, v14, v15, v16);
  sub_22122B9B8(v18, (a1 + 80), v6, &v17);
  TSCEASTUidReferenceElement::appendUidReferenceElement(a2, v18);
  ++*a3;
}

uint64_t *sub_221189D94(void *a1, uint64_t a2)
{
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  sub_221086EBC(a1 + 4, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 4);
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = 0;
  return sub_221086EBC(a1 + 7, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 4);
}

void sub_221189E00(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_221189E1C(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

void TSCEFormulaCreationMagic::uidRef(TSCEFormulaCreationMagic *this@<X0>, TSKUIDStruct a2@<0:X1, 8:X2>, uint64_t *a3@<X8>)
{
  lower = a2._lower;
  v6 = a2._upper;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_221189F34;
  v11[3] = &unk_2784603D0;
  v13 = this;
  v14 = lower;
  v12 = v6;
  v7 = v6;
  *a3 = objc_msgSend_copy(v11, v8, v9, v10);
}

void sub_221189F34(uint64_t a1, char *a2, _DWORD *a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = objc_msgSend_preserveFlags(v7, a2, a3, a4);
  sub_22122B9B8(v9, (a1 + 40), v7, &v8);
  TSCEASTUidReferenceElement::appendUidReferenceElement(a2, v9);
  ++*a3;
}

void TSCEFormulaCreationMagic::uidTractRef(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3321888768;
  v12[2] = sub_22118A0E8;
  v12[3] = &unk_2834A2860;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  sub_221086EBC(&v13, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 4);
  __p = 0;
  v17 = 0;
  v18 = 0;
  sub_221086EBC(&__p, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 4);
  v19 = a1;
  v20 = a2;
  *a5 = objc_msgSend_copy(v12, v9, v10, v11);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }
}

void sub_22118A0B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_22118A0E8(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  v6 = objc_opt_new();
  v7 = [TSCEUndoTract alloc];
  v9 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v7, v8, a1 + 32, a1 + 56, 4);
  objc_msgSend_setIsRangeRef_(v9, v10, 1, v11);
  objc_msgSend_appendUidTract_(v6, v12, v9, v13);
  v14 = 15;
  sub_22122B9B8(v15, (a1 + 80), v6, &v14);
  TSCEASTUidReferenceElement::appendUidReferenceElement(a2, v15);
  ++*a3;
}

void TSCEFormulaCreationMagic::viewTractRef(TSCEFormulaCreationMagic *this@<X0>, uint64_t *x8_0@<X8>)
{
  v4 = this;
  v8 = objc_msgSend_tract(v4, v5, v6, v7);
  v12 = objc_msgSend_tableUID(v4, v9, v10, v11);
  v14 = v13;
  v17 = objc_msgSend_columnUids(v8, v13, v15, v16);
  v37 = 0;
  v38 = 0;
  v39 = 0;
  sub_221086EBC(&v37, *v17, *(v17 + 8), (*(v17 + 8) - *v17) >> 4);
  v21 = objc_msgSend_rowUids(v8, v18, v19, v20);
  __p = 0;
  v35 = 0;
  v36 = 0;
  sub_221086EBC(&__p, *v21, *(v21 + 8), (*(v21 + 8) - *v21) >> 4);
  v25 = objc_msgSend_columnGroupLevel(v4, v22, v23, v24);
  v29 = objc_msgSend_rowGroupLevel(v4, v26, v27, v28);
  v33 = objc_msgSend_aggregateIndexLevel(v4, v30, v31, v32);
  TSCEFormulaCreationMagic::viewTractRef(v12, v14, &v37, &__p, v25, v29, v33, x8_0);
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }
}

void TSCEFormulaCreationMagic::viewTractRef(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, __int16 a7@<W6>, uint64_t *a8@<X8>)
{
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3321888768;
  v18[2] = sub_22118A488;
  v18[3] = &unk_2834A2890;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  sub_221086EBC(&v19, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 4);
  __p = 0;
  v23 = 0;
  v24 = 0;
  sub_221086EBC(&__p, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 4);
  v25 = a1;
  v26 = a2;
  v28 = a5;
  v29 = a6;
  v27 = a7;
  *a8 = objc_msgSend_copy(v18, v15, v16, v17);
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }
}

void sub_22118A454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_22118A488(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  v6 = objc_opt_new();
  v7 = [TSCEUndoTract alloc];
  v9 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v7, v8, a1 + 32, a1 + 56, 4);
  objc_msgSend_setIsRangeRef_(v9, v10, 1, v11);
  objc_msgSend_appendUidTract_(v6, v12, v9, v13);
  v14 = 15;
  sub_22122B9B8(v15, (a1 + 80), v6, &v14);
  TSCEASTViewTractRefElement::appendViewTractRefElement(a2, v15, *(a1 + 98), *(a1 + 99), *(a1 + 96));
  ++*a3;
}

uint64_t *sub_22118A58C(void *a1, uint64_t a2)
{
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  sub_221086EBC(a1 + 4, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 4);
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = 0;
  return sub_221086EBC(a1 + 7, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 4);
}

void sub_22118A5F8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_22118A614(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

void TSCEFormulaCreationMagic::viewCellRef(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t *a9@<X8>, __int16 a10)
{
  *&v28 = a3;
  *(&v28 + 1) = a4;
  *&v27 = a5;
  *(&v27 + 1) = a6;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  sub_221083454(&v24, &v28);
  sub_221083454(&v21, &v27);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  sub_221086EBC(&v18, v24, v25, (v25 - v24) >> 4);
  __p = 0;
  v16 = 0;
  v17 = 0;
  sub_221086EBC(&__p, v21, v22, (v22 - v21) >> 4);
  TSCEFormulaCreationMagic::viewTractRef(a1, a2, &v18, &__p, a7, a8, a10, a9);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }
}

void sub_22118A780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void *TSCEFormulaCreationMagic::linkedCellRef@<X0>(TSCEFormulaCreationMagic *this@<X0>, TSKUIDStruct a2@<0:X1, 8:X2>, void *a3@<X8>, uint64_t a4@<X3>)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22118A858;
  v6[3] = &unk_2784601E0;
  v6[4] = this;
  v6[5] = a2._lower;
  result = objc_msgSend_copy(v6, a2._lower, a2._upper, a4);
  *a3 = result;
  return result;
}

unint64_t sub_22118A858(TSCEASTNodeArray *a1, TSCEASTNodeArray *this, const TSKUIDStruct *a3, uint64_t a4)
{
  result = TSCEASTLinkedRefElement::appendLinkedCellRefElement(this, &a1[1], a3, a4);
  ++LODWORD(a3->_lower);
  return result;
}

void *TSCEFormulaCreationMagic::linkedColumnRef@<X0>(TSCEFormulaCreationMagic *this@<X0>, TSKUIDStruct a2@<0:X1, 8:X2>, void *a3@<X8>, uint64_t a4@<X3>)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22118A910;
  v6[3] = &unk_2784601E0;
  v6[4] = this;
  v6[5] = a2._lower;
  result = objc_msgSend_copy(v6, a2._lower, a2._upper, a4);
  *a3 = result;
  return result;
}

unint64_t sub_22118A910(__n128 *a1, TSCEASTNodeArray *a2, _DWORD *a3, uint64_t a4)
{
  result = TSCEASTLinkedRefElement::appendLinkedRefElement(a2, 64, a1 + 2, a4);
  ++*a3;
  return result;
}

void *TSCEFormulaCreationMagic::linkedRowRef@<X0>(TSCEFormulaCreationMagic *this@<X0>, TSKUIDStruct a2@<0:X1, 8:X2>, void *a3@<X8>, uint64_t a4@<X3>)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22118A9C8;
  v6[3] = &unk_2784601E0;
  v6[4] = this;
  v6[5] = a2._lower;
  result = objc_msgSend_copy(v6, a2._lower, a2._upper, a4);
  *a3 = result;
  return result;
}

unint64_t sub_22118A9C8(__n128 *a1, TSCEASTNodeArray *a2, _DWORD *a3, uint64_t a4)
{
  result = TSCEASTLinkedRefElement::appendLinkedRefElement(a2, 65, a1 + 2, a4);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::categoryRef(TSCEFormulaCreationMagic *this@<X0>, uint64_t *a2@<X8>)
{
  v3 = this;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22118AAB0;
  v8[3] = &unk_278460228;
  v9 = v3;
  v4 = v3;
  *a2 = objc_msgSend_copy(v8, v5, v6, v7);
}

unint64_t sub_22118AAB0(uint64_t a1, TSCEASTNodeArray *this, TSCECategoryRef *a3)
{
  result = TSCEASTCategoryRefElement::appendCategoryRefElement(this, *(a1 + 32), a3);
  ++LODWORD(a3->super.isa);
  return result;
}

void TSCEFormulaCreationMagic::colonTractRef(TSCEFormulaCreationMagic *this@<X0>, uint64_t *a2@<X8>)
{
  v3 = this;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22118AB98;
  v8[3] = &unk_278460228;
  v9 = v3;
  v4 = v3;
  *a2 = objc_msgSend_copy(v8, v5, v6, v7);
}

unint64_t sub_22118AB98(uint64_t a1, TSCEASTNodeArray *this, _DWORD *a3, TSCEUndoTractList *a4)
{
  result = TSCEASTColonTractElement::appendColonTractElement(this, *(a1 + 32), 0, a4);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::absColonTractRef(TSCEFormulaCreationMagic *this@<X0>, TSCECellTractRef *a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = this;
  v5 = [TSCERelativeTractRef alloc];
  v7 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v5, v6, v8, a2);
  TSCEFormulaCreationMagic::colonTractRef(v7, a3);
}

unint64_t sub_22118AC68(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  result = TSCEASTBinaryElement::appendBinaryElement(a2, 28, v6, v7);
  ++*a3;
  return result;
}

void *TSCEFormulaCreationMagic::TODAY@<X0>(void *a1@<X8>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_221184BB4;
  v6[3] = &unk_278460290;
  v7 = 154;
  result = objc_msgSend_copy(v6, a2, a3, a4);
  *a1 = result;
  return result;
}

void TSCEFormulaCreationMagic::DATE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(39, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::DATEDIF(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(40, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::EDATE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(47, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::YEAR(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(167, &v5, a3);
}

void TSCEFormulaCreationMagic::MONTH(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(94, &v5, a3);
}

void TSCEFormulaCreationMagic::DAY(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(41, &v5, a3);
}

void TSCEFormulaCreationMagic::WEEKDAY(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(166, &v5, a3);
}

void TSCEFormulaCreationMagic::WEEKDAY(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(166, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::MONTHNAME(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(205, &v5, a3);
}

void TSCEFormulaCreationMagic::DAYNAME(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(236, &v5, a3);
}

void TSCEFormulaCreationMagic::WEEKNUM(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(206, &v5, a3);
}

void TSCEFormulaCreationMagic::DURATION(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(212, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::DURATION(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(212, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::CEILING(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(17, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::FLOOR(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(55, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::ROUND(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(126, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::ROUNDUP(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(128, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::ROUNDDOWN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(127, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::LT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3321888768;
  v13[2] = sub_22118B834;
  v13[3] = &unk_2834A2690;
  v14 = 0;
  v6 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v7 = v14;
  v14 = v6;

  v15 = 0;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v9 = v15;
  v15 = v8;

  *a4 = objc_msgSend_copy(v13, v10, v11, v12);
}

unint64_t sub_22118B834(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  result = TSCEASTTagOnlyElement::appendTagOnlyElement(a2, 9, v6, v7);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::LE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3321888768;
  v13[2] = sub_22118B97C;
  v13[3] = &unk_2834A2690;
  v14 = 0;
  v6 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v7 = v14;
  v14 = v6;

  v15 = 0;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v9 = v15;
  v15 = v8;

  *a4 = objc_msgSend_copy(v13, v10, v11, v12);
}

unint64_t sub_22118B97C(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  result = TSCEASTTagOnlyElement::appendTagOnlyElement(a2, 10, v6, v7);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::GT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3321888768;
  v13[2] = sub_22118BAC4;
  v13[3] = &unk_2834A2690;
  v14 = 0;
  v6 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v7 = v14;
  v14 = v6;

  v15 = 0;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v9 = v15;
  v15 = v8;

  *a4 = objc_msgSend_copy(v13, v10, v11, v12);
}

unint64_t sub_22118BAC4(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  result = TSCEASTTagOnlyElement::appendTagOnlyElement(a2, 7, v6, v7);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::GE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3321888768;
  v13[2] = sub_22118BC0C;
  v13[3] = &unk_2834A2690;
  v14 = 0;
  v6 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v7 = v14;
  v14 = v6;

  v15 = 0;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v9 = v15;
  v15 = v8;

  *a4 = objc_msgSend_copy(v13, v10, v11, v12);
}

unint64_t sub_22118BC0C(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  result = TSCEASTTagOnlyElement::appendTagOnlyElement(a2, 8, v6, v7);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::EQ(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3321888768;
  v13[2] = sub_22118BD54;
  v13[3] = &unk_2834A2690;
  v14 = 0;
  v6 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v7 = v14;
  v14 = v6;

  v15 = 0;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v9 = v15;
  v15 = v8;

  *a4 = objc_msgSend_copy(v13, v10, v11, v12);
}

unint64_t sub_22118BD54(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  result = TSCEASTTagOnlyElement::appendTagOnlyElement(a2, 11, v6, v7);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::NE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3321888768;
  v13[2] = sub_22118BE9C;
  v13[3] = &unk_2834A2690;
  v14 = 0;
  v6 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v7 = v14;
  v14 = v6;

  v15 = 0;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v9 = v15;
  v15 = v8;

  *a4 = objc_msgSend_copy(v13, v10, v11, v12);
}

unint64_t sub_22118BE9C(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  result = TSCEASTTagOnlyElement::appendTagOnlyElement(a2, 12, v6, v7);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::negate(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3321888768;
  v9[2] = sub_22118BFB8;
  v9[3] = &unk_2834A27A0;
  v10 = 0;
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v10;
  v10 = v4;

  *a3 = objc_msgSend_copy(v9, v6, v7, v8);
}

unint64_t sub_22118BFB8(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  result = TSCEASTTagOnlyElement::appendTagOnlyElement(a2, 13, v5, v6);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::operator+(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3321888768;
  v12[2] = sub_22118C0DC;
  v12[3] = &unk_2834A2690;
  v13 = 0;
  v5 = MEMORY[0x223DA1C10](*a1);
  v6 = v13;
  v13 = v5;

  v14 = 0;
  v7 = MEMORY[0x223DA1C10](*a2);
  v8 = v14;
  v14 = v7;

  *a3 = objc_msgSend_copy(v12, v9, v10, v11);
}

unint64_t sub_22118C0DC(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  result = TSCEASTTagOnlyElement::appendTagOnlyElement(a2, 1, v6, v7);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::operator-(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3321888768;
  v12[2] = sub_22118C224;
  v12[3] = &unk_2834A2690;
  v13 = 0;
  v5 = MEMORY[0x223DA1C10](*a1);
  v6 = v13;
  v13 = v5;

  v14 = 0;
  v7 = MEMORY[0x223DA1C10](*a2);
  v8 = v14;
  v14 = v7;

  *a3 = objc_msgSend_copy(v12, v9, v10, v11);
}

unint64_t sub_22118C224(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  result = TSCEASTTagOnlyElement::appendTagOnlyElement(a2, 2, v6, v7);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::operator*(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3321888768;
  v12[2] = sub_22118C36C;
  v12[3] = &unk_2834A2690;
  v13 = 0;
  v5 = MEMORY[0x223DA1C10](*a1);
  v6 = v13;
  v13 = v5;

  v14 = 0;
  v7 = MEMORY[0x223DA1C10](*a2);
  v8 = v14;
  v14 = v7;

  *a3 = objc_msgSend_copy(v12, v9, v10, v11);
}

unint64_t sub_22118C36C(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  result = TSCEASTTagOnlyElement::appendTagOnlyElement(a2, 3, v6, v7);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::operator/(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3321888768;
  v12[2] = sub_22118C4B4;
  v12[3] = &unk_2834A2690;
  v13 = 0;
  v5 = MEMORY[0x223DA1C10](*a1);
  v6 = v13;
  v13 = v5;

  v14 = 0;
  v7 = MEMORY[0x223DA1C10](*a2);
  v8 = v14;
  v14 = v7;

  *a3 = objc_msgSend_copy(v12, v9, v10, v11);
}

unint64_t sub_22118C4B4(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  result = TSCEASTTagOnlyElement::appendTagOnlyElement(a2, 4, v6, v7);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::operator&(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3321888768;
  v12[2] = sub_22118C5FC;
  v12[3] = &unk_2834A2690;
  v13 = 0;
  v5 = MEMORY[0x223DA1C10](*a1);
  v6 = v13;
  v13 = v5;

  v14 = 0;
  v7 = MEMORY[0x223DA1C10](*a2);
  v8 = v14;
  v14 = v7;

  *a3 = objc_msgSend_copy(v12, v9, v10, v11);
}

unint64_t sub_22118C5FC(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
  result = TSCEASTTagOnlyElement::appendTagOnlyElement(a2, 6, v6, v7);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::opPercent(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3321888768;
  v9[2] = sub_22118C718;
  v9[3] = &unk_2834A27A0;
  v10 = 0;
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v10;
  v10 = v4;

  *a3 = objc_msgSend_copy(v9, v6, v7, v8);
}

unint64_t sub_22118C718(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  result = TSCEASTTagOnlyElement::appendTagOnlyElement(a2, 15, v5, v6);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::opIntersect(void *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3321888768;
  v10[2] = sub_22118C818;
  v10[3] = &unk_2834A28C0;
  v11 = 0;
  v5 = MEMORY[0x223DA1C10](*a1);
  v6 = v11;
  v11 = v5;

  v12 = a2;
  *a3 = objc_msgSend_copy(v10, v7, v8, v9);
}

unint64_t sub_22118C818(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  result = TSCEASTIntersectionElement::appendIntersectionElement(a2, *(a1 + 40), v6, v7);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::opSpillRange(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3321888768;
  v9[2] = sub_22118C91C;
  v9[3] = &unk_2834A27A0;
  v10 = 0;
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v10;
  v10 = v4;

  *a3 = objc_msgSend_copy(v9, v6, v7, v8);
}

unint64_t sub_22118C91C(uint64_t a1, TSCEASTNodeArray *a2, _DWORD *a3)
{
  (*(*(a1 + 32) + 16))();
  result = TSCEASTTagOnlyElement::appendTagOnlyElement(a2, 70, v5, v6);
  ++*a3;
  return result;
}

void TSCEFormulaCreationMagic::FIND_CASEINSENSITIVE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(296, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::LEN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(77, &v5, a3);
}

void TSCEFormulaCreationMagic::RIGHT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(124, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::LEFT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(76, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::MID(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(87, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::UPPER(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(158, &v5, a3);
}

void TSCEFormulaCreationMagic::LOWER(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(82, &v5, a3);
}

void TSCEFormulaCreationMagic::CHAR(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(18, &v5, a3);
}

void TSCEFormulaCreationMagic::CODE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(21, &v5, a3);
}

void TSCEFormulaCreationMagic::EXACT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(49, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::INDIRECT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(64, &v5, a3);
}

void TSCEFormulaCreationMagic::INDIRECT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(64, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::TOCOL(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(348, &v5, a3);
}

void TSCEFormulaCreationMagic::TOCOL(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(348, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::TOCOL(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(348, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::TOROW(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(349, &v5, a3);
}

void TSCEFormulaCreationMagic::TOROW(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(349, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::TOROW(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(349, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::UNION_RANGES(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(285, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::UNION_RANGES(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(285, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::INTERSECT_RANGES(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(280, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::INTERSECT_RANGES(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(280, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::VLOOKUP(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(165, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::XLOOKUP(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(314, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::XMATCH(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(315, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::ARRAYTOTEXT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(341, &v5, a3);
}

void TSCEFormulaCreationMagic::ARRAYTOTEXT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(341, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::CHOOSECOLS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(354, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::CHOOSECOLS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(354, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::CHOOSECOLS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(354, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::CHOOSEROWS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(353, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::CHOOSEROWS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(353, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::CHOOSEROWS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(353, &v17, &v16, &v15, &v14, a6);
}

void *TSCEFormulaCreationMagic::RANDARRAY@<X0>(void *a1@<X8>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_221184BB4;
  v6[3] = &unk_278460290;
  v7 = 346;
  result = objc_msgSend_copy(v6, a2, a3, a4);
  *a1 = result;
  return result;
}

void TSCEFormulaCreationMagic::RANDARRAY(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(346, &v5, a3);
}

void TSCEFormulaCreationMagic::RANDARRAY(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(346, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::RANDARRAY(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(346, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::RANDARRAY(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(346, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::RANDARRAY(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(346, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::MAKEARRAY(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(365, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::BYCOL(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(370, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::BYROW(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(369, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::MAP(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(366, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::MAP(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(366, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::MAP(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(366, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::LAMBDA_APPLY(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(372, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::LAMBDA_APPLY(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(372, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::LAMBDA_APPLY(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(372, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::REDUCE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(367, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::SCAN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(368, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::ISOMITTED(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(371, &v5, a3);
}

void TSCEFormulaCreationMagic::SORT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(343, &v5, a3);
}

void TSCEFormulaCreationMagic::SORT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(343, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::SORT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(343, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::SORT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(343, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::SORTBY(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(344, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::SORTBY(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(344, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::SORTBY(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(344, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::TRANSPOSE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(220, &v5, a3);
}

void TSCEFormulaCreationMagic::TAKE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(350, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::TAKE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(350, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::DROP(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(351, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::DROP(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(351, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::EXPAND(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(352, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::EXPAND(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(352, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::EXPAND(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(352, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::FILTER(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(342, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::FILTER(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(342, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::HSTACK(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(355, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::HSTACK(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(355, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::VSTACK(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(356, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::VSTACK(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(356, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::UNIQUE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(345, &v5, a3);
}

void TSCEFormulaCreationMagic::UNIQUE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(345, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::UNIQUE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(345, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::MDETERM(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(359, &v5, a3);
}

void TSCEFormulaCreationMagic::MINVERSE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(360, &v5, a3);
}

void TSCEFormulaCreationMagic::MMULT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(361, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::MUNIT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(362, &v5, a3);
}

void TSCEFormulaCreationMagic::VALUE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(159, &v5, a3);
}

void TSCEFormulaCreationMagic::DATEVALUE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(228, &v5, a3);
}

void TSCEFormulaCreationMagic::TIMEVALUE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(153, &v5, a3);
}

void TSCEFormulaCreationMagic::_ABS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(1, &v5, a3);
}

void TSCEFormulaCreationMagic::ACCRINT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, TSCEFormulaCreator a8@<0:X7>, uint64_t *a9@<X8>)
{
  v22 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0, a8.var0);
  v29 = v22;
  v16 = MEMORY[0x223DA1C10](*a2.var0);
  v28 = v16;
  v17 = MEMORY[0x223DA1C10](*a3.var0);
  v27 = v17;
  v18 = MEMORY[0x223DA1C10](*a4.var0);
  v26 = v18;
  v19 = MEMORY[0x223DA1C10](*a5.var0);
  v25 = v19;
  v20 = MEMORY[0x223DA1C10](*a6.var0);
  v24 = v20;
  v21 = MEMORY[0x223DA1C10](*a7.var0);
  v23 = v21;
  TSCEFormulaCreationMagic::function_7arg(2, &v29, &v28, &v27, &v26, &v25, &v24, &v23, a9);
}

void TSCEFormulaCreationMagic::ACCRINTM(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(3, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::ACOS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(4, &v5, a3);
}

void TSCEFormulaCreationMagic::ACOSH(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(5, &v5, a3);
}

void TSCEFormulaCreationMagic::ADDRESS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(6, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::AND(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(7, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::AREAS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(8, &v5, a3);
}

void TSCEFormulaCreationMagic::ASIN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(9, &v5, a3);
}

void TSCEFormulaCreationMagic::ASINH(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(10, &v5, a3);
}

void TSCEFormulaCreationMagic::ATAN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(11, &v5, a3);
}

void TSCEFormulaCreationMagic::ATAN2(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(12, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::ATANH(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(13, &v5, a3);
}

void TSCEFormulaCreationMagic::AVEDEV(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(14, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::AVERAGE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(15, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::AVERAGE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(15, &v5, a3);
}

void TSCEFormulaCreationMagic::AVERAGE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(15, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::AVERAGEA(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(16, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::AVERAGEIF(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(234, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::AVERAGEIF(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(234, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::AVERAGEIFS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, uint64_t *a5@<X8>)
{
  v10 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0);
  v13 = v10;
  v8 = MEMORY[0x223DA1C10](*a2.var0);
  v12 = v8;
  v9 = MEMORY[0x223DA1C10](*a3.var0);
  v11 = v9;
  TSCEFormulaCreationMagic::function_3arg(232, &v13, &v12, &v11, a5);
}

void TSCEFormulaCreationMagic::AVERAGEIFS(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(232, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::BASETONUM(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(252, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::BESSELJ(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(237, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::BESSELY(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(238, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::BETADIST(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(258, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::BETAINV(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, uint64_t *a7@<X8>)
{
  v16 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0);
  v21 = v16;
  v12 = MEMORY[0x223DA1C10](*a2.var0);
  v20 = v12;
  v13 = MEMORY[0x223DA1C10](*a3.var0);
  v19 = v13;
  v14 = MEMORY[0x223DA1C10](*a4.var0);
  v18 = v14;
  v15 = MEMORY[0x223DA1C10](*a5.var0);
  v17 = v15;
  TSCEFormulaCreationMagic::function_5arg(259, &v21, &v20, &v19, &v18, &v17, a7);
}

void TSCEFormulaCreationMagic::BIN2DEC(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(268, &v5, a3);
}

void TSCEFormulaCreationMagic::BIN2HEX(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(267, &v5, a3);
}

void TSCEFormulaCreationMagic::BIN2OCT(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(269, &v5, a3);
}

void TSCEFormulaCreationMagic::BINOMDIST(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(242, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::BITAND(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(330, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::BITOR(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(331, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::BITXOR(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(332, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::BONDDURATION(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(194, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::BONDMDURATION(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, uint64_t *a8@<X8>)
{
  v19 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0);
  v25 = v19;
  v14 = MEMORY[0x223DA1C10](*a2.var0);
  v24 = v14;
  v15 = MEMORY[0x223DA1C10](*a3.var0);
  v23 = v15;
  v16 = MEMORY[0x223DA1C10](*a4.var0);
  v22 = v16;
  v17 = MEMORY[0x223DA1C10](*a5.var0);
  v21 = v17;
  v18 = MEMORY[0x223DA1C10](*a6.var0);
  v20 = v18;
  TSCEFormulaCreationMagic::function_6arg(195, &v25, &v24, &v23, &v22, &v21, &v20, a8);
}

void TSCEFormulaCreationMagic::CHIDIST(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(246, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::CHIINV(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0);
  v9 = v7;
  v6 = MEMORY[0x223DA1C10](*a2.var0);
  v8 = v6;
  TSCEFormulaCreationMagic::function_2arg(256, &v9, &v8, a4);
}

void TSCEFormulaCreationMagic::CHITEST(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(247, &v5, a3);
}

void TSCEFormulaCreationMagic::CHOOSE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0);
  v17 = v13;
  v10 = MEMORY[0x223DA1C10](*a2.var0);
  v16 = v10;
  v11 = MEMORY[0x223DA1C10](*a3.var0);
  v15 = v11;
  v12 = MEMORY[0x223DA1C10](*a4.var0);
  v14 = v12;
  TSCEFormulaCreationMagic::function_4arg(19, &v17, &v16, &v15, &v14, a6);
}

void TSCEFormulaCreationMagic::CHOOSE(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, TSCEFormulaCreator a3@<0:X2>, TSCEFormulaCreator a4@<0:X3>, TSCEFormulaCreator a5@<0:X4>, TSCEFormulaCreator a6@<0:X5>, TSCEFormulaCreator a7@<0:X6>, TSCEFormulaCreator a8@<0:X7>, uint64_t *a9@<X8>)
{
  v22 = MEMORY[0x223DA1C10](*this, a2.var0, a3.var0, a4.var0, a5.var0, a6.var0, a7.var0, a8.var0);
  v29 = v22;
  v16 = MEMORY[0x223DA1C10](*a2.var0);
  v28 = v16;
  v17 = MEMORY[0x223DA1C10](*a3.var0);
  v27 = v17;
  v18 = MEMORY[0x223DA1C10](*a4.var0);
  v26 = v18;
  v19 = MEMORY[0x223DA1C10](*a5.var0);
  v25 = v19;
  v20 = MEMORY[0x223DA1C10](*a6.var0);
  v24 = v20;
  v21 = MEMORY[0x223DA1C10](*a7.var0);
  v23 = v21;
  TSCEFormulaCreationMagic::function_7arg(19, &v29, &v28, &v27, &v26, &v25, &v24, &v23, a9);
}

void TSCEFormulaCreationMagic::CLEAN(TSCEFormulaCreationMagic *this@<X0>, TSCEFormulaCreator a2@<0:X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x223DA1C10](*this, a2.var0);
  v5 = v4;
  TSCEFormulaCreationMagic::function_1arg(20, &v5, a3);
}

void *TSCEFormulaCreationMagic::COLUMN@<X0>(void *a1@<X8>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_221184BB4;
  v6[3] = &unk_278460290;
  v7 = 22;
  result = objc_msgSend_copy(v6, a2, a3, a4);
  *a1 = result;
  return result;
}