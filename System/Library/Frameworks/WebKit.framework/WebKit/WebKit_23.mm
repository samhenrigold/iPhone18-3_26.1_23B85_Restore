void sub_19D6ECBF0(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, _DWORD *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, WTF::StringImpl *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, WTF::StringImpl *a52, char a53, WTF::StringImpl *a54, char a55, WTF *a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  if ((v67 & v68) == 1 && a39)
  {
    if (a39[4] == 1)
    {
      (*(*a39 + 8))();
    }

    else
    {
      --a39[4];
    }
  }

  if (a53 == 1 && a52 && atomic_fetch_add_explicit(a52, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a52, a2);
  }

  if (a55 == 1 && a54 && atomic_fetch_add_explicit(a54, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a54, a2);
  }

  if (a57 == 1 && a56)
  {
    WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(a56, a2);
  }

  if (a62 == 1)
  {
    v70 = *v66;
    *v66 = 0;
    if (v70)
    {
      if (atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v70, a2);
      }
    }
  }

  if (a64 == 1)
  {
    v71 = v66[2];
    v66[2] = 0;
    if (v71)
    {
      if (atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v71, a2);
      }
    }
  }

  if (a65 == 1)
  {
    v72 = v66[4];
    v66[4] = 0;
    if (v72)
    {
      if (atomic_fetch_add_explicit(v72, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v72, a2);
      }
    }
  }

  if (a66 == 1)
  {
    v73 = v66[6];
    v66[6] = 0;
    if (v73)
    {
      if (atomic_fetch_add_explicit(v73, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v73, a2);
      }
    }
  }

  if (LOBYTE(STACK[0x228]) == 1)
  {
    v74 = v66[12];
    v66[12] = 0;
    if (v74)
    {
      if (atomic_fetch_add_explicit(v74, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v74, a2);
      }
    }
  }

  _Unwind_Resume(a1);
}

void IPC::Decoder::decode<WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WebCore::ShareableBitmap>,WTF::DefaultRefDerefTraits<WebCore::ShareableBitmap>>>(unsigned __int8 **a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::ShareableBitmap,WTF::RawPtrTraits<WebCore::ShareableBitmap>,WTF::DefaultRefDerefTraits<WebCore::ShareableBitmap>>,void>::decode<IPC::Decoder,WebCore::ShareableBitmap>(a1, a2);
  if ((a2[8] & 1) == 0)
  {
    v4 = *a1;
    v5 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v6 = a1[3];
    if (v6)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      (*(*v6 + 16))(v6, v4);
    }
  }
}

void sub_19D6ECFC8(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 8) == 1)
  {
    v4 = *v2;
    *v2 = 0;
    if (v4)
    {
      WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF *IPC::Decoder::decode<WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>>@<X0>(WTF *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<WTF::RefPtr<WebCore::TextIndicator,WTF::RawPtrTraits<WebCore::TextIndicator>,WTF::DefaultRefDerefTraits<WebCore::TextIndicator>>,void>::decode<IPC::Decoder,WebCore::TextIndicator>(a1, a2);
  if ((a2[8] & 1) == 0)
  {
    v5 = *a1;
    v6 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      return (*(*result + 16))(result, v5);
    }
  }

  return result;
}

void sub_19D6ED060(_Unwind_Exception *exception_object)
{
  if (*(v1 + 8) == 1)
  {
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
      WTF::RefCounted<WebCore::TextIndicator>::deref(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::InteractionInformationRequest,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 4));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 8));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 9));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 10));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 11));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 12));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 13));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 14));
}

unint64_t IPC::ArgumentCoder<WebKit::InteractionInformationRequest,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<WebCore::IntPoint>(a1);
  v10 = v9;
  v11 = *(a1 + 1);
  v12 = *(a1 + 2);
  v13 = *a1;
  if (v11 <= &v12[-*a1])
  {
    goto LABEL_62;
  }

  v14 = v12 + 1;
  *(a1 + 2) = v12 + 1;
  if (!v12)
  {
    v72 = result;
    v73 = v10;
    goto LABEL_65;
  }

  v15 = *v12;
  if (v15 < 2)
  {
    v16 = 1;
    goto LABEL_5;
  }

  v71 = *v12;
  v72 = result;
  v73 = v10;
  while (1)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v34 = *(a1 + 3);
    if (!v34 || !v11)
    {
      v70 = 0;
      v35 = 0;
      v13 = 0;
LABEL_71:
      *a1 = 0;
      *(a1 + 1) = 0;
      v36 = *(a1 + 3);
      if (v36 && v35)
      {
        (*(*v36 + 16))(v36, v13, v35, v5, v6, v7, v8);
        v68 = 0;
        v13 = *a1;
        v11 = *(a1 + 1);
      }

      else
      {
        v11 = 0;
        v13 = 0;
        v68 = 0;
      }

      goto LABEL_74;
    }

    (*(*v34 + 16))(v34, v13, v11, v5, v6, v7, v8);
    v16 = 0;
    v13 = *a1;
    v11 = *(a1 + 1);
    v14 = *(a1 + 2);
    result = v72;
    v10 = v73;
    v15 = v71;
LABEL_5:
    if (v15)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    if (v11 <= &v14[-v13])
    {
      LOBYTE(v70) = v16;
      BYTE4(v70) = v17;
      v72 = result;
      v73 = v10;
      v35 = 0;
      v52 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v52 && v11)
      {
        (*(*v52 + 16))(v52);
        v13 = *a1;
        v35 = *(a1 + 1);
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_71;
    }

    v18 = v14 + 1;
    *(a1 + 2) = v14 + 1;
    if (!v14)
    {
      LOBYTE(v70) = v16;
      BYTE4(v70) = v17;
      v72 = result;
      v73 = v10;
      v35 = v11;
      goto LABEL_71;
    }

    v19 = *v14;
    if (v19 < 2)
    {
      v20 = 1;
      goto LABEL_12;
    }

    v68 = *v14;
    LOBYTE(v70) = v16;
    BYTE4(v70) = v17;
    v72 = result;
    v73 = v10;
LABEL_74:
    *a1 = 0;
    *(a1 + 1) = 0;
    v37 = *(a1 + 3);
    if (!v37 || !v11)
    {
      v69 = 0;
      v67 = 0;
      v38 = 0;
      v13 = 0;
LABEL_76:
      *a1 = 0;
      *(a1 + 1) = 0;
      v39 = *(a1 + 3);
      if (v39 && v38)
      {
        (*(*v39 + 16))(v39, v13, v38, v5, v6, v7, v8);
        v66 = 0;
        v13 = *a1;
        v11 = *(a1 + 1);
      }

      else
      {
        v11 = 0;
        v13 = 0;
        v66 = 0;
      }

      goto LABEL_79;
    }

    (*(*v37 + 16))(v37, v13, v11, v5, v6, v7, v8);
    v20 = 0;
    v13 = *a1;
    v11 = *(a1 + 1);
    v18 = *(a1 + 2);
    result = v72;
    v10 = v73;
    v16 = v70;
    v17 = BYTE4(v70);
    v19 = v68;
LABEL_12:
    if (v19)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (v11 <= &v18[-v13])
    {
      v69 = v21;
      v67 = v20;
      LOBYTE(v70) = v16;
      BYTE4(v70) = v17;
      v72 = result;
      v73 = v10;
      v38 = 0;
      v53 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v53 && v11)
      {
        (*(*v53 + 16))(v53);
        v13 = *a1;
        v38 = *(a1 + 1);
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_76;
    }

    v22 = v18 + 1;
    *(a1 + 2) = v18 + 1;
    if (!v18)
    {
      v69 = v21;
      v67 = v20;
      LOBYTE(v70) = v16;
      BYTE4(v70) = v17;
      v72 = result;
      v73 = v10;
      v38 = v11;
      goto LABEL_76;
    }

    v23 = *v18;
    if (v23 < 2)
    {
      v24 = 1;
      goto LABEL_19;
    }

    v66 = *v18;
    v69 = v21;
    v67 = v20;
    LOBYTE(v70) = v16;
    BYTE4(v70) = v17;
    v72 = result;
    v73 = v10;
LABEL_79:
    *a1 = 0;
    *(a1 + 1) = 0;
    v40 = *(a1 + 3);
    if (!v40 || !v11)
    {
      v65 = 0;
      v41 = 0;
      v13 = 0;
LABEL_81:
      *a1 = 0;
      *(a1 + 1) = 0;
      v42 = *(a1 + 3);
      if (v42 && v41)
      {
        (*(*v42 + 16))(v42, v13, v41, v5, v6, v7, v8);
        v64 = 0;
        v13 = *a1;
        v11 = *(a1 + 1);
      }

      else
      {
        v11 = 0;
        v13 = 0;
        v64 = 0;
      }

      goto LABEL_83;
    }

    (*(*v40 + 16))(v40, v13, v11, v5, v6, v7, v8);
    v24 = 0;
    v13 = *a1;
    v11 = *(a1 + 1);
    v22 = *(a1 + 2);
    result = v72;
    v10 = v73;
    v16 = v70;
    v17 = BYTE4(v70);
    v23 = v66;
    v20 = v67;
    v21 = v69;
LABEL_19:
    if (v23)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    if (v11 <= &v22[-v13])
    {
      LOBYTE(v65) = v24;
      BYTE4(v65) = v25;
      v69 = v21;
      v67 = v20;
      LOBYTE(v70) = v16;
      BYTE4(v70) = v17;
      v72 = result;
      v73 = v10;
      v41 = 0;
      v54 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v54 && v11)
      {
        (*(*v54 + 16))(v54);
        v13 = *a1;
        v41 = *(a1 + 1);
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_81;
    }

    v26 = v22 + 1;
    *(a1 + 2) = v22 + 1;
    if (!v22)
    {
      LOBYTE(v65) = v24;
      BYTE4(v65) = v25;
      v69 = v21;
      v67 = v20;
      LOBYTE(v70) = v16;
      BYTE4(v70) = v17;
      v72 = result;
      v73 = v10;
      v41 = v11;
      goto LABEL_81;
    }

    v27 = *v22;
    if (v27 < 2)
    {
      v28 = 1;
      goto LABEL_26;
    }

    v64 = *v22;
    LOBYTE(v65) = v24;
    BYTE4(v65) = v25;
    v69 = v21;
    v67 = v20;
    LOBYTE(v70) = v16;
    BYTE4(v70) = v17;
    v72 = result;
    v73 = v10;
LABEL_83:
    *a1 = 0;
    *(a1 + 1) = 0;
    v43 = *(a1 + 3);
    if (!v43 || !v11)
    {
      v63 = 0;
      v44 = 0;
      v13 = 0;
LABEL_85:
      *a1 = 0;
      *(a1 + 1) = 0;
      v45 = *(a1 + 3);
      if (v45 && v44)
      {
        (*(*v45 + 16))(v45, v13, v44, v5, v6, v7, v8);
        v62 = 0;
        v13 = *a1;
        v11 = *(a1 + 1);
      }

      else
      {
        v11 = 0;
        v13 = 0;
        v62 = 0;
      }

      goto LABEL_87;
    }

    (*(*v43 + 16))(v43, v13, v11, v5, v6, v7, v8);
    v28 = 0;
    v13 = *a1;
    v11 = *(a1 + 1);
    v26 = *(a1 + 2);
    result = v72;
    v10 = v73;
    v16 = v70;
    v17 = BYTE4(v70);
    v25 = BYTE4(v65);
    v20 = v67;
    v21 = v69;
    v27 = v64;
    v24 = v65;
LABEL_26:
    if (v27)
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v5 = &v26[-v13];
    if (v11 <= &v26[-v13])
    {
      LOBYTE(v63) = v28;
      BYTE4(v63) = v29;
      LOBYTE(v65) = v24;
      BYTE4(v65) = v25;
      v69 = v21;
      v67 = v20;
      LOBYTE(v70) = v16;
      BYTE4(v70) = v17;
      v72 = result;
      v73 = v10;
      v44 = 0;
      v55 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v55 && v11)
      {
        (*(*v55 + 16))(v55);
        v13 = *a1;
        v44 = *(a1 + 1);
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_85;
    }

    v6 = (v26 + 1);
    *(a1 + 2) = v26 + 1;
    if (!v26)
    {
      LOBYTE(v63) = v28;
      BYTE4(v63) = v29;
      LOBYTE(v65) = v24;
      BYTE4(v65) = v25;
      v69 = v21;
      v67 = v20;
      LOBYTE(v70) = v16;
      BYTE4(v70) = v17;
      v72 = result;
      v73 = v10;
      v44 = v11;
      goto LABEL_85;
    }

    v5 = *v26;
    if (v5 < 2)
    {
      v30 = 1;
      goto LABEL_33;
    }

    v62 = *v26;
    LOBYTE(v63) = v28;
    BYTE4(v63) = v29;
    LOBYTE(v65) = v24;
    BYTE4(v65) = v25;
    v69 = v21;
    v67 = v20;
    LOBYTE(v70) = v16;
    BYTE4(v70) = v17;
    v72 = result;
    v73 = v10;
LABEL_87:
    *a1 = 0;
    *(a1 + 1) = 0;
    v46 = *(a1 + 3);
    if (!v46 || !v11)
    {
      v61 = 0;
      v47 = 0;
      v13 = 0;
LABEL_89:
      *a1 = 0;
      *(a1 + 1) = 0;
      v48 = *(a1 + 3);
      if (v48 && v47)
      {
        (*(*v48 + 16))(v48, v13, v47, v5, v6, v7, v8);
        v60 = 0;
        v13 = *a1;
        v11 = *(a1 + 1);
      }

      else
      {
        v11 = 0;
        v13 = 0;
        v60 = 0;
      }

      goto LABEL_91;
    }

    (*(*v46 + 16))(v46, v13, v11, v5, v6, v7, v8);
    v30 = 0;
    v13 = *a1;
    v11 = *(a1 + 1);
    v6 = *(a1 + 2);
    result = v72;
    v10 = v73;
    v16 = v70;
    v17 = BYTE4(v70);
    v25 = BYTE4(v65);
    v20 = v67;
    v21 = v69;
    v29 = BYTE4(v63);
    v24 = v65;
    LODWORD(v5) = v62;
    v28 = v63;
LABEL_33:
    if (v5)
    {
      v5 = v30;
    }

    else
    {
      v5 = 0;
    }

    v7 = v6 - v13;
    if (v11 <= v6 - v13)
    {
      LOBYTE(v61) = v30;
      HIDWORD(v61) = v5;
      LOBYTE(v63) = v28;
      BYTE4(v63) = v29;
      LOBYTE(v65) = v24;
      BYTE4(v65) = v25;
      v69 = v21;
      v67 = v20;
      LOBYTE(v70) = v16;
      BYTE4(v70) = v17;
      v72 = result;
      v73 = v10;
      v47 = 0;
      v56 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v56 && v11)
      {
        (*(*v56 + 16))(v56);
        v13 = *a1;
        v47 = *(a1 + 1);
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_89;
    }

    v8 = (v6 + 1);
    *(a1 + 2) = v6 + 1;
    if (!v6)
    {
      LOBYTE(v61) = v30;
      HIDWORD(v61) = v5;
      LOBYTE(v63) = v28;
      BYTE4(v63) = v29;
      LOBYTE(v65) = v24;
      BYTE4(v65) = v25;
      v69 = v21;
      v67 = v20;
      LOBYTE(v70) = v16;
      BYTE4(v70) = v17;
      v72 = result;
      v73 = v10;
      v47 = v11;
      goto LABEL_89;
    }

    v7 = *v6;
    if (v7 < 2)
    {
      v6 = 1;
      goto LABEL_40;
    }

    v60 = *v6;
    LOBYTE(v61) = v30;
    HIDWORD(v61) = v5;
    LOBYTE(v63) = v28;
    BYTE4(v63) = v29;
    LOBYTE(v65) = v24;
    BYTE4(v65) = v25;
    v69 = v21;
    v67 = v20;
    LOBYTE(v70) = v16;
    BYTE4(v70) = v17;
    v72 = result;
    v73 = v10;
LABEL_91:
    *a1 = 0;
    *(a1 + 1) = 0;
    v49 = *(a1 + 3);
    if (!v49 || !v11)
    {
      v59 = 0;
      v50 = 0;
      v13 = 0;
LABEL_93:
      *a1 = 0;
      *(a1 + 1) = 0;
      v51 = *(a1 + 3);
      if (v51 && v50)
      {
        (*(*v51 + 16))(v51, v13, v50, v5, v6, v7, v8);
        v58 = 0;
        v13 = *a1;
        v11 = *(a1 + 1);
      }

      else
      {
        v11 = 0;
        v13 = 0;
        v58 = 0;
      }

      goto LABEL_95;
    }

    (*(*v49 + 16))(v49, v13, v11, v5, v6, v7, v8);
    v6 = 0;
    v13 = *a1;
    v11 = *(a1 + 1);
    v8 = *(a1 + 2);
    result = v72;
    v10 = v73;
    v16 = v70;
    v17 = BYTE4(v70);
    v25 = BYTE4(v65);
    v20 = v67;
    v21 = v69;
    v29 = BYTE4(v63);
    v24 = v65;
    v5 = HIDWORD(v61);
    v28 = v63;
    LODWORD(v7) = v60;
    LOBYTE(v30) = v61;
LABEL_40:
    if (v7)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (v11 <= &v8[-v13])
    {
      v59 = __PAIR64__(v7, v6);
      LOBYTE(v61) = v30;
      HIDWORD(v61) = v5;
      LOBYTE(v63) = v28;
      BYTE4(v63) = v29;
      LOBYTE(v65) = v24;
      BYTE4(v65) = v25;
      v69 = v21;
      v67 = v20;
      LOBYTE(v70) = v16;
      BYTE4(v70) = v17;
      v72 = result;
      v73 = v10;
      v50 = 0;
      v57 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v57 && v11)
      {
        (*(*v57 + 16))(v57);
        v13 = *a1;
        v50 = *(a1 + 1);
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_93;
    }

    *(a1 + 2) = v8 + 1;
    if (!v8)
    {
      v59 = __PAIR64__(v7, v6);
      LOBYTE(v61) = v30;
      HIDWORD(v61) = v5;
      LOBYTE(v63) = v28;
      BYTE4(v63) = v29;
      LOBYTE(v65) = v24;
      BYTE4(v65) = v25;
      v69 = v21;
      v67 = v20;
      LOBYTE(v70) = v16;
      BYTE4(v70) = v17;
      v72 = result;
      v73 = v10;
      v50 = v11;
      goto LABEL_93;
    }

    v8 = *v8;
    if (v8 < 2)
    {
      v11 = 1;
      goto LABEL_47;
    }

    v58 = v8;
    v59 = __PAIR64__(v7, v6);
    LOBYTE(v61) = v30;
    HIDWORD(v61) = v5;
    LOBYTE(v63) = v28;
    BYTE4(v63) = v29;
    LOBYTE(v65) = v24;
    BYTE4(v65) = v25;
    v69 = v21;
    v67 = v20;
    LOBYTE(v70) = v16;
    BYTE4(v70) = v17;
    v72 = result;
    v73 = v10;
LABEL_95:
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (!result || !v11)
    {
      break;
    }

    (*(*result + 16))(result, v13, v11, v5, v6, v7, v8);
    v6 = v59;
    v7 = HIDWORD(v59);
    LOBYTE(v30) = v61;
    v5 = HIDWORD(v61);
    v28 = v63;
    v29 = BYTE4(v63);
    v24 = v65;
    v25 = BYTE4(v65);
    v21 = v69;
    v16 = v70;
    v20 = v67;
    v17 = BYTE4(v70);
    result = v72;
    v10 = v73;
    v11 = 0;
    v13 = *a1;
    LODWORD(v8) = v58;
LABEL_47:
    v8 = v8 ? v11 : 0;
    if (!v13)
    {
      break;
    }

    if (v10 & 1) != 0 && (v16 & 1) != 0 && (v20 & 1) != 0 && (v24 & 1) != 0 && (v28 & 1) != 0 && (v30 & 1) != 0 && (v6 & 1) != 0 && (v11)
    {
      *a2 = result;
      *(a2 + 8) = v17;
      *(a2 + 9) = v21;
      *(a2 + 10) = v25;
      *(a2 + 11) = v29;
      *(a2 + 12) = v5;
      *(a2 + 13) = v7;
      v31 = 1;
      *(a2 + 14) = v8;
      goto LABEL_60;
    }

    __break(1u);
LABEL_62:
    v72 = result;
    v73 = v10;
    *a1 = 0;
    *(a1 + 1) = 0;
    v32 = *(a1 + 3);
    if (!v32)
    {
      v11 = 0;
LABEL_64:
      v13 = 0;
      goto LABEL_65;
    }

    if (!v11)
    {
      goto LABEL_64;
    }

    (*(*v32 + 16))(v32);
    v13 = *a1;
    v11 = *(a1 + 1);
LABEL_65:
    *a1 = 0;
    *(a1 + 1) = 0;
    v33 = *(a1 + 3);
    if (!v33)
    {
      v11 = 0;
      goto LABEL_67;
    }

    if (v11)
    {
      (*(*v33 + 16))(v33, v13, v11, v5, v6, v7, v8);
      v71 = 0;
      v13 = *a1;
      v11 = *(a1 + 1);
    }

    else
    {
LABEL_67:
      v13 = 0;
      v71 = 0;
    }
  }

  v31 = 0;
  *a2 = 0;
LABEL_60:
  *(a2 + 16) = v31;
  return result;
}

IPC::Decoder *IPC::ArgumentCoder<WebKit::DragInitiationResult,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<mpark::variant<BOOL,WebKit::DragInitiationResult::RemoteFrameData>,void>::decode<IPC::Decoder>(a1, v10);
  if ((v11 & 1) == 0)
  {
    v7 = *a1;
    v8 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      result = (*(*result + 16))(result, v7);
    }
  }

  v5 = *a1;
  if (!*a1)
  {
    *a2 = 0;
    goto LABEL_5;
  }

  if (v11)
  {
    v6 = v10[1];
    *a2 = v10[0];
    *(a2 + 16) = v6;
    LOBYTE(v5) = 1;
LABEL_5:
    *(a2 + 32) = v5;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::DragInitiationResult::RemoteFrameData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  v4 = *(a2 + 20);

  return IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebKit::WebAutocorrectionContext,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 1);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 3);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, a2[4]);
  v4 = a2[5];

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::WebAutocorrectionContext,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v21);
  IPC::Decoder::decode<WTF::String>(a1, &v19);
  IPC::Decoder::decode<WTF::String>(a1, &v17);
  IPC::Decoder::decode<WTF::String>(a1, &v15);
  result = IPC::ArgumentCoder<WebKit::EditingRange,void>::decode(a1, &v13);
  v6 = v14;
  if ((v14 & 1) == 0)
  {
    goto LABEL_23;
  }

  while (*a1)
  {
    if (v22)
    {
      v7 = v21;
      v21 = 0;
      if (v20)
      {
        v8 = v19;
        v19 = 0;
        if (v18)
        {
          v9 = v17;
          v17 = 0;
          if (v16 & 1) != 0 && (v6)
          {
            v10 = v15;
            *(a2 + 32) = v13;
            *a2 = v7;
            *(a2 + 8) = v8;
            *(a2 + 16) = v9;
            *(a2 + 24) = v10;
            *(a2 + 48) = 1;
            goto LABEL_9;
          }
        }
      }
    }

    __break(1u);
LABEL_23:
    v5 = *a1;
    v11 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v11)
    {
      v12 = v6;
      result = (*(*result + 16))(result, v5);
      v6 = v12;
    }
  }

  *a2 = 0;
  *(a2 + 48) = 0;
  if (v16)
  {
    result = v15;
    v15 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

LABEL_9:
  if (v18 == 1)
  {
    result = v17;
    v17 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  if (v20 == 1)
  {
    result = v19;
    v19 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  if (v22 == 1)
  {
    result = v21;
    v21 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  return result;
}

void sub_19D6EDF30(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, char a14, WTF::StringImpl *a15, char a16)
{
  if ((a14 & 1) != 0 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  if (a16 == 1 && a15 && atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a15, a2);
  }

  if (*(v16 - 40) == 1)
  {
    v18 = *(v16 - 48);
    *(v16 - 48) = 0;
    if (v18)
    {
      if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, a2);
      }
    }
  }

  if (*(v16 - 24) == 1)
  {
    v19 = *(v16 - 32);
    *(v16 - 32) = 0;
    if (v19)
    {
      if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::WebAutocorrectionData,void>::encode(IPC::Encoder *a1, id *a2)
{
  IPC::VectorArgumentCoder<false,WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2);
  WebKit::WebAutocorrectionData::fontName(&v10, a2);
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(a1, &v10);
  if (v11 == 1)
  {
    v5 = v10;
    v10 = 0;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v4);
      }
    }
  }

  [a2[2] pointSize];
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, v6);
  v7 = [a2[2] fontDescriptor];
  [objc_msgSend(v7 objectForKey:{*MEMORY[0x1E69DB990]), "doubleValue"}];
  return IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, v8);
}

void sub_19D6EE0A8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a10 == 1 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::WebAutocorrectionData,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v13);
  IPC::Decoder::decode<std::optional<WTF::String>>(a1, &v10);
  v4 = IPC::Decoder::decode<unsigned long long>(a1);
  v6 = v5;
  result = IPC::Decoder::decode<unsigned long long>(a1);
  if (!*a1)
  {
    goto LABEL_17;
  }

  if ((v15 & 1) == 0 || (v12 & 1) == 0 || (v6 & 1) == 0 || (v8 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    *a2 = 0;
    *(a2 + 24) = 0;
    goto LABEL_7;
  }

  result = WebKit::WebAutocorrectionData::WebAutocorrectionData(v9, &v13, &v10, *&v4, *&result);
  *a2 = v9[0];
  *(a2 + 8) = v9[1];
  *(a2 + 16) = v9[2];
  *(a2 + 24) = 1;
LABEL_7:
  if (v12 == 1 && v11 == 1)
  {
    result = v10;
    v10 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v8);
      }
    }
  }

  if (v15 == 1)
  {
    result = v13;
    if (v13)
    {
      v13 = 0;
      v14 = 0;
      return WTF::fastFree(result, v8);
    }
  }

  return result;
}

void sub_19D6EE200(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, char a14, int a15, __int16 a16, char a17, char a18, WTF *a19, int a20, int a21, char a22)
{
  if (a16 == 1 && a14 == 1 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  if (a22 == 1)
  {
    if (a19)
    {
      WTF::fastFree(a19, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF *IPC::Decoder::decode<WTF::Vector<WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::VectorArgumentCoder<false,WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2);
  if ((a2[16] & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

void sub_19D6EE2B0(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 16) == 1)
  {
    v4 = *v2;
    if (*v2)
    {
      *v2 = 0;
      *(v2 + 8) = 0;
      WTF::fastFree(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::LayerTreeContext,void>::decode(uint64_t *a1)
{
  v1 = a1[1];
  v2 = (a1[2] + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = *a1;
  v4 = v2 - *a1;
  v5 = v1 >= v4;
  v6 = v1 - v4;
  if (!v5 || v6 <= 7)
  {
    *a1 = 0;
    a1[1] = 0;
    v11 = a1;
    v9 = a1[3];
    if (v9)
    {
      goto LABEL_19;
    }

    v1 = 0;
LABEL_12:
    v3 = 0;
LABEL_13:
    while (1)
    {
      *v11 = 0;
      v11[1] = 0;
      v10 = v11[3];
      if (!v10)
      {
        return 0;
      }

      if (!v1)
      {
        return 0;
      }

      v9 = (*(*v10 + 16))(v10, v3);
      if (!*v11)
      {
        return 0;
      }

      __break(1u);
LABEL_19:
      if (!v1)
      {
        goto LABEL_12;
      }

      (*(*v9 + 16))(v9);
      v3 = *v11;
      v1 = v11[1];
    }
  }

  a1[2] = v2 + 8;
  if (!v2)
  {
    v11 = a1;
    goto LABEL_13;
  }

  if (!v3)
  {
    return 0;
  }

  return *v2;
}

WTF::RefCountedBase *IPC::ArgumentCoder<WebKit::LoadParameters,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2 + 8);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2 + 24);
  WebCore::ResourceRequestBase::httpBody(&v9, (a2 + 40));
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(a1, (a2 + 40));
  v4 = v9;
  v8 = v9;
  v9 = 0;
  IPC::ArgumentCoder<IPC::FormDataReference,void>::encode(a1, &v8);
  if (v4)
  {
    WTF::RefCounted<WebCore::FormData>::deref(v4);
  }

  IPC::ArgumentCoder<WebKit::SandboxExtensionHandle,void>::encode(a1, (a2 + 240));
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,void>::encode<IPC::Encoder,WebCore::SharedBuffer>(a1, (a2 + 248));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 256));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 264));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 272));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 280));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 288));
  IPC::ArgumentCoder<std::optional<WebKit::WebsitePoliciesData>,void>::encode<IPC::Encoder,std::optional<WebKit::WebsitePoliciesData>>(a1, a2 + 296);
  IPC::ArgumentCoder<std::optional<WebKit::FrameInfoData>,void>::encode<IPC::Encoder,std::optional<WebKit::FrameInfoData>>(a1, a2 + 432);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 800));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 801));
  IPC::ArgumentCoder<WebKit::UserData,void>::encode(a1, (a2 + 808));
  LOBYTE(v8) = *(a2 + 816);
  IPC::Encoder::operator<<<BOOL>(a1, &v8);
  LOBYTE(v8) = *(a2 + 817);
  IPC::Encoder::operator<<<BOOL>(a1, &v8);
  LOBYTE(v8) = *(a2 + 818);
  IPC::Encoder::operator<<<BOOL>(a1, &v8);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 824));
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, *(a2 + 832));
  if (*(a2 + 888))
  {
    LOBYTE(v8) = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v8);
    if ((*(a2 + 888) & 1) == 0)
    {
      goto LABEL_14;
    }

    IPC::ArgumentCoder<WebCore::OwnerPermissionsPolicyData,void>::encode(a1, a2 + 840);
  }

  else
  {
    LOBYTE(v8) = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }

  IPC::ArgumentCoder<std::optional<WebKit::NavigatingToAppBoundDomain>,void>::encode<IPC::Encoder,std::optional<WebKit::NavigatingToAppBoundDomain>>(a1, (a2 + 896));
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(a1, a2 + 904);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 920));
  IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(a1, a2 + 928);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 944));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 945));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 946));
  if (*(a2 + 950))
  {
    LOBYTE(v8) = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v8);
    if (*(a2 + 950))
    {
      IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, *(a2 + 948));
      goto LABEL_11;
    }

LABEL_14:
    v6 = std::__throw_bad_optional_access[abi:sn200100]();
    if (v4)
    {
      WTF::RefCounted<WebCore::FormData>::deref(v4);
    }

    v7 = v9;
    v9 = 0;
    if (v7)
    {
      WTF::RefCounted<WebCore::FormData>::deref(v7);
    }

    _Unwind_Resume(v6);
  }

  LOBYTE(v8) = 0;
  IPC::Encoder::operator<<<BOOL>(a1, &v8);
LABEL_11:
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 952));
  result = v9;
  v9 = 0;
  if (result)
  {
    return WTF::RefCounted<WebCore::FormData>::deref(result);
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::LoadParameters,void>::decode@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v112 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebCore::PublicSuffix>(&v80, a1);
  IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(&v77, a1);
  IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, &v74);
  IPC::Decoder::decode<WebCore::ResourceRequest>(a1, v72);
  if (v73 == 1)
  {
    IPC::Decoder::decode<IPC::FormDataReference>(a1, &v82);
    if (v83 == 1)
    {
      v3 = v73;
      if ((v73 & 1) == 0)
      {
        goto LABEL_85;
      }

      v4 = v82;
      v82 = 0;
      v110[0] = v4;
      WebCore::ResourceRequestBase::setHTTPBody();
      v5 = v110[0];
      v110[0] = 0;
      if (v5)
      {
        WTF::RefCounted<WebCore::FormData>::deref(v5);
      }

      if (v83)
      {
        v6 = v82;
        v82 = 0;
        if (v6)
        {
          WTF::RefCounted<WebCore::FormData>::deref(v6);
        }
      }
    }
  }

  IPC::Decoder::decode<WebKit::SandboxExtensionHandle>(a1, &v70);
  IPC::Decoder::decode<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>(a1, &v68);
  IPC::Decoder::decode<WTF::String>(a1, &v66);
  IPC::Decoder::decode<WTF::String>(a1, &v64);
  IPC::Decoder::decode<WTF::String>(a1, &v62);
  IPC::Decoder::decode<WTF::String>(a1, &v60);
  IPC::Decoder::decode<WTF::String>(a1, &v58);
  IPC::Decoder::decode<std::optional<WebKit::WebsitePoliciesData>>(v56, a1);
  IPC::Decoder::decode<std::optional<WebKit::FrameInfoData>>(a1, v110);
  ShouldOpenExternalURLs = IPC::Decoder::decode<WebCore::ShouldOpenExternalURLsPolicy>(a1);
  v7 = IPC::Decoder::decode<WebKit::UnifiedOriginStorageLevel>(a1);
  IPC::Decoder::decode<WebKit::UserData>(&v54, a1, v8);
  v43 = IPC::Decoder::decode<WebCore::LockHistory>(a1);
  v42 = IPC::Decoder::decode<WebCore::LockBackForwardList>(a1);
  v41 = IPC::Decoder::decode<WebKit::AllowsCellularAccess>(a1);
  IPC::Decoder::decode<WTF::String>(a1, &v52);
  v9 = IPC::Decoder::decode<WTF::OptionSet<WebCore::SandboxFlag>>(a1);
  IPC::Decoder::decode<std::optional<WebCore::OwnerPermissionsPolicyData>>(v108, a1);
  v10 = IPC::Decoder::decode<std::optional<WebKit::NavigatingToAppBoundDomain>>(a1);
  IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebKit::NetworkResourceLoadIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(&v49, a1);
  v11 = IPC::Decoder::decode<BOOL>(a1);
  IPC::Decoder::decode<std::optional<double>>(&v46, a1);
  v12 = IPC::Decoder::decode<BOOL>(a1);
  v13 = IPC::Decoder::decode<BOOL>(a1);
  v14 = IPC::Decoder::decode<BOOL>(a1);
  v15 = IPC::Decoder::decode<std::optional<WTF::OptionSet<WebCore::AdvancedPrivacyProtections>>>(a1);
  v16 = IPC::Decoder::decode<unsigned long long>(a1);
  if (!*a1)
  {
    *a2 = 0;
    a2[960] = 0;
    goto LABEL_44;
  }

  v3 = v81;
  if ((v81 & 1) == 0)
  {
    goto LABEL_85;
  }

  v18 = v80;
  v80 = 0;
  v82 = v18;
  v3 = v79;
  if ((v79 & 1) == 0)
  {
    goto LABEL_85;
  }

  v83 = v77;
  v84 = v78;
  v3 = v76;
  if ((v76 & 1) == 0)
  {
    goto LABEL_85;
  }

  v85 = v74;
  v86 = v75;
  v3 = v73;
  if ((v73 & 1) == 0)
  {
    goto LABEL_85;
  }

  v19 = v17;
  v20 = v16;
  WebCore::ResourceRequest::ResourceRequest(v87, v72);
  v3 = v71;
  if ((v71 & 1) == 0)
  {
    goto LABEL_85;
  }

  v21 = v70;
  v70 = 0;
  v87[25] = v21;
  v3 = v69;
  if ((v69 & 1) == 0)
  {
    goto LABEL_85;
  }

  v22 = v68;
  v68 = 0;
  v87[26] = v22;
  v3 = v67;
  if ((v67 & 1) == 0)
  {
    goto LABEL_85;
  }

  v23 = v66;
  v66 = 0;
  v87[27] = v23;
  v3 = v65;
  if ((v65 & 1) == 0)
  {
    goto LABEL_85;
  }

  v24 = v64;
  v64 = 0;
  v87[28] = v24;
  v3 = v63;
  if ((v63 & 1) == 0)
  {
    goto LABEL_85;
  }

  v25 = v62;
  v62 = 0;
  v87[29] = v25;
  v3 = v61;
  if ((v61 & 1) == 0)
  {
    goto LABEL_85;
  }

  v26 = v60;
  v60 = 0;
  v87[30] = v26;
  v3 = v59;
  if ((v59 & 1) == 0)
  {
    goto LABEL_85;
  }

  v27 = v58;
  v58 = 0;
  v87[31] = v27;
  v3 = v57;
  if ((v57 & 1) == 0)
  {
    goto LABEL_85;
  }

  std::__optional_move_base<WebKit::WebsitePoliciesData,false>::__optional_move_base[abi:sn200100](v88, v56);
  v3 = v111;
  if ((v111 & 1) == 0)
  {
    goto LABEL_85;
  }

  std::__optional_move_base<WebKit::FrameInfoData,false>::__optional_move_base[abi:sn200100](v89, v110);
  v3 = ShouldOpenExternalURLs;
  if (ShouldOpenExternalURLs <= 0xFFu)
  {
    goto LABEL_85;
  }

  v89[368] = ShouldOpenExternalURLs;
  v3 = v7;
  if (v7 <= 0xFFu)
  {
    goto LABEL_85;
  }

  v89[369] = v7;
  v3 = v55;
  if ((v55 & 1) == 0)
  {
    goto LABEL_85;
  }

  v28 = v54;
  if (v54)
  {
    CFRetain(v54[1]);
  }

  v90 = v28;
  v3 = v43;
  if (v43 <= 0xFFu || (v91 = v43, v3 = v42, (v42 & 0x100) == 0) || (v92 = v42, v3 = v41, v41 <= 0xFFu) || (v93 = v41, v3 = v53, (v53 & 1) == 0) || (v3 = v52, v52 = 0, v94 = v3, (v9 & 0x10000) == 0) || (v95 = v9, v3 = v109, (v109 & 1) == 0) || (std::__optional_move_base<WebCore::OwnerPermissionsPolicyData,false>::__optional_move_base[abi:sn200100](v96, v108), (v10 & 0x10000) == 0) || (v96[28] = v10, v3 = v51, (v51 & 1) == 0) || (v97 = v49, v3 = v50, v98 = v50, (v11 & 0x100) == 0) || (v99 = v11, v3 = v48, (v48 & 1) == 0) || (v100 = v46, v3 = v47, v101 = v47, (v12 & 0x100) == 0) || (v102 = v12, (v13 & 0x100) == 0) || (v103 = v13, (v14 & 0x100) == 0) || (v104 = v14, v3 = WORD2(v15), !WORD2(v15)) || (v105 = v15, v3 = WORD1(v15), v106 = BYTE2(v15), (v19 & 1) == 0))
  {
LABEL_85:
    __break(1u);
LABEL_86:
    CFRelease(*(v3 + 8));
    goto LABEL_48;
  }

  v107 = v20;
  *(WebKit::LoadParameters::LoadParameters(a2, &v82) + 960) = 1;
  WebKit::LoadParameters::~LoadParameters(&v82, v29);
LABEL_44:
  std::optional<std::optional<WebCore::OwnerPermissionsPolicyData>>::~optional(v108, v17);
  if (v53 == 1)
  {
    v31 = v52;
    v52 = 0;
    if (v31)
    {
      if (atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v31, v30);
      }
    }
  }

  if (v55 == 1)
  {
    v3 = v54;
    if (v54)
    {
      goto LABEL_86;
    }
  }

LABEL_48:
  std::optional<std::optional<WebKit::FrameInfoData>>::~optional(v110, v30);
  if (v57 == 1 && v56[120] == 1)
  {
    WebKit::WebsitePoliciesData::~WebsitePoliciesData(v56, v32);
  }

  if (v59 == 1)
  {
    v33 = v58;
    v58 = 0;
    if (v33)
    {
      if (atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v33, v32);
      }
    }
  }

  if (v61 == 1)
  {
    v34 = v60;
    v60 = 0;
    if (v34)
    {
      if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v34, v32);
      }
    }
  }

  if (v63 == 1)
  {
    v35 = v62;
    v62 = 0;
    if (v35)
    {
      if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v35, v32);
      }
    }
  }

  if (v65 == 1)
  {
    v36 = v64;
    v64 = 0;
    if (v36)
    {
      if (atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v36, v32);
      }
    }
  }

  if (v67 == 1)
  {
    v37 = v66;
    v66 = 0;
    if (v37)
    {
      if (atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v37, v32);
      }
    }
  }

  if (v69 == 1)
  {
    v38 = v68;
    v68 = 0;
    if (v38)
    {
      if (atomic_fetch_add(v38 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v38 + 2);
        (*(*v38 + 8))(v38);
      }
    }
  }

  if (v71 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v70);
  }

  result = std::optional<WebCore::ResourceRequest>::~optional(v72);
  if (v81 == 1)
  {
    result = v80;
    v80 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v40);
      }
    }
  }

  return result;
}

void sub_19D6EED70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, WTF::StringImpl *a18, char a19, uint64_t a20, char a21, int a22, __int16 a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, int a39, __int16 a40, WTF::StringImpl *a41, char a42, WTF::StringImpl *a43, char a44, WTF::StringImpl *a45, char a46, WTF::StringImpl *a47, char a48, WTF::StringImpl *a49, char a50, unsigned int *a51, char a52, int a53, WebKit::SandboxExtensionImpl *a54, __int16 a56, int a57, __int16 a58)
{
  std::optional<WebKit::FrameInfoData>::~optional(&STACK[0x420]);
  if (LOBYTE(STACK[0x410]) == 1)
  {
    WebKit::WebsitePoliciesData::~WebsitePoliciesData(&STACK[0x398], v58);
  }

  v59 = STACK[0x390];
  STACK[0x390] = 0;
  if (v59 && atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v59, v58);
  }

  v60 = STACK[0x388];
  STACK[0x388] = 0;
  if (v60 && atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v60, v58);
  }

  v61 = STACK[0x380];
  STACK[0x380] = 0;
  if (v61 && atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v61, v58);
  }

  v62 = STACK[0x378];
  STACK[0x378] = 0;
  if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v62, v58);
  }

  v63 = STACK[0x370];
  STACK[0x370] = 0;
  if (v63 && atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v63, v58);
  }

  v64 = STACK[0x368];
  STACK[0x368] = 0;
  if (v64 && atomic_fetch_add(v64 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v64 + 2);
    (*(*v64 + 8))(v64);
  }

  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&STACK[0x360]);
  WebCore::ResourceRequest::~ResourceRequest(&STACK[0x298]);
  v66 = STACK[0x270];
  STACK[0x270] = 0;
  if (v66 && atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v66, v65);
  }

  std::optional<std::optional<WebCore::OwnerPermissionsPolicyData>>::~optional(&STACK[0x630], v65);
  if (a19 == 1 && a18 && atomic_fetch_add_explicit(a18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a18, v67);
  }

  if (a21 == 1 && a20)
  {
    CFRelease(*(a20 + 8));
  }

  std::optional<std::optional<WebKit::FrameInfoData>>::~optional(&STACK[0x670], v67);
  if (a40 == 1 && a38 == 1)
  {
    WebKit::WebsitePoliciesData::~WebsitePoliciesData(&a23, v68);
  }

  if (a42 == 1)
  {
    v69 = a41;
    a41 = 0;
    if (v69)
    {
      if (atomic_fetch_add_explicit(v69, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v69, v68);
      }
    }
  }

  if (a44 == 1)
  {
    v70 = a43;
    a43 = 0;
    if (v70)
    {
      if (atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v70, v68);
      }
    }
  }

  if (a46 == 1)
  {
    v71 = a45;
    a45 = 0;
    if (v71)
    {
      if (atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v71, v68);
      }
    }
  }

  if (a48 == 1)
  {
    v72 = a47;
    a47 = 0;
    if (v72)
    {
      if (atomic_fetch_add_explicit(v72, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v72, v68);
      }
    }
  }

  if (a50 == 1)
  {
    v73 = a49;
    a49 = 0;
    if (v73)
    {
      if (atomic_fetch_add_explicit(v73, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v73, v68);
      }
    }
  }

  if (a52 == 1)
  {
    v74 = a51;
    a51 = 0;
    if (v74)
    {
      if (atomic_fetch_add(v74 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v74 + 2);
        (*(*v74 + 8))(v74);
      }
    }
  }

  if (a56 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&a54);
  }

  std::optional<WebCore::ResourceRequest>::~optional(&a58);
  if (LOBYTE(STACK[0x268]) == 1)
  {
    v76 = STACK[0x260];
    STACK[0x260] = 0;
    if (v76)
    {
      if (atomic_fetch_add_explicit(v76, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v76, v75);
      }
    }
  }

  _Unwind_Resume(a1);
}

uint64_t IPC::Decoder::decode<WebCore::ShouldOpenExternalURLsPolicy>(IPC::Decoder *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 1) <= &v1[-*a1])
  {
    v5 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v5;
    goto LABEL_7;
  }

  *(a1 + 2) = v1 + 1;
  if (!v1)
  {
LABEL_7:
    v6 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v6;
    goto LABEL_8;
  }

  v2 = *v1;
  if (v2 >= 3)
  {
LABEL_8:
    IPC::Decoder::markInvalid(a1);
    v3 = 0;
    v2 = 0;
    return v2 | (v3 << 8);
  }

  v3 = 1;
  return v2 | (v3 << 8);
}

void IPC::Decoder::decode<WebKit::UserData>(uint64_t a1, IPC::Decoder *a2, __n128 a3)
{
  IPC::ArgumentCoder<WebKit::UserData,void>::decode(a2, a1, a3);
  if ((*(a1 + 8) & 1) == 0)
  {

    IPC::Decoder::markInvalid(a2);
  }
}

uint64_t IPC::Decoder::decode<WebCore::LockHistory>(IPC::Decoder *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 1) <= &v1[-*a1])
  {
    v6 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v6;
    goto LABEL_7;
  }

  *(a1 + 2) = v1 + 1;
  if (!v1)
  {
LABEL_7:
    v7 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v7;
    goto LABEL_8;
  }

  v2 = *v1;
  if (v2 >= 2)
  {
LABEL_8:
    v5 = a1;
    IPC::Decoder::markInvalid(a1);
    IPC::Decoder::markInvalid(v5);
    v3 = 0;
    v2 = 0;
    return v2 | (v3 << 8);
  }

  v3 = 1;
  return v2 | (v3 << 8);
}

uint64_t *IPC::Decoder::decode<std::optional<WebCore::OwnerPermissionsPolicyData>>(uint64_t a1, IPC::Decoder *this)
{
  v67 = *MEMORY[0x1E69E9840];
  v4 = *(this + 2);
  if (*(this + 1) <= &v4[-*this])
  {
    IPC::Decoder::markInvalid(this);
    goto LABEL_113;
  }

  *(this + 2) = v4 + 1;
  if (!v4)
  {
LABEL_113:
    IPC::Decoder::markInvalid(this);
    goto LABEL_114;
  }

  v5 = *v4;
  if (v5 >= 2)
  {
LABEL_114:
    result = IPC::Decoder::markInvalid(this);
    *a1 = 0;
    goto LABEL_115;
  }

  if (!v5)
  {
    LOBYTE(v53) = 0;
    v57 = 0;
    std::__optional_move_base<WebCore::OwnerPermissionsPolicyData,false>::__optional_move_base[abi:sn200100](a1, &v53);
    *(a1 + 56) = 1;
    result = std::optional<WebCore::OwnerPermissionsPolicyData>::~optional(&v53, v47);
    goto LABEL_66;
  }

  IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::decode(this, &v63);
  if ((v66 & 1) == 0)
  {
    IPC::Decoder::markInvalid(this);
  }

  v7 = *(this + 1);
  v8 = ((*(this + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = *this;
  v10 = v8 - *this;
  v11 = v7 >= v10;
  v12 = v7 - v10;
  if (!v11 || v12 <= 3)
  {
    IPC::Decoder::markInvalid(this);
LABEL_108:
    IPC::Decoder::markInvalid(this);
    goto LABEL_72;
  }

  *(this + 2) = v8 + 1;
  if (!v8)
  {
    goto LABEL_108;
  }

  v14 = *v8;
  v49[0] = 0;
  if (!v14)
  {
    v31 = 0;
LABEL_35:
    v58[0] = v31;
    LOBYTE(v58[1]) = 1;
    if (v9)
    {
      WTF::HashTable<WebCore::PermissionsPolicy::Feature,WebCore::PermissionsPolicy::Feature,WTF::IdentityExtractor,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::FastMalloc>::HashTable(v49, v58);
      v32 = v49[0];
      if ((v58[1] & 1) == 0)
      {
LABEL_41:
        v33 = 1;
        goto LABEL_42;
      }

      v31 = v58[0];
    }

    else
    {
      v32 = 0;
    }

    if (v31)
    {
      WTF::fastFree((v31 - 16), v6);
    }

    if (!v9)
    {
      goto LABEL_98;
    }

    goto LABEL_41;
  }

  v15 = 0;
  while (1)
  {
    v16 = IPC::Decoder::decode<WebCore::PermissionsPolicy::Feature>(this);
    v17 = v16;
    if (v16 < 0x100u || (v16 & 0xFE) == 0xFE)
    {
      break;
    }

    v18 = v16;
    if (v16 == 254)
    {
      __break(0xC471u);
      JUMPOUT(0x19D6EF98CLL);
    }

    if (v16 == 255)
    {
      __break(0xC471u);
      JUMPOUT(0x19D6EF96CLL);
    }

    v19 = v49[0];
    if (!v49[0])
    {
      WTF::HashTable<WebCore::GamepadHapticEffectType,WebCore::GamepadHapticEffectType,WTF::IdentityExtractor,WTF::IntHash<WebCore::GamepadHapticEffectType>,WTF::StrongEnumHashTraits<WebCore::GamepadHapticEffectType>,WTF::StrongEnumHashTraits<WebCore::GamepadHapticEffectType>,WTF::FastMalloc>::expand(v49, 0);
      v19 = v49[0];
    }

    v20 = *(v19 - 2);
    v21 = ~(v17 << 15) + v17;
    v22 = (9 * (v21 ^ (v21 >> 10))) ^ ((9 * (v21 ^ (v21 >> 10))) >> 6);
    v23 = v20 & ((v22 + ~(v22 << 11)) ^ ((v22 + ~(v22 << 11)) >> 16));
    v24 = v19 + v23;
    v25 = *(v19 + v23);
    if (v25 != 255)
    {
      v6 = 0;
      v26 = 1;
      while (v25 != v18)
      {
        if (v25 == 254)
        {
          v6 = v24;
        }

        v23 = (v23 + v26) & v20;
        v24 = v19 + v23;
        v25 = *(v19 + v23);
        ++v26;
        if (v25 == 255)
        {
          if (!v6)
          {
            goto LABEL_28;
          }

          *v6 = -1;
          v27 = *(v19 - 4) - 1;
          *(v19 - 4) = v27;
          goto LABEL_29;
        }
      }

      goto LABEL_71;
    }

LABEL_28:
    v27 = *(v19 - 4);
    v6 = v24;
LABEL_29:
    *v6 = v18;
    v28 = *(v19 - 3) + 1;
    *(v19 - 3) = v28;
    v29 = (v28 + v27);
    v30 = *(v19 - 1);
    if (v30 > 0x400)
    {
      if (v30 <= 2 * v29)
      {
LABEL_34:
        WTF::HashTable<WebCore::GamepadHapticEffectType,WebCore::GamepadHapticEffectType,WTF::IdentityExtractor,WTF::IntHash<WebCore::GamepadHapticEffectType>,WTF::StrongEnumHashTraits<WebCore::GamepadHapticEffectType>,WTF::StrongEnumHashTraits<WebCore::GamepadHapticEffectType>,WTF::FastMalloc>::expand(v49, v30);
      }
    }

    else
    {
      v30 *= 3;
      if (v30 <= 4 * v29)
      {
        goto LABEL_34;
      }
    }

    if (++v15 == v14)
    {
      v31 = v49[0];
      v9 = *this;
      goto LABEL_35;
    }
  }

  v19 = v49[0];
  if (!v49[0])
  {
    goto LABEL_72;
  }

LABEL_71:
  WTF::fastFree((v19 - 2), v6);
LABEL_72:
  IPC::Decoder::markInvalid(this);
  v41 = *this;
  if (*this)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    if (v41 != 255)
    {
      *a1 = v53;
      goto LABEL_64;
    }

    goto LABEL_65;
  }

  v32 = 0;
LABEL_98:
  IPC::Decoder::markInvalid(this);
  v33 = 0;
LABEL_42:
  v34 = *(this + 1);
  v35 = ((*(this + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v36 = v35 - *this;
  v11 = v34 >= v36;
  v37 = v34 - v36;
  if (!v11 || v37 <= 3)
  {
    IPC::Decoder::markInvalid(this);
    goto LABEL_109;
  }

  *(this + 2) = v35 + 1;
  if (v35)
  {
    result = 0;
    v40 = *v35;
    v52 = 0;
    if (!v40)
    {
LABEL_49:
      LODWORD(v41) = 1;
      goto LABEL_50;
    }

    while (1)
    {
      v48 = IPC::Decoder::decode<WebCore::PermissionsPolicy::Feature>(this);
      v51 = v48;
      if (v48 <= 0xFFu)
      {
        break;
      }

      IPC::Decoder::decode<WebCore::Allowlist>(v58, this);
      if ((v59 & 1) == 0)
      {
        break;
      }

      if ((~v48 & 0xFE) == 0)
      {
        if (LOBYTE(v58[1]))
        {
          break;
        }

LABEL_103:
        if (v58[0])
        {
          WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v58[0], v6);
        }

        break;
      }

      WTF::HashMap<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::HashTraits<WebCore::Allowlist>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebCore::Allowlist>(v49, &v52, &v51, v58);
      if ((v50 & 1) == 0)
      {
        if ((v59 & (LOBYTE(v58[1]) == 0)) == 0)
        {
          break;
        }

        goto LABEL_103;
      }

      if ((v59 & (LOBYTE(v58[1]) == 0)) != 0 && v58[0])
      {
        WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v58[0], v6);
      }

      if (!--v40)
      {
        result = v52;
        goto LABEL_49;
      }
    }

    if (v52)
    {
      WTF::HashTable<WebCore::PermissionsPolicy::Feature,WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>>,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::HashMap<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::HashTraits<WebCore::Allowlist>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::FastMalloc>::deallocateTable(v52, v6);
    }
  }

  else
  {
LABEL_109:
    IPC::Decoder::markInvalid(this);
  }

  IPC::Decoder::markInvalid(this);
  LODWORD(v41) = 0;
  result = 0;
LABEL_50:
  v42 = *this;
  if (*this)
  {
    if ((v66 & 1) == 0 || (v33 & 1) == 0 || (v41 & 1) == 0)
    {
      goto LABEL_73;
    }

    LOBYTE(v58[0]) = 0;
    v60 = -1;
    if (v65)
    {
      if (v65 == 255)
      {
        v61 = v32;
        v62 = result;
        LOBYTE(v53) = 0;
      }

      else
      {
        *v58 = v63;
        v60 = v65;
        v61 = v32;
        v62 = result;
        v55 = -1;
        v53 = v63;
      }
    }

    else
    {
      v59 = v64;
      v60 = 0;
      v61 = v32;
      v62 = result;
      v55 = -1;
      *v58 = 0u;
      v43 = v63;
      v63 = 0u;
      v53 = v43;
      v54 = v64;
    }

    v55 = v65;
    v61 = 0;
    v62 = 0;
    *&v56 = v32;
    *(&v56 + 1) = result;
    v57 = 1;
    result = mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v58);
  }

  else
  {
    LOBYTE(v53) = 0;
    v57 = 0;
    if (!result)
    {
      LOBYTE(v41) = 0;
    }

    if (v41)
    {
      result = WTF::HashTable<WebCore::PermissionsPolicy::Feature,WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>>,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::HashMap<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::HashTraits<WebCore::Allowlist>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::FastMalloc>::deallocateTable(result, v6);
    }

    if (v33 && v32)
    {
      result = WTF::fastFree((v32 - 2), v6);
    }
  }

  if (v66 == 1)
  {
    result = mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v63);
  }

  if (!v42)
  {
    result = IPC::Decoder::markInvalid(this);
  }

  v44 = v57;
  *a1 = 0;
  if (v44 != 1)
  {
LABEL_115:
    *(a1 + 56) = 0;
    goto LABEL_66;
  }

  *(a1 + 24) = -1;
  LODWORD(v41) = v55;
  if (v55)
  {
    goto LABEL_74;
  }

  v45 = v53;
  v53 = 0uLL;
  *a1 = v45;
  *(a1 + 16) = v54;
LABEL_64:
  *(a1 + 24) = v41;
LABEL_65:
  v46 = v56;
  v56 = 0uLL;
  *(a1 + 32) = v46;
  *(a1 + 48) = 1;
  *(a1 + 56) = 1;
  result = mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v53);
LABEL_66:
  if ((*(a1 + 56) & 1) == 0)
  {
    return IPC::Decoder::markInvalid(this);
  }

  return result;
}

void sub_19D6EF9B4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, mpark *a23, char a24, int a25, __int16 a26, char a27, char a28)
{
  if (v28)
  {
    v32 = v29;
  }

  else
  {
    v32 = 0;
  }

  if (v32)
  {
    WTF::fastFree((v28 - 16), a2);
  }

  if (*(v30 - 80) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v30 - 112);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<std::optional<WTF::OptionSet<WebCore::AdvancedPrivacyProtections>>>(IPC::Decoder *this)
{
  v2 = *(this + 2);
  if (*(this + 1) <= &v2[-*this])
  {
    IPC::Decoder::markInvalid(this);
    goto LABEL_13;
  }

  *(this + 2) = v2 + 1;
  if (!v2)
  {
LABEL_13:
    IPC::Decoder::markInvalid(this);
    goto LABEL_14;
  }

  v3 = *v2;
  if (v3 >= 2)
  {
LABEL_14:
    IPC::Decoder::markInvalid(this);
    v5 = 0;
    goto LABEL_11;
  }

  if (!v3)
  {
    v5 = 0;
    goto LABEL_7;
  }

  v4 = IPC::Decoder::decode<WTF::OptionSet<WebCore::AdvancedPrivacyProtections>>(this);
  if ((v4 & 0x10000) == 0)
  {
    v5 = 0x10000;
LABEL_11:
    IPC::Decoder::markInvalid(this);
    v6 = 0;
    return v6 | v5;
  }

  v5 = v4 & 0x1FFFF;
LABEL_7:
  v6 = 0x100000000;
  return v6 | v5;
}

uint64_t std::optional<std::optional<WebCore::OwnerPermissionsPolicyData>>::~optional(uint64_t a1, void *a2)
{
  if (*(a1 + 56) == 1 && *(a1 + 48) == 1)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      WTF::HashTable<WebCore::PermissionsPolicy::Feature,WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>>,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::HashMap<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::HashTraits<WebCore::Allowlist>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::FastMalloc>::deallocateTable(v3, a2);
    }

    v4 = *(a1 + 32);
    if (v4)
    {
      WTF::fastFree((v4 - 16), a2);
    }

    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(a1);
  }

  return a1;
}

void *IPC::ArgumentCoder<WebKit::ModelIdentifier,void>::decode@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, &v6);
  v5 = *a1;
  if (!*a1)
  {
    *a2 = 0;
    goto LABEL_4;
  }

  if (v7)
  {
    *a2 = v6;
    LOBYTE(v5) = 1;
LABEL_4:
    a2[16] = v5;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode(a1, a2);
  if ((*(a2 + 16) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::MonotonicObjectIdentifier<WebKit::RenderingUpdateIDType>,void>::decode(IPC::Decoder *a1)
{
  v1 = *(a1 + 1);
  v2 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v3 = *a1;
  v4 = v2 - *a1;
  v5 = v1 >= v4;
  v6 = v1 - v4;
  if (v5 && v6 > 7)
  {
    *(a1 + 2) = v2 + 1;
    if (v2)
    {
      v8 = *v2;
      if (v3)
      {
        v9 = v8 == -1;
      }

      else
      {
        v9 = 1;
      }

      if (!v9)
      {
        v10 = v8 & 0xFFFFFFFFFFFFFF00;
        v11 = v8;
        return v10 | v11;
      }

      v11 = 0;
LABEL_14:
      v10 = 0;
      return v10 | v11;
    }
  }

  else
  {
    v14 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v14;
  }

  v13 = a1;
  result = IPC::Decoder::markInvalid(a1);
  v11 = *v13;
  if (!*v13)
  {
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void *IPC::ArgumentCoder<WebKit::NavigationActionData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 1));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 2));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 3));
  if (*(a2 + 24))
  {
    LOBYTE(v8) = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v8);
    if ((*(a2 + 24) & 1) == 0)
    {
      goto LABEL_25;
    }

    IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode(a1, (a2 + 8));
  }

  else
  {
    LOBYTE(v8) = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }

  IPC::ArgumentCoder<std::optional<WTF::UUID>,void>::encode<IPC::Encoder,std::optional<WTF::UUID> const&>(a1, a2 + 32);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 64));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 65));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 72));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 80));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 84));
  IPC::ArgumentCoder<WebCore::ResourceResponse,void>::encode(a1, (a2 + 88));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 352));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 353));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 354));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 355));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 356));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 357));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 358));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 359));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 360));
  LOBYTE(v8) = *(a2 + 392);
  IPC::Encoder::operator<<<BOOL>(a1, &v8);
  IPC::ArgumentCoder<mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, a2 + 368, v8);
  LOBYTE(v8) = *(a2 + 424);
  IPC::Encoder::operator<<<BOOL>(a1, &v8);
  IPC::ArgumentCoder<mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, a2 + 400, v8);
  IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, a2 + 432);
  IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, a2 + 456);
  LOBYTE(v8) = *(a2 + 480);
  IPC::Encoder::operator<<<BOOL>(a1, &v8);
  LOBYTE(v8) = *(a2 + 481);
  IPC::Encoder::operator<<<BOOL>(a1, &v8);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 488));
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, *(a2 + 496));
  if (*(a2 + 552))
  {
    LOBYTE(v8) = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v8);
    if ((*(a2 + 552) & 1) == 0)
    {
      goto LABEL_25;
    }

    IPC::ArgumentCoder<WebCore::OwnerPermissionsPolicyData,void>::encode(a1, a2 + 504);
  }

  else
  {
    LOBYTE(v8) = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }

  if (*(a2 + 872))
  {
    LOBYTE(v8) = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v8);
    if ((*(a2 + 872) & 1) == 0)
    {
      goto LABEL_25;
    }

    IPC::ArgumentCoder<WebCore::PrivateClickMeasurement,void>::encode(a1, a2 + 560);
  }

  else
  {
    LOBYTE(v8) = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }

  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, *(a2 + 880));
  if (*(a2 + 884))
  {
    LOBYTE(v8) = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v8);
    if ((*(a2 + 884) & 1) == 0)
    {
      goto LABEL_25;
    }

    IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, *(a2 + 882));
  }

  else
  {
    LOBYTE(v8) = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v8);
  }

  if ((*(a2 + 1744) & 1) == 0)
  {
    LOBYTE(v8) = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v8);
    goto LABEL_13;
  }

  LOBYTE(v8) = 1;
  IPC::Encoder::operator<<<BOOL>(a1, &v8);
  if (*(a2 + 1744))
  {
    IPC::ArgumentCoder<WebKit::WebHitTestResultData,void>::encode(a1, a2 + 896);
LABEL_13:
    IPC::ArgumentCoder<WebKit::FrameInfoData,void>::encode(a1, a2 + 1760);
    IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2 + 2112);
    IPC::ArgumentCoder<WebKit::FrameInfoData,void>::encode(a1, a2 + 2128);
    IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2 + 2480);
    IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(a1, (a2 + 2496));
    IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(a1, (a2 + 2696));
    WebCore::ResourceRequestBase::httpBody(&v7, (a2 + 2696));
    v2 = v7;
    v7 = 0;
    v8 = v2;
    IPC::ArgumentCoder<IPC::FormDataReference,void>::encode(a1, &v8);
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  std::__throw_bad_optional_access[abi:sn200100]();
LABEL_26:
  WTF::RefCounted<WebCore::FormData>::deref(v2);
LABEL_14:
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    WTF::RefCounted<WebCore::FormData>::deref(v5);
  }

  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 2896));
}

void sub_19D6F00B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::RefCountedBase *a9)
{
  if (v9)
  {
    WTF::RefCounted<WebCore::FormData>::deref(v9);
  }

  if (a9)
  {
    WTF::RefCounted<WebCore::FormData>::deref(a9);
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebKit::NavigationActionData,void>::decode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v4 = v3;
  v6 = v5;
  v294[2] = *MEMORY[0x1E69E9840];
  v7 = *(v3 + 2);
  v89 = v6;
  if (*(v3 + 1) <= &v7[-*v3])
  {
    IPC::Decoder::markInvalid(v3);
    goto LABEL_236;
  }

  *(v3 + 2) = v7 + 1;
  if (!v7)
  {
LABEL_236:
    IPC::Decoder::markInvalid(v4);
    goto LABEL_237;
  }

  v8 = *v7;
  if (v8 < 6)
  {
    v117 = v8 | 0x100;
    goto LABEL_5;
  }

LABEL_237:
  IPC::Decoder::markInvalid(v4);
  v117 = 0;
LABEL_5:
  v116 = IPC::Decoder::decode<WTF::OptionSet<WebKit::WebEventModifier>>(v4);
  v115 = IPC::Decoder::decode<WebKit::WebMouseEventButton>(v4);
  v114 = IPC::Decoder::decode<WebKit::WebMouseEventSyntheticClickType>(v4);
  v9 = *(v4 + 2);
  if (*(v4 + 1) <= &v9[-*v4])
  {
    IPC::Decoder::markInvalid(v4);
    goto LABEL_239;
  }

  *(v4 + 2) = v9 + 1;
  if (!v9)
  {
LABEL_239:
    IPC::Decoder::markInvalid(v4);
    goto LABEL_240;
  }

  v10 = *v9;
  if (v10 >= 2)
  {
LABEL_240:
    IPC::Decoder::markInvalid(v4);
LABEL_241:
    IPC::Decoder::markInvalid(v4);
    v13 = 0;
    v11 = 0;
    goto LABEL_242;
  }

  if (!v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = 1;
    goto LABEL_10;
  }

  IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::UserGestureTokenIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v159, v4);
  if (v159[16] != 1)
  {
    goto LABEL_241;
  }

  v11 = v159[0];
  v294[0] = *&v159[1];
  *(v294 + 7) = *&v159[8];
  v13 = 1;
LABEL_242:
  v12 = 1;
LABEL_10:
  IPC::ArgumentCoder<std::optional<WTF::UUID>,void>::decode<IPC::Decoder>(v4, &v291);
  v14 = &v264;
  if ((v293 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v4);
  }

  v15 = *(v4 + 2);
  if (*(v4 + 1) <= &v15[-*v4])
  {
    IPC::Decoder::markInvalid(v4);
    goto LABEL_244;
  }

  *(v4 + 2) = v15 + 1;
  if (!v15)
  {
LABEL_244:
    IPC::Decoder::markInvalid(v4);
    v16 = 0;
    goto LABEL_245;
  }

  v16 = *v15;
  if (v16 < 2)
  {
    v17 = 1;
    goto LABEL_16;
  }

LABEL_245:
  IPC::Decoder::markInvalid(v4);
  v17 = 0;
LABEL_16:
  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v112 = v18;
  ShouldOpenExternalURLs = IPC::Decoder::decode<WebCore::ShouldOpenExternalURLsPolicy>(v4);
  IPC::Decoder::decode<WTF::String>(v4, &v157);
  v110 = IPC::Decoder::decode<WebCore::FloatPoint>(v4);
  v111 = v19;
  IPC::Decoder::decode<WebCore::ResourceResponse>(v4, v153);
  v20 = *(v4 + 1);
  v21 = *(v4 + 2);
  v22 = *v4;
  if (v20 <= &v21[-*v4])
  {
    IPC::Decoder::markInvalid(v4);
    goto LABEL_247;
  }

  v23 = v21 + 1;
  *(v4 + 2) = v21 + 1;
  if (!v21)
  {
LABEL_247:
    IPC::Decoder::markInvalid(v4);
    v24 = 0;
    goto LABEL_248;
  }

  v24 = *v21;
  if (v24 < 2)
  {
    v25 = 1;
    goto LABEL_23;
  }

LABEL_248:
  IPC::Decoder::markInvalid(v4);
  v25 = 0;
  v20 = *(v4 + 1);
  v23 = *(v4 + 2);
  v22 = *v4;
LABEL_23:
  v109 = v25;
  if (!v24)
  {
    v25 = 0;
  }

  v102 = v25;
  if (v20 <= &v23[-v22])
  {
    IPC::Decoder::markInvalid(v4);
    goto LABEL_250;
  }

  v26 = v23 + 1;
  *(v4 + 2) = v23 + 1;
  if (!v23)
  {
LABEL_250:
    IPC::Decoder::markInvalid(v4);
    v27 = 0;
    goto LABEL_251;
  }

  v27 = *v23;
  if (v27 < 2)
  {
    v28 = 1;
    goto LABEL_29;
  }

LABEL_251:
  IPC::Decoder::markInvalid(v4);
  v28 = 0;
  v20 = *(v4 + 1);
  v26 = *(v4 + 2);
  v22 = *v4;
LABEL_29:
  v108 = v28;
  if (!v27)
  {
    v28 = 0;
  }

  v101 = v28;
  if (v20 <= &v26[-v22])
  {
    IPC::Decoder::markInvalid(v4);
    goto LABEL_253;
  }

  v29 = v26 + 1;
  *(v4 + 2) = v26 + 1;
  if (!v26)
  {
LABEL_253:
    IPC::Decoder::markInvalid(v4);
    v30 = 0;
    goto LABEL_254;
  }

  v30 = *v26;
  if (v30 < 2)
  {
    v31 = 1;
    goto LABEL_35;
  }

LABEL_254:
  IPC::Decoder::markInvalid(v4);
  v31 = 0;
  v20 = *(v4 + 1);
  v29 = *(v4 + 2);
  v22 = *v4;
LABEL_35:
  v107 = v31;
  if (!v30)
  {
    v31 = 0;
  }

  v100 = v31;
  if (v20 <= &v29[-v22])
  {
    IPC::Decoder::markInvalid(v4);
    goto LABEL_256;
  }

  v32 = v29 + 1;
  *(v4 + 2) = v29 + 1;
  if (!v29)
  {
LABEL_256:
    IPC::Decoder::markInvalid(v4);
    v33 = 0;
    goto LABEL_257;
  }

  v33 = *v29;
  if (v33 < 2)
  {
    v34 = 1;
    goto LABEL_41;
  }

LABEL_257:
  IPC::Decoder::markInvalid(v4);
  v34 = 0;
  v20 = *(v4 + 1);
  v32 = *(v4 + 2);
  v22 = *v4;
LABEL_41:
  v99 = v34;
  if (!v33)
  {
    v34 = 0;
  }

  v98 = v34;
  if (v20 <= &v32[-v22])
  {
    IPC::Decoder::markInvalid(v4);
    goto LABEL_259;
  }

  v35 = v32 + 1;
  *(v4 + 2) = v32 + 1;
  if (!v32)
  {
LABEL_259:
    IPC::Decoder::markInvalid(v4);
    v36 = 0;
    goto LABEL_260;
  }

  v36 = *v32;
  if (v36 < 2)
  {
    v37 = 1;
    goto LABEL_47;
  }

LABEL_260:
  IPC::Decoder::markInvalid(v4);
  v37 = 0;
  v20 = *(v4 + 1);
  v35 = *(v4 + 2);
  v22 = *v4;
LABEL_47:
  v106 = v37;
  if (!v36)
  {
    v37 = 0;
  }

  v97 = v37;
  if (v20 <= &v35[-v22])
  {
    IPC::Decoder::markInvalid(v4);
    goto LABEL_262;
  }

  v38 = v35 + 1;
  *(v4 + 2) = v35 + 1;
  if (!v35)
  {
LABEL_262:
    IPC::Decoder::markInvalid(v4);
    v39 = 0;
    goto LABEL_263;
  }

  v39 = *v35;
  if (v39 < 2)
  {
    v40 = 1;
    goto LABEL_53;
  }

LABEL_263:
  IPC::Decoder::markInvalid(v4);
  v40 = 0;
  v20 = *(v4 + 1);
  v38 = *(v4 + 2);
  v22 = *v4;
LABEL_53:
  v96 = v40;
  if (!v39)
  {
    v40 = 0;
  }

  v95 = v40;
  if (v20 <= &v38[-v22])
  {
    IPC::Decoder::markInvalid(v4);
    goto LABEL_265;
  }

  v41 = v38 + 1;
  *(v4 + 2) = v38 + 1;
  if (!v38)
  {
LABEL_265:
    IPC::Decoder::markInvalid(v4);
    v42 = 0;
    goto LABEL_266;
  }

  v42 = *v38;
  if (v42 < 2)
  {
    v43 = 1;
    goto LABEL_59;
  }

LABEL_266:
  IPC::Decoder::markInvalid(v4);
  v43 = 0;
  v20 = *(v4 + 1);
  v41 = *(v4 + 2);
  v22 = *v4;
LABEL_59:
  v105 = v43;
  if (!v42)
  {
    v43 = 0;
  }

  v94 = v43;
  if (v20 <= &v41[-v22])
  {
    IPC::Decoder::markInvalid(v4);
    goto LABEL_268;
  }

  *(v4 + 2) = v41 + 1;
  if (!v41)
  {
LABEL_268:
    IPC::Decoder::markInvalid(v4);
    v44 = 0;
    goto LABEL_269;
  }

  v44 = *v41;
  if (v44 < 2)
  {
    v45 = 1;
    goto LABEL_65;
  }

LABEL_269:
  IPC::Decoder::markInvalid(v4);
  v45 = 0;
LABEL_65:
  v93 = v45;
  if (!v44)
  {
    LOBYTE(v45) = 0;
  }

  v92 = v45;
  IPC::Decoder::decode<WTF::String>(v4, &v151);
  IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::decode(v4, &v287);
  if ((v290 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v4);
  }

  IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::decode(v4, v284);
  if ((v286 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v4);
  }

  IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder>(&v148, v4);
  v91 = v150;
  if ((v150 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v4);
  }

  IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder>(&v145, v4);
  v90 = v147;
  if ((v147 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v4);
  }

  v104 = IPC::Decoder::decode<WebCore::LockHistory>(v4);
  v103 = IPC::Decoder::decode<WebCore::LockBackForwardList>(v4);
  IPC::Decoder::decode<WTF::String>(v4, &v143);
  LODWORD(v46) = IPC::Decoder::decode<WTF::OptionSet<WebCore::SandboxFlag>>(v4);
  IPC::Decoder::decode<std::optional<WebCore::OwnerPermissionsPolicyData>>(v281, v4);
  v47 = *(v4 + 2);
  if (*(v4 + 1) <= &v47[-*v4])
  {
    IPC::Decoder::markInvalid(v4);
    goto LABEL_271;
  }

  *(v4 + 2) = v47 + 1;
  if (!v47)
  {
LABEL_271:
    IPC::Decoder::markInvalid(v4);
    goto LABEL_272;
  }

  v48 = *v47;
  if (v48 >= 2)
  {
LABEL_272:
    IPC::Decoder::markInvalid(v4);
    goto LABEL_273;
  }

  if (!v48)
  {
    v159[0] = 0;
    v168 = 0;
    std::__optional_move_base<WebCore::PrivateClickMeasurement,false>::__optional_move_base[abi:sn200100](v140, v159);
    v142 = 1;
    if (v168 != 1)
    {
      goto LABEL_80;
    }

LABEL_229:
    WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(v159, v49);
    goto LABEL_80;
  }

  IPC::Decoder::decode<WebCore::PrivateClickMeasurement>(v159, v4);
  if (v168 == 1)
  {
    WebCore::PrivateClickMeasurement::PrivateClickMeasurement(v140, v159);
    v141 = 1;
    v142 = 1;
    if ((v168 & 1) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_229;
  }

LABEL_273:
  v140[0] = 0;
  v142 = 0;
LABEL_80:
  if ((v142 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v4);
  }

  LODWORD(v50) = IPC::Decoder::decode<WTF::OptionSet<WebCore::AdvancedPrivacyProtections>>(v4);
  v51 = IPC::Decoder::decode<std::optional<WTF::OptionSet<WebCore::AdvancedPrivacyProtections>>>(v4);
  v52 = *(v4 + 2);
  if (*(v4 + 1) <= &v52[-*v4])
  {
    IPC::Decoder::markInvalid(v4);
    goto LABEL_275;
  }

  *(v4 + 2) = v52 + 1;
  if (!v52)
  {
LABEL_275:
    IPC::Decoder::markInvalid(v4);
    goto LABEL_276;
  }

  v53 = *v52;
  if (v53 >= 2)
  {
LABEL_276:
    IPC::Decoder::markInvalid(v4);
    goto LABEL_277;
  }

  if (v53)
  {
    IPC::Decoder::decode<WebKit::WebHitTestResultData>(v159, v4);
    if (v195 == 1)
    {
      WebKit::WebHitTestResultData::WebHitTestResultData(v279, v159);
      v279[848] = 1;
      v14 = &v264;
      v280 = 1;
      if ((v195 & 1) == 0)
      {
        goto LABEL_87;
      }

LABEL_232:
      WebKit::WebHitTestResultData::~WebHitTestResultData(v159, v54);
      goto LABEL_87;
    }

LABEL_277:
    v279[0] = 0;
    v14 = &v264;
    v280 = 0;
    goto LABEL_87;
  }

  v159[0] = 0;
  v195 = 0;
  std::__optional_move_base<WebKit::WebHitTestResultData,false>::__optional_move_base[abi:sn200100](v279, v159);
  v280 = 1;
  if (v195 == 1)
  {
    goto LABEL_232;
  }

LABEL_87:
  if ((v280 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v4);
  }

  IPC::Decoder::decode<WebKit::FrameInfoData>(v4, &v264);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v4, &v137);
  if ((v139 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v4);
  }

  IPC::Decoder::decode<WebKit::FrameInfoData>(v4, &v245);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v4, &v134);
  if ((v136 & 1) == 0)
  {
    IPC::Decoder::markInvalid(v4);
  }

  IPC::Decoder::decode<WebCore::ResourceRequest>(v4, v127);
  IPC::Decoder::decode<WebCore::ResourceRequest>(v4, v120);
  if (v126 == 1)
  {
    IPC::ArgumentCoder<IPC::FormDataReference,void>::decode(v4, v159);
    if (v159[8])
    {
      LODWORD(v58) = v126;
      if ((v126 & 1) == 0)
      {
        goto LABEL_216;
      }

      v118 = *v159;
      WebCore::ResourceRequestBase::setHTTPBody();
      v59 = v118;
      v118 = 0;
      if (v59)
      {
        WTF::RefCounted<WebCore::FormData>::deref(v59);
      }
    }

    else
    {
      IPC::Decoder::markInvalid(v4);
    }
  }

  IPC::Decoder::decode<WTF::String>(v4, &v118);
  v14 = &v245;
  if (!*v4)
  {
    *v89 = 0;
    v89[2912] = 0;
    v13 = &v264;
    goto LABEL_152;
  }

  LODWORD(v58) = v117;
  if (v117 <= 0xFF)
  {
    goto LABEL_216;
  }

  v159[0] = v117;
  LODWORD(v58) = v116;
  if ((v116 & 0x100) == 0)
  {
    goto LABEL_216;
  }

  v159[1] = v116;
  v55 = v115;
  LODWORD(v58) = v115;
  if (v115 <= 0xFFu)
  {
    goto LABEL_216;
  }

  v159[2] = v115;
  v55 = v114;
  LODWORD(v58) = v114;
  if (v114 <= 0xFFu)
  {
    goto LABEL_216;
  }

  v159[3] = v114;
  if ((v13 & 1) == 0)
  {
    goto LABEL_216;
  }

  v159[8] = v11;
  v4 = v159;
  *&v159[9] = v294[0];
  *&v159[16] = *(v294 + 7);
  v160 = v12;
  v13 = &v264;
  LODWORD(v58) = v293;
  if ((v293 & 1) == 0)
  {
    goto LABEL_216;
  }

  v161 = v291;
  LODWORD(v58) = v292;
  v162 = v292;
  if ((v17 & 1) == 0)
  {
    goto LABEL_216;
  }

  v55 = ShouldOpenExternalURLs;
  v163 = v112;
  LODWORD(v58) = ShouldOpenExternalURLs;
  if (ShouldOpenExternalURLs <= 0xFFu)
  {
    goto LABEL_216;
  }

  v164 = ShouldOpenExternalURLs;
  LODWORD(v58) = v158;
  if ((v158 & 1) == 0)
  {
    goto LABEL_216;
  }

  v58 = v157;
  v157 = 0;
  v165 = v58;
  LODWORD(v58) = v111;
  if ((v111 & 1) == 0)
  {
    goto LABEL_216;
  }

  v166 = v110;
  LODWORD(v58) = v156;
  if ((v156 & 1) == 0)
  {
    goto LABEL_216;
  }

  WebCore::ResourceResponseBase::ResourceResponseBase(&v167, v153);
  v58 = v154;
  v154 = 0;
  v169 = v58;
  v170 = v155;
  v55 = v108;
  LODWORD(v58) = v109;
  v56 = v104;
  v57 = v103;
  if ((v109 & 1) == 0)
  {
    goto LABEL_216;
  }

  LODWORD(v58) = v102;
  v171 = v102;
  if ((v108 & 1) == 0)
  {
    goto LABEL_216;
  }

  LODWORD(v58) = v101;
  v172 = v101;
  if ((v107 & 1) == 0)
  {
    goto LABEL_216;
  }

  LODWORD(v58) = v99;
  v55 = v100;
  v173 = v100;
  if ((v99 & 1) == 0)
  {
    goto LABEL_216;
  }

  LODWORD(v58) = v98;
  v174 = v98;
  if ((v106 & 1) == 0)
  {
    goto LABEL_216;
  }

  LODWORD(v58) = v96;
  v55 = v97;
  v175 = v97;
  if ((v96 & 1) == 0)
  {
    goto LABEL_216;
  }

  LODWORD(v58) = v95;
  v176 = v95;
  if ((v105 & 1) == 0)
  {
    goto LABEL_216;
  }

  LODWORD(v58) = v93;
  v55 = v94;
  v177 = v94;
  if ((v93 & 1) == 0)
  {
    goto LABEL_216;
  }

  v178 = v92;
  LODWORD(v58) = v152;
  if ((v152 & 1) == 0)
  {
    goto LABEL_216;
  }

  v58 = v151;
  v151 = 0;
  v179 = v58;
  LODWORD(v58) = v290;
  if ((v290 & 1) == 0)
  {
    goto LABEL_216;
  }

  v55 = v159;
  LOBYTE(v180) = 0;
  v182 = -1;
  LODWORD(v58) = v289;
  if (v289)
  {
    goto LABEL_217;
  }

  v61 = v287;
  v287 = 0uLL;
  v180 = v61;
  v55 = v288;
  v181 = v288;
LABEL_122:
  v182 = v58;
  while (1)
  {
    LODWORD(v58) = *(v13 + 1344);
    if ((v58 & 1) == 0)
    {
      goto LABEL_216;
    }

    v55 = v159;
    LOBYTE(v183) = 0;
    v185 = -1;
    v62 = *(v13 + 1336);
    if (*(v13 + 1336))
    {
      if (v62 == 255)
      {
        goto LABEL_127;
      }

      v183 = *(v13 + 1312);
    }

    else
    {
      v63 = *(v13 + 1312);
      v284[1] = 0;
      v284[0] = 0;
      *(v4 + 25) = v63;
      v55 = v285;
      v184 = v285;
    }

    v185 = v62;
LABEL_127:
    LODWORD(v58) = v91;
    if (v91)
    {
      v58 = &v145;
      *(v4 + 27) = v148;
      v186 = v149;
      v55 = v90;
      if (v90)
      {
        v55 = &v187;
        v187 = v145;
        v188 = v146;
        LODWORD(v58) = v56;
        if (v56 > 0xFFu)
        {
          v189 = v56;
          if ((v57 & 0x100) != 0)
          {
            v190 = v57;
            LODWORD(v58) = v144;
            if (v144)
            {
              v58 = v143;
              v143 = 0;
              v191 = v58;
              if ((v46 & 0x10000) != 0)
              {
                v192 = v46;
                LODWORD(v58) = *(v13 + 1304);
                if (v58)
                {
                  std::__optional_move_base<WebCore::OwnerPermissionsPolicyData,false>::__optional_move_base[abi:sn200100](&v193, v281);
                  LODWORD(v58) = v142;
                  if (v142)
                  {
                    std::__optional_move_base<WebCore::PrivateClickMeasurement,false>::__optional_move_base[abi:sn200100](v194, v140);
                    if ((v50 & 0x10000) != 0)
                    {
                      v196 = v50;
                      LODWORD(v58) = WORD2(v51);
                      if (WORD2(v51))
                      {
                        v46 = (v4 + 882);
                        *(v4 + 441) = v51;
                        *(v4 + 884) = BYTE2(v51);
                        LODWORD(v58) = *(v13 + 1232);
                        if (v58)
                        {
                          std::__optional_move_base<WebKit::WebHitTestResultData,false>::__optional_move_base[abi:sn200100](v197, v279);
                          LODWORD(v58) = *(v14 + 720);
                          if (v58)
                          {
                            break;
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

LABEL_216:
    __break(1u);
LABEL_217:
    if (v58 != 255)
    {
      *(v55 + 368) = *(v13 + 1360);
      goto LABEL_122;
    }
  }

  v198 = v264;
  v4 = &v264;
  WebCore::ResourceRequestBase::RequestData::RequestData(v199, v265);
  v200 = v266;
  v64 = *(v14 + 33);
  v265[20] = 0;
  v265[19] = 0;
  *&v199[152] = v64;
  v201 = v267;
  v202 = *(v14 + 560);
  v65 = v268;
  v266 = 0;
  v268 = 0;
  v203 = v65;
  LOBYTE(v204) = 0;
  v206 = -1;
  v66 = *(v14 + 600);
  if (!*(v14 + 600))
  {
    v67 = *(v14 + 36);
    v269 = 0uLL;
    v204 = v67;
    v205 = v270;
    goto LABEL_141;
  }

  if (v66 != 255)
  {
    v204 = v269;
LABEL_141:
    v206 = v66;
  }

  v207 = v271;
  v208 = *(v13 + 248);
  v209 = v272;
  v210 = v273;
  v211 = v274;
  v68 = v275;
  v271 = 0;
  v275 = 0;
  v212 = v68;
  v55 = v213;
  v213[0] = v276;
  v213[1] = v277;
  v214 = v278;
  LODWORD(v58) = v139;
  if ((v139 & 1) == 0)
  {
    goto LABEL_216;
  }

  v215 = v137;
  v216 = v138;
  LODWORD(v58) = v263;
  if ((v263 & 1) == 0)
  {
    goto LABEL_216;
  }

  v50 = v159;
  v51 = v159;
  v217 = v245;
  WebCore::ResourceRequestBase::RequestData::RequestData(v218, v246);
  v219 = v248;
  v69 = v247;
  v247 = 0uLL;
  *&v218[152] = v69;
  v220 = v249;
  v221 = v250;
  v70 = v251;
  v248 = 0;
  v251 = 0;
  v222 = v70;
  LOBYTE(v223) = 0;
  v225 = -1;
  if (!v254)
  {
    v71 = v252;
    v252 = 0uLL;
    v223 = v71;
    v224 = v253;
    goto LABEL_146;
  }

  if (v254 != 255)
  {
    v223 = v252;
LABEL_146:
    v225 = v254;
  }

  v226 = v255;
  v4 = v159;
  v227 = *(v14 + 124);
  v228 = v256;
  v229 = v257;
  v230 = v258;
  v72 = cf;
  v255 = 0;
  cf = 0;
  v231 = v72;
  v55 = v232;
  v232[0] = v260;
  v232[1] = v261;
  v233 = v262;
  LODWORD(v58) = v136;
  if ((v136 & 1) == 0)
  {
    goto LABEL_216;
  }

  v234 = v134;
  v235 = v135;
  LODWORD(v58) = v133;
  if ((v133 & 1) == 0)
  {
    goto LABEL_216;
  }

  WebCore::ResourceRequestBase::RequestData::RequestData(v236, v127);
  *(v46 + 883) = v128;
  v55 = v130;
  v236[21] = v129;
  v128 = 0uLL;
  v236[22] = v130;
  v237 = v131;
  v58 = v132;
  v129 = 0;
  v132 = 0;
  v238 = v58;
  LODWORD(v58) = v126;
  if ((v126 & 1) == 0)
  {
    goto LABEL_216;
  }

  WebCore::ResourceRequestBase::RequestData::RequestData(v239, v120);
  v55 = v123;
  v240 = v122;
  v73 = v121;
  v121 = 0uLL;
  *&v239[152] = v73;
  v241 = v123;
  v242 = v124;
  v58 = v125;
  v122 = 0;
  v125 = 0;
  v243 = v58;
  LODWORD(v58) = v119;
  if ((v119 & 1) == 0)
  {
    goto LABEL_216;
  }

  v74 = v118;
  v118 = 0;
  v244 = v74;
  *(WebKit::NavigationActionData::NavigationActionData(v89, v159) + 2912) = 1;
  WebKit::NavigationActionData::~NavigationActionData(v159, v75);
LABEL_152:
  if (v119 == 1)
  {
    v76 = v118;
    v118 = 0;
    if (v76)
    {
      if (atomic_fetch_add_explicit(v76, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v76, v60);
      }
    }
  }

  if (v126 == 1)
  {
    v77 = v125;
    v125 = 0;
    if (v77)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase(v120);
  }

  if (v133 == 1)
  {
    v78 = v132;
    v132 = 0;
    if (v78)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase(v127);
  }

  if (*(v14 + 352) == 1)
  {
    v79 = cf;
    cf = 0;
    if (v79)
    {
      CFRelease(v79);
    }

    v80 = v255;
    v255 = 0;
    if (v80 && atomic_fetch_add_explicit(v80, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v80, v60);
    }

    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v252);
    v81 = v251;
    v251 = 0;
    if (v81)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase(v246);
  }

  if (*(v13 + 352) == 1)
  {
    v82 = v275;
    v275 = 0;
    if (v82)
    {
      CFRelease(v82);
    }

    v83 = v271;
    v271 = 0;
    if (v83 && atomic_fetch_add_explicit(v83, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v83, v60);
    }

    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v269);
    v84 = v268;
    v268 = 0;
    if (v84)
    {
    }

    WebCore::ResourceRequestBase::~ResourceRequestBase(v265);
  }

  if (*(v13 + 1232) == 1 && *(v13 + 1216) == 1)
  {
    WebKit::WebHitTestResultData::~WebHitTestResultData(v279, v60);
  }

  if (v142 == 1 && v141 == 1)
  {
    WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(v140, v60);
  }

  if (*(v13 + 1304) == 1 && *(v13 + 1296) == 1)
  {
    if (v283)
    {
      WTF::HashTable<WebCore::PermissionsPolicy::Feature,WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>>,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::HashMap<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::HashTraits<WebCore::Allowlist>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::FastMalloc>::deallocateTable(v283, v60);
    }

    if (v282)
    {
      WTF::fastFree((v282 - 16), v60);
    }

    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v281);
  }

  if (v144 == 1)
  {
    v85 = v143;
    v143 = 0;
    if (v85)
    {
      if (atomic_fetch_add_explicit(v85, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v85, v60);
      }
    }
  }

  if (*(v13 + 1344) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v284);
  }

  if (*(v13 + 1392) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v287);
  }

  if (v152 == 1)
  {
    v86 = v151;
    v151 = 0;
    if (v86)
    {
      if (atomic_fetch_add_explicit(v86, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v86, v60);
      }
    }
  }

  if (v156 == 1)
  {
    v87 = v154;
    v154 = 0;
    if (v87)
    {
    }

    WebCore::ResourceResponseBase::~ResourceResponseBase(v153, v60);
  }

  if (v158 == 1)
  {
    v88 = v157;
    v157 = 0;
    if (v88)
    {
      if (atomic_fetch_add_explicit(v88, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v88, v60);
      }
    }
  }
}

void sub_19D6F132C(_Unwind_Exception *a1, WTF::StringImpl *a2)
{
  std::optional<WebCore::ResourceResponse>::~optional(&STACK[0x410], a2);
  if (LOBYTE(STACK[0x528]) == 1)
  {
    v3 = STACK[0x520];
    STACK[0x520] = 0;
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, v2);
      }
    }
  }

  _Unwind_Resume(a1);
}

uint64_t IPC::Decoder::decode<WTF::OptionSet<WebKit::WebEventModifier>>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<WTF::OptionSet<WebKit::WebEventModifier>,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x100) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2;
}

uint64_t IPC::Decoder::decode<WebKit::WebMouseEventButton>(IPC::Decoder *a1)
{
  v2 = IPC::Decoder::decode<signed char>(a1);
  if (v2 & 0x100) != 0 && (v3 = v2 + 2, (v2 + 2) < 5u) && ((0x1Du >> v3))
  {
    v4 = 0x2010000FEuLL >> (8 * (v3 & 0x1Fu));
    v5 = 256;
  }

  else
  {
    IPC::Decoder::markInvalid(a1);
    LOBYTE(v4) = 0;
    v5 = 0;
  }

  return v5 | v4;
}

uint64_t IPC::Decoder::decode<WebKit::WebMouseEventSyntheticClickType>(IPC::Decoder *a1)
{
  v1 = *(a1 + 2);
  if (*(a1 + 1) <= &v1[-*a1])
  {
    v4 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v4;
    goto LABEL_7;
  }

  *(a1 + 2) = v1 + 1;
  if (!v1)
  {
LABEL_7:
    v5 = a1;
    IPC::Decoder::markInvalid(a1);
    a1 = v5;
    goto LABEL_8;
  }

  v2 = *v1;
  if (v2 >= 3)
  {
LABEL_8:
    IPC::Decoder::markInvalid(a1);
    return 0;
  }

  return v2 | 0x100;
}

uint64_t std::optional<WebCore::OwnerPermissionsPolicyData>::~optional(uint64_t a1, void *a2)
{
  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      WTF::HashTable<WebCore::PermissionsPolicy::Feature,WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist>>,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::HashMap<WebCore::PermissionsPolicy::Feature,WebCore::Allowlist,WTF::IntHash<WebCore::PermissionsPolicy::Feature>,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::HashTraits<WebCore::Allowlist>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebCore::PermissionsPolicy::Feature>,WTF::FastMalloc>::deallocateTable(v3, a2);
    }

    v4 = *(a1 + 32);
    if (v4)
    {
      WTF::fastFree((v4 - 16), a2);
    }

    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(a1);
  }

  return a1;
}

void WebCore::ResourceResponse::~ResourceResponse(WebCore::ResourceResponse *this, WTF::StringImpl *a2)
{
  v3 = *(this + 31);
  *(this + 31) = 0;
  if (v3)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(this, a2);
}

WTF *IPC::ArgumentCoder<WebKit::NetworkProcessConnectionParameters,void>::decode@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<WebKit::SharedPreferencesForWebProcess>(a1, v12);
  result = IPC::Decoder::decode<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v9, a1);
  if (*a1)
  {
    if ((v13 & 1) == 0 || (*v6 = *v12, *&v6[15] = *&v12[15], (v11 & 1) == 0))
    {
      __break(1u);
      return result;
    }

    WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v7, &v9);
    _ZNSt3__127__optional_copy_assign_baseIN6WebKit34NetworkProcessConnectionParametersELb0EECI2NS_24__optional_destruct_baseIS2_Lb0EEEIJS2_EEENS_10in_place_tEDpOT_(a2, v6);
    result = v7;
    if (v7)
    {
      v7 = 0;
      v8 = 0;
      result = WTF::fastFree(result, v5);
    }
  }

  else
  {
    *a2 = 0;
    a2[40] = 0;
  }

  if (v11 == 1)
  {
    result = v9;
    if (v9)
    {
      v9 = 0;
      v10 = 0;
      return WTF::fastFree(result, v5);
    }
  }

  return result;
}

void sub_19D6F19EC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF *a12, int a13, WTF *a14, int a15, int a16, char a17)
{
  if (a12)
  {
    WTF::fastFree(a12, a2);
  }

  if (a17 == 1)
  {
    if (a14)
    {
      WTF::fastFree(a14, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

unint64_t IPC::Decoder::decode<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2);
  if ((a1[16] & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

void sub_19D6F1A74(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 16) == 1)
  {
    v4 = *v2;
    if (*v2)
    {
      *v2 = 0;
      *(v2 + 8) = 0;
      WTF::fastFree(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(void *a1, _DWORD *a2)
{
  *a1 = 0;
  a1[1] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

void sub_19D6F1AD0(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::PasteboardImage,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::Image,WTF::RawPtrTraits<WebCore::Image>,WTF::DefaultRefDerefTraits<WebCore::Image>>,void>::encode<IPC::Encoder,WebCore::Image>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 48));
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,void>::encode<IPC::Encoder,WebCore::SharedBuffer>(a1, (a2 + 56));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 64));
  IPC::VectorArgumentCoder<false,std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 72));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 88));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 96));
  v4 = *(a2 + 100);

  return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v4);
}

void IPC::ArgumentCoder<WebCore::PasteboardImage,void>::decode(unsigned __int8 **a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::RefPtr<WebCore::Image,WTF::RawPtrTraits<WebCore::Image>,WTF::DefaultRefDerefTraits<WebCore::Image>>>(a1, &v48);
  IPC::ArgumentCoder<WebCore::PasteboardURL,void>::decode(a1, &v43);
  if ((v47 & 1) == 0)
  {
    v22 = *a1;
    v23 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v24 = a1[3];
    if (v24)
    {
      if (v23)
      {
        (*(*v24 + 16))(v24, v22);
      }
    }
  }

  IPC::Decoder::decode<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>(a1, &v41);
  IPC::Decoder::decode<WTF::String>(a1, &v39);
  IPC::Decoder::decode<WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v36, a1);
  IPC::Decoder::decode<WTF::String>(a1, &v34);
  v4 = IPC::Decoder::decode<WebCore::FloatPoint>(a1);
  if (*a1)
  {
    if ((v49 & 1) == 0 || (v6 = v48, v48 = 0, v25 = v6, (v47 & 1) == 0) || (v7 = v46, v26 = v43, v43 = 0, v27 = v44, v28 = v45, LODWORD(v44) = v44 & 0xFFFFFFFE, v46 = 0, *&v29 = v7, (v42 & 1) == 0) || (v8 = v41, v41 = 0, *(&v29 + 1) = v8, (v40 & 1) == 0) || (v9 = v39, v39 = 0, *&v30 = v9, (v38 & 1) == 0) || (*(&v30 + 1) = v36, v10 = v37, v36 = 0, v37 = 0, v31 = v10, (v35 & 1) == 0) || (v11 = v34, v34 = 0, v32 = v11, (v5 & 1) == 0))
    {
      __break(1u);
      goto LABEL_38;
    }

    v33 = v4;
    v25 = 0;
    *a2 = v6;
    WTF::URL::URL(a2 + 8, &v26);
    v12 = v29;
    v13 = v30;
    v29 = 0u;
    v30 = 0u;
    *(a2 + 48) = v12;
    *(a2 + 64) = v13;
    *(a2 + 80) = v31;
    v14 = v32;
    v15 = v33;
    v31 = 0;
    v32 = 0;
    *(a2 + 88) = v14;
    *(a2 + 96) = v15;
    *(a2 + 104) = 1;
    WebCore::PasteboardImage::~PasteboardImage(&v25, v16);
  }

  else
  {
    *a2 = 0;
    *(a2 + 104) = 0;
  }

  if (v35 == 1)
  {
    v17 = v34;
    v34 = 0;
    if (v17)
    {
      if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v5);
      }
    }
  }

  if (v38 == 1)
  {
    WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v36, v5);
  }

  if (v40 == 1)
  {
    v18 = v39;
    v39 = 0;
    if (v18)
    {
      if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v5);
      }
    }
  }

  if (v42 == 1)
  {
    v19 = v41;
    v41 = 0;
    if (v19)
    {
      if (atomic_fetch_add(v19 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v19 + 2);
        (*(*v19 + 8))(v19);
      }
    }
  }

  if (v47 == 1)
  {
    v20 = v46;
    v46 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v5);
    }

    v21 = v43;
    v43 = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v5);
    }
  }

  if (v49 == 1)
  {
    v4 = v48;
    v48 = 0;
    if (v4)
    {
      if (v4[4] != 1)
      {
        --v4[4];
        return;
      }

LABEL_38:
      (*(*v4 + 8))(v4);
    }
  }
}

void sub_19D6F1ECC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, WTF::StringImpl *a23, char a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if (*(v30 - 56) == 1)
  {
    v32 = *(v30 - 64);
    *(v30 - 64) = 0;
    if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v32, a2);
    }

    v33 = *(v30 - 104);
    *(v30 - 104) = 0;
    if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v33, a2);
    }
  }

  if (*(v30 - 40) == 1)
  {
    v34 = *(v30 - 48);
    *(v30 - 48) = 0;
    if (v34)
    {
      if (v34[4] == 1)
      {
        (*(*v34 + 8))(v34, a2, a3, a4, a5, a6, a7, a8);
      }

      else
      {
        --v34[4];
      }
    }
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<WTF::RefPtr<WebCore::Image,WTF::RawPtrTraits<WebCore::Image>,WTF::DefaultRefDerefTraits<WebCore::Image>>>(unsigned __int8 **a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::Image,WTF::RawPtrTraits<WebCore::Image>,WTF::DefaultRefDerefTraits<WebCore::Image>>,void>::decode<IPC::Decoder,WebCore::Image>(a1, a2);
  if ((a2[8] & 1) == 0)
  {
    v4 = *a1;
    v5 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v6 = a1[3];
    if (v6)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      (*(*v6 + 16))(v6, v4);
    }
  }
}

uint64_t IPC::Decoder::decode<WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 >= v4 - v5 && v6 - (v4 - v5) > 7)
  {
    *(a2 + 2) = v4 + 1;
    if (!v4)
    {
      goto LABEL_45;
    }

    v8 = *v4;
    v41 = 0;
    v42 = 0;
    if (v8 < 0x10000)
    {
      if (!v8)
      {
LABEL_40:
        *a1 = v41;
        v35 = v42;
        v41 = 0;
        v42 = 0;
        *(a1 + 8) = v35;
        *(a1 + 16) = 1;
        return WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v41, v5);
      }

      LODWORD(v42) = v8;
      v41 = WTF::fastMalloc(v4, (16 * v8));
      while (1)
      {
        IPC::Decoder::decode<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>>(&v38, a2);
        if ((v40 & 1) == 0)
        {
          goto LABEL_36;
        }

        if (HIDWORD(v42) != v42)
        {
          break;
        }

        v9 = WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v41, HIDWORD(v42) + 1, &v38);
        v10 = HIDWORD(v42) + 1;
        v11 = &v41[2 * HIDWORD(v42)];
        v12 = *v9;
        *v9 = 0;
        *v11 = v12;
        v13 = v9[1];
        v9[1] = 0;
        v11[1] = v13;
        HIDWORD(v42) = v10;
        if (v40)
        {
          goto LABEL_15;
        }

LABEL_21:
        if (!--v8)
        {
          goto LABEL_40;
        }
      }

      v14 = HIDWORD(v42) + 1;
      v15 = &v41[2 * HIDWORD(v42)];
      v16 = v38;
      v38 = 0;
      *v15 = v16;
      v17 = v39;
      v39 = 0;
      v15[1] = v17;
      HIDWORD(v42) = v14;
LABEL_15:
      v18 = v39;
      v39 = 0;
      if (v18 && atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v18 + 2);
        (*(*v18 + 8))(v18);
      }

      v19 = v38;
      v38 = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v5);
      }

      goto LABEL_21;
    }

    while (1)
    {
      IPC::Decoder::decode<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>>(&v38, a2);
      if ((v40 & 1) == 0)
      {
LABEL_36:
        *a1 = 0;
        *(a1 + 16) = 0;
        WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v41, v5);
        goto LABEL_37;
      }

      if (HIDWORD(v42) != v42)
      {
        break;
      }

      v21 = WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v41, HIDWORD(v42) + 1, &v38);
      v22 = HIDWORD(v42) + 1;
      v23 = &v41[2 * HIDWORD(v42)];
      v24 = *v21;
      *v21 = 0;
      *v23 = v24;
      v25 = v21[1];
      v21[1] = 0;
      v23[1] = v25;
      HIDWORD(v42) = v22;
      if (v40)
      {
        goto LABEL_28;
      }

LABEL_34:
      if (!--v8)
      {
        WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v41, HIDWORD(v42), v20);
        goto LABEL_40;
      }
    }

    v26 = HIDWORD(v42) + 1;
    v27 = &v41[2 * HIDWORD(v42)];
    v28 = v38;
    v38 = 0;
    *v27 = v28;
    v29 = v39;
    v39 = 0;
    v27[1] = v29;
    HIDWORD(v42) = v26;
LABEL_28:
    v30 = v39;
    v39 = 0;
    if (v30 && atomic_fetch_add(v30 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v30 + 2);
      (*(*v30 + 8))(v30);
    }

    v31 = v38;
    v38 = 0;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v5);
    }

    goto LABEL_34;
  }

  *a2 = 0;
  *(a2 + 1) = 0;
  v36 = *(a2 + 3);
  if (v36)
  {
    if (v6)
    {
      (*(*v36 + 16))(v36);
      v5 = *a2;
      v6 = *(a2 + 1);
      goto LABEL_45;
    }
  }

  else
  {
    v6 = 0;
  }

  v5 = 0;
LABEL_45:
  *a2 = 0;
  *(a2 + 1) = 0;
  v37 = *(a2 + 3);
  if (v37 && v6)
  {
    (*(*v37 + 16))(v37, v5);
  }

  *a1 = 0;
  *(a1 + 16) = 0;
LABEL_37:
  v32 = *a2;
  v33 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    if (v33)
    {
      return (*(*result + 16))(result, v32);
    }
  }

  return result;
}

void sub_19D6F24E8(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, WTF::StringImpl *a10, unsigned int *a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (a12 == 1)
  {
    if (a11 && atomic_fetch_add(a11 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a11 + 2);
      (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
    }

    if (a10)
    {
      if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(a10, a2);
      }
    }
  }

  WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a14, a2);
  _Unwind_Resume(a1);
}

void IPC::ArgumentCoder<WebCore::PasteboardWebContent,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,void>::encode<IPC::Encoder,WebCore::SharedBuffer>(a1, (a2 + 16));
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,void>::encode<IPC::Encoder,WebCore::SharedBuffer>(a1, (a2 + 24));
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,void>::encode<IPC::Encoder,WebCore::SharedBuffer>(a1, (a2 + 32));
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,void>::encode<IPC::Encoder,WebCore::SharedBuffer>(a1, (a2 + 40));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 48));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 56));

  IPC::VectorArgumentCoder<false,std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 64));
}

void IPC::ArgumentCoder<WebCore::PasteboardWebContent,void>::decode(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v55);
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v27 = *(a1 + 3);
    if (v27)
    {
      if (v4)
      {
        (*(*v27 + 16))(v27);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_54:
    *a1 = 0;
    *(a1 + 1) = 0;
    v28 = *(a1 + 3);
    if (v28)
    {
      if (v4)
      {
        (*(*v28 + 16))(v28);
        v7 = 0;
        v6 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_57;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    v7 = 0;
    goto LABEL_57;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_54;
  }

  v7 = *v5;
  if (v7 < 2)
  {
    v8 = 1;
    goto LABEL_5;
  }

LABEL_57:
  *a1 = 0;
  *(a1 + 1) = 0;
  v29 = *(a1 + 3);
  if (v29 && v4)
  {
    (*(*v29 + 16))(v29, v6);
  }

  v8 = 0;
LABEL_5:
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  IPC::Decoder::decode<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>(a1, &v53);
  IPC::Decoder::decode<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>(a1, &v51);
  IPC::Decoder::decode<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>(a1, &v49);
  IPC::Decoder::decode<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>(a1, &v47);
  IPC::Decoder::decode<WTF::String>(a1, &v45);
  IPC::Decoder::decode<WTF::String>(a1, &v43);
  IPC::Decoder::decode<WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v40, a1);
  if (*a1)
  {
    if (v56)
    {
      v11 = v55;
      v55 = 0;
      v30 = v11;
      if (v8)
      {
        v31 = v9;
        if (v54)
        {
          v12 = v53;
          v53 = 0;
          v32 = v12;
          if (v52)
          {
            v13 = v51;
            v51 = 0;
            v33 = v13;
            if (v50)
            {
              v14 = v49;
              v49 = 0;
              v34 = v14;
              if (v48)
              {
                v15 = v47;
                v47 = 0;
                v35 = v15;
                if (v46)
                {
                  v16 = v45;
                  v45 = 0;
                  v36 = v16;
                  if (v44)
                  {
                    v17 = v43;
                    v43 = 0;
                    v37 = v17;
                    if (v42)
                    {
                      v38 = v40;
                      v18 = v41;
                      v40 = 0;
                      v41 = 0;
                      v39 = v18;
                      WebCore::PasteboardWebContent::PasteboardWebContent(a2, &v30);
                      a2[80] = 1;
                      WebCore::PasteboardWebContent::~PasteboardWebContent(&v30, v19);
                      goto LABEL_19;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
  }

  *a2 = 0;
  a2[80] = 0;
LABEL_19:
  if (v42 == 1)
  {
    WTF::Vector<std::pair<WTF::String,WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v40, v10);
  }

  if (v44 == 1)
  {
    v20 = v43;
    v43 = 0;
    if (v20)
    {
      if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v10);
      }
    }
  }

  if (v46 == 1)
  {
    v21 = v45;
    v45 = 0;
    if (v21)
    {
      if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v10);
      }
    }
  }

  if (v48 == 1)
  {
    v22 = v47;
    v47 = 0;
    if (v22)
    {
      if (atomic_fetch_add(v22 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v22 + 2);
        (*(*v22 + 8))(v22);
      }
    }
  }

  if (v50 == 1)
  {
    v23 = v49;
    v49 = 0;
    if (v23)
    {
      if (atomic_fetch_add(v23 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v23 + 2);
        (*(*v23 + 8))(v23);
      }
    }
  }

  if (v52 == 1)
  {
    v24 = v51;
    v51 = 0;
    if (v24)
    {
      if (atomic_fetch_add(v24 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v24 + 2);
        (*(*v24 + 8))(v24);
      }
    }
  }

  if (v54 == 1)
  {
    v25 = v53;
    v53 = 0;
    if (v25)
    {
      if (atomic_fetch_add(v25 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v25 + 2);
        (*(*v25 + 8))(v25);
      }
    }
  }

  if (v56 == 1)
  {
    v26 = v55;
    v55 = 0;
    if (v26)
    {
      if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v10);
      }
    }
  }
}

void sub_19D6F2A98(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22, WTF::StringImpl *a23, char a24, WTF::StringImpl *a25, char a26)
{
  if (*(v26 - 56) == 1)
  {
    v28 = *(v26 - 64);
    *(v26 - 64) = 0;
    if (v28)
    {
      if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v28, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::PasteboardURL,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::URL>(a1, &v13);
  result = IPC::Decoder::decode<WTF::String>(a1, &v11);
  if (!*a1)
  {
    goto LABEL_17;
  }

  if ((v16 & 1) == 0 || (v6 = v13, v13 = 0, v7 = v6, v8 = v14, v9 = v15, LODWORD(v14) = v14 & 0xFFFFFFFE, (v12 & 1) == 0))
  {
    __break(1u);
LABEL_17:
    *a2 = 0;
    *(a2 + 48) = 0;
    goto LABEL_7;
  }

  v10 = v11;
  v11 = 0;
  WTF::URL::URL(a2, &v7);
  result = v7;
  *(a2 + 40) = v10;
  *(a2 + 48) = 1;
  v10 = 0;
  v7 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v5);
  }

LABEL_7:
  if (v12 == 1)
  {
    result = v11;
    v11 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  if (v16 == 1)
  {
    result = v13;
    v13 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  return result;
}

void sub_19D6F2E00(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WTF::StringImpl *a14, WTF::StringImpl *a15, char a16, WTF::StringImpl *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a14 && atomic_fetch_add_explicit(a14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a14, a2);
  }

  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (a16 == 1 && a15 && atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a15, a2);
  }

  if (a22 == 1 && a17 && atomic_fetch_add_explicit(a17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a17, a2);
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebCore::PasteboardBuffer,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 1);

  IPC::ArgumentCoder<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,void>::encode<IPC::Encoder,WebCore::SharedBuffer>(a1, a2 + 2);
}

void IPC::ArgumentCoder<WebCore::PasteboardBuffer,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v15);
  IPC::Decoder::decode<WTF::String>(a1, &v13);
  IPC::Decoder::decode<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>>(a1, &v11);
  if (*a1)
  {
    if (v16)
    {
      v5 = v15;
      v15 = 0;
      if (v14)
      {
        v6 = v13;
        v13 = 0;
        if (v12)
        {
          v7 = v11;
          *a2 = v5;
          *(a2 + 8) = v6;
          *(a2 + 16) = v7;
          *(a2 + 24) = 1;
          goto LABEL_6;
        }
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 24) = 0;
  if (v12)
  {
    v10 = v11;
    v11 = 0;
    if (v10)
    {
      if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v10 + 2);
        (*(*v10 + 8))(v10);
      }
    }
  }

LABEL_6:
  if (v14 == 1)
  {
    v8 = v13;
    v13 = 0;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v4);
      }
    }
  }

  if (v16 == 1)
  {
    v9 = v15;
    v15 = 0;
    if (v9)
    {
      if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v4);
      }
    }
  }
}

void sub_19D6F3040(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, WTF::StringImpl *a13, char a14)
{
  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a14 == 1 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::PlatformPopupMenuData,void>::encode@<X0>(IPC::Encoder *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  IPC::ArgumentCoder<__CFDictionary const*,void>::encode(a1, *a2, a3);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 8));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 9));
  v5 = *(a2 + 10);

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v5);
}

void IPC::ArgumentCoder<WebKit::PlatformPopupMenuData,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>, WebKit::CoreIPCCFDictionary *a3@<X1>)
{
  IPC::ArgumentCoder<WTF::RetainPtr<__CFDictionary const*>,void>::decode(a1, &cf, a3);
  if ((v50 & 1) == 0)
  {
    v20 = *a1;
    v21 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v22 = *(a1 + 3);
    if (v22)
    {
      if (v21)
      {
        v6 = (*(*v22 + 16))(v22, v20);
        if (*a1)
        {
          goto LABEL_37;
        }
      }
    }

    goto LABEL_31;
  }

  v5 = *a1;
  if (!*a1)
  {
    if (cf)
    {
      CFRelease(cf);
    }

LABEL_31:
    v23 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v6 = *(a1 + 3);
    if (v6)
    {
      if (v23)
      {
        (*(*v6 + 16))(v6);
        v7 = 0;
        v6 = 0;
        v5 = *a1;
      }

      else
      {
        v5 = 0;
        v7 = 0;
        v6 = 0;
      }
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    goto LABEL_4;
  }

  v6 = cf;
  v7 = 1;
LABEL_4:
  v8 = *(a1 + 1);
  v9 = *(a1 + 2);
  if (v8 <= &v9[-v5])
  {
    goto LABEL_38;
  }

  v10 = v9 + 1;
  *(a1 + 2) = v9 + 1;
  if (!v9)
  {
    v45 = v7;
    v47 = v6;
    goto LABEL_41;
  }

  v11 = *v9;
  if (v11 < 2)
  {
    v12 = 1;
    goto LABEL_8;
  }

  v42 = *v9;
  v45 = v7;
  v47 = v6;
  while (1)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v26 = *(a1 + 3);
    if (!v26 || !v8)
    {
      v40 = 0;
      v43 = 0;
      v27 = 0;
      v5 = 0;
LABEL_47:
      *a1 = 0;
      *(a1 + 1) = 0;
      v28 = *(a1 + 3);
      if (v28 && v27)
      {
        (*(*v28 + 16))(v28, v5, v27);
        v37 = 0;
        v5 = *a1;
        v8 = *(a1 + 1);
      }

      else
      {
        v8 = 0;
        v5 = 0;
        v37 = 0;
      }

      goto LABEL_50;
    }

    (*(*v26 + 16))(v26, v5);
    v12 = 0;
    v5 = *a1;
    v8 = *(a1 + 1);
    v10 = *(a1 + 2);
    v6 = v47;
    v11 = v42;
    v7 = v45;
LABEL_8:
    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v8 <= &v10[-v5])
    {
      v40 = v12;
      v43 = v13;
      v45 = v7;
      v47 = v6;
      v27 = 0;
      v34 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v34 && v8)
      {
        (*(*v34 + 16))(v34);
        v5 = *a1;
        v27 = *(a1 + 1);
      }

      else
      {
        v5 = 0;
      }

      goto LABEL_47;
    }

    *(a1 + 2) = v10 + 1;
    if (!v10)
    {
      v40 = v12;
      v43 = v13;
      v45 = v7;
      v47 = v6;
      v27 = v8;
      goto LABEL_47;
    }

    v14 = *v10;
    if (v14 < 2)
    {
      v15 = 1;
      goto LABEL_15;
    }

    v37 = v14;
    v40 = v12;
    v43 = v13;
    v45 = v7;
    v47 = v6;
LABEL_50:
    *a1 = 0;
    *(a1 + 1) = 0;
    v29 = *(a1 + 3);
    if (!v29)
    {
      v5 = 0;
      v35 = 0;
      v38 = 0;
      v8 = 0;
      goto LABEL_52;
    }

    if (!v8)
    {
      break;
    }

    (*(*v29 + 16))(v29, v5);
    v15 = 0;
    v5 = *a1;
    v8 = *(a1 + 1);
    v6 = v47;
    v13 = v43;
    v7 = v45;
    v14 = v37;
    v12 = v40;
LABEL_15:
    if (v14)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = *(a1 + 2);
    if (v8 <= &v17[-v5])
    {
      v35 = v15;
      v38 = v16;
      v40 = v12;
      v43 = v13;
      v45 = v7;
      v47 = v6;
      goto LABEL_52;
    }

    *(a1 + 2) = v17 + 1;
    if (!v17)
    {
      v35 = v15;
      v38 = v16;
      v40 = v12;
      v43 = v13;
      v45 = v7;
      v47 = v6;
      goto LABEL_55;
    }

    v18 = *v17;
    if (v18 >= 4)
    {
      goto LABEL_59;
    }

    v19 = v18 | 0x100;
    if (!v5)
    {
      goto LABEL_60;
    }

LABEL_22:
    if ((v7 & 1) != 0 && (v12 & 1) != 0 && (v15 & 1) != 0 && v19 > 0xFF)
    {
      *a2 = v6;
      *(a2 + 8) = v13;
      *(a2 + 9) = v16;
      *(a2 + 10) = v19;
      *(a2 + 16) = 1;
      return;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    v45 = v7;
    v47 = v6;
    *a1 = 0;
    *(a1 + 1) = 0;
    v24 = *(a1 + 3);
    if (!v24)
    {
      v8 = 0;
LABEL_40:
      v5 = 0;
      goto LABEL_41;
    }

    if (!v8)
    {
      goto LABEL_40;
    }

    (*(*v24 + 16))(v24);
    v5 = *a1;
    v8 = *(a1 + 1);
LABEL_41:
    *a1 = 0;
    *(a1 + 1) = 0;
    v25 = *(a1 + 3);
    if (!v25)
    {
      v8 = 0;
      goto LABEL_43;
    }

    if (v8)
    {
      (*(*v25 + 16))(v25, v5);
      v42 = 0;
      v5 = *a1;
      v8 = *(a1 + 1);
    }

    else
    {
LABEL_43:
      v5 = 0;
      v42 = 0;
    }
  }

  v5 = 0;
  v35 = 0;
  v38 = 0;
LABEL_52:
  *a1 = 0;
  *(a1 + 1) = 0;
  v30 = *(a1 + 3);
  if (!v30)
  {
    v8 = 0;
LABEL_54:
    v5 = 0;
    goto LABEL_55;
  }

  if (!v8)
  {
    goto LABEL_54;
  }

  (*(*v30 + 16))(v30, v5);
  v5 = *a1;
  v8 = *(a1 + 1);
LABEL_55:
  *a1 = 0;
  *(a1 + 1) = 0;
  v31 = *(a1 + 3);
  if (!v31)
  {
    v8 = 0;
    goto LABEL_57;
  }

  if (v8)
  {
    (*(*v31 + 16))(v31, v5);
    v5 = *a1;
    v8 = *(a1 + 1);
  }

  else
  {
LABEL_57:
    v5 = 0;
  }

  v6 = v47;
  v13 = v43;
  v7 = v45;
  v16 = v38;
  v12 = v40;
  v15 = v35;
LABEL_59:
  *a1 = 0;
  *(a1 + 1) = 0;
  v32 = *(a1 + 3);
  if (v32)
  {
    if (v8)
    {
      v36 = v15;
      v39 = v16;
      v41 = v12;
      v44 = v13;
      v46 = v7;
      v48 = v6;
      (*(*v32 + 16))(v32, v5);
      v19 = 0;
      v6 = v48;
      v13 = v44;
      v7 = v46;
      v16 = v39;
      v12 = v41;
      v15 = v36;
      if (*a1)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_60:
  *a2 = 0;
  *(a2 + 16) = 0;
  if (v6)
  {
    v33 = v7;
  }

  else
  {
    v33 = 0;
  }

  if (v33 == 1)
  {

    CFRelease(v6);
  }
}

void sub_19D6F3664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, CFTypeRef cf)
{
  if (!cf)
  {
    a12 = 0;
  }

  if (a12 == 1)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::PolicyDecision,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::ArgumentCoder<std::optional<WebKit::NavigatingToAppBoundDomain>,void>::encode<IPC::Encoder,std::optional<WebKit::NavigatingToAppBoundDomain>>(a1, a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, a2[2]);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, (a2 + 8));
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(a1, (a2 + 24));
  IPC::ArgumentCoder<std::optional<WebKit::WebsitePoliciesData>,void>::encode<IPC::Encoder,std::optional<WebKit::WebsitePoliciesData>>(a1, (a2 + 40));
  IPC::ArgumentCoder<std::optional<WebKit::SandboxExtensionHandle>,void>::encode<IPC::Encoder,std::optional<WebKit::SandboxExtensionHandle>>(a1, (a2 + 168));
  IPC::ArgumentCoder<std::optional<WebKit::PolicyDecisionConsoleMessage>,void>::encode<IPC::Encoder,std::optional<WebKit::PolicyDecisionConsoleMessage>>(a1, (a2 + 184));
  v5 = a2[208];
  return IPC::Encoder::operator<<<BOOL>(a1, &v5);
}

void IPC::ArgumentCoder<WebKit::PolicyDecision,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = IPC::Decoder::decode<std::optional<WebKit::NavigatingToAppBoundDomain>>(a1);
  v5 = *(a1 + 2);
  if (*(a1 + 1) <= &v5[-*a1])
  {
    IPC::Decoder::markInvalid(a1);
    goto LABEL_61;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
LABEL_61:
    IPC::Decoder::markInvalid(a1);
    goto LABEL_62;
  }

  v6 = *v5;
  if (v6 < 4)
  {
    v7 = 0;
    goto LABEL_5;
  }

LABEL_62:
  IPC::Decoder::markInvalid(a1);
  LOBYTE(v6) = 0;
  v7 = 1;
LABEL_5:
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a1, &v47);
  if ((v49 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  v8 = *(a1 + 2);
  if (*(a1 + 1) <= &v8[-*a1])
  {
    IPC::Decoder::markInvalid(a1);
    goto LABEL_64;
  }

  *(a1 + 2) = v8 + 1;
  if (!v8)
  {
LABEL_64:
    IPC::Decoder::markInvalid(a1);
    goto LABEL_65;
  }

  v9 = *v8;
  if (v9 >= 2)
  {
LABEL_65:
    IPC::Decoder::markInvalid(a1);
    goto LABEL_66;
  }

  if (!v9)
  {
    v10 = 0;
    v11 = 0;
    v30 = 0;
    v12 = 1;
    goto LABEL_12;
  }

  v26 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v27)
  {
    v10 = v26 & 0xFFFFFFFFFFFFFF00;
    v11 = v26;
    v12 = 1;
    v30 = 1;
    goto LABEL_12;
  }

LABEL_66:
  IPC::Decoder::markInvalid(a1);
  v12 = 0;
  v10 = 0;
  v11 = 0;
LABEL_12:
  IPC::Decoder::decode<std::optional<WebKit::WebsitePoliciesData>>(v45, a1);
  IPC::Decoder::decode<std::optional<WebKit::SandboxExtensionHandle>>(&v42, a1);
  v14 = *(a1 + 2);
  if (*(a1 + 1) <= &v14[-*a1])
  {
    IPC::Decoder::markInvalid(a1);
    goto LABEL_68;
  }

  *(a1 + 2) = v14 + 1;
  if (!v14)
  {
LABEL_68:
    IPC::Decoder::markInvalid(a1);
    goto LABEL_69;
  }

  v15 = *v14;
  if (v15 >= 2)
  {
LABEL_69:
    IPC::Decoder::markInvalid(a1);
    goto LABEL_70;
  }

  if (!v15)
  {
    v16 = 0;
    v29 = 0;
    v2 = 1;
    goto LABEL_17;
  }

  IPC::Decoder::decode<WebKit::PolicyDecisionConsoleMessage>(&v32, a1);
  if (v33 == 1)
  {
    v16 = 0;
    v2 = 0;
    v29 = v32;
    v28 = *(&v32 + 1);
    goto LABEL_17;
  }

LABEL_70:
  IPC::Decoder::markInvalid(a1);
  v29 = 0;
  v16 = 1;
LABEL_17:
  v17 = *(a1 + 2);
  v18 = *a1;
  if (*(a1 + 1) <= &v17[-*a1])
  {
    IPC::Decoder::markInvalid(a1);
    goto LABEL_72;
  }

  *(a1 + 2) = v17 + 1;
  if (!v17)
  {
LABEL_72:
    IPC::Decoder::markInvalid(a1);
    goto LABEL_73;
  }

  v19 = *v17;
  if (v19 < 2)
  {
    v20 = 0;
    goto LABEL_21;
  }

LABEL_73:
  IPC::Decoder::markInvalid(a1);
  IPC::Decoder::markInvalid(a1);
  LOBYTE(v19) = 0;
  v18 = *a1;
  v20 = 1;
LABEL_21:
  if (v18)
  {
    if ((v31 & 0x10000) == 0)
    {
      goto LABEL_49;
    }

    LOWORD(v32) = v31;
    if (v7)
    {
      goto LABEL_49;
    }

    BYTE2(v32) = v6;
    if ((v49 & 1) == 0)
    {
      goto LABEL_49;
    }

    *(&v32 + 1) = v47;
    LOBYTE(v33) = v48;
    if ((v12 & 1) == 0)
    {
      goto LABEL_49;
    }

    *(&v33 + 1) = v11 | v10;
    v34 = v30;
    if ((v46 & 1) == 0)
    {
      goto LABEL_49;
    }

    v12 = &v32;
    std::__optional_move_base<WebKit::WebsitePoliciesData,false>::__optional_move_base[abi:sn200100](v35, v45);
    v10 = v28;
    if ((v44 & 1) == 0)
    {
      goto LABEL_49;
    }

    LOBYTE(v36) = 0;
    v37 = 0;
    if (v43 == 1)
    {
      goto LABEL_50;
    }

    while (1)
    {
      if (!v16)
      {
        LOBYTE(v38) = 0;
        v40 = 0;
        if ((v2 & 1) == 0)
        {
          v38 = v29;
          v39 = v10;
          v40 = 1;
          v10 = 0;
        }

        if (!v20)
        {
          break;
        }
      }

LABEL_49:
      __break(1u);
LABEL_50:
      v24 = v42;
      v42 = 0;
      v36 = v24;
      v37 = 1;
    }

    v41 = v19;
    v21 = v33;
    *a2 = v32;
    *(a2 + 16) = v21;
    *(a2 + 32) = v34;
    std::__optional_move_base<WebKit::WebsitePoliciesData,false>::__optional_move_base[abi:sn200100]((a2 + 40), v12 + 40);
    *(a2 + 168) = 0;
    *(a2 + 176) = 0;
    v22 = v37;
    if (v37 == 1)
    {
      v25 = v36;
      v36 = 0;
      *(a2 + 168) = v25;
      *(a2 + 176) = 1;
    }

    *(a2 + 184) = 0;
    *(a2 + 200) = 0;
    if (v40)
    {
      *(a2 + 184) = v38;
      *(a2 + 192) = v39;
      *(a2 + 200) = 1;
      v23 = v41;
      v39 = 0;
    }

    else
    {
      v23 = v41;
    }

    *(a2 + 208) = v23;
    *(a2 + 216) = 1;
    if (v22)
    {
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v36);
    }

    if (v35[120] == 1)
    {
      WebKit::WebsitePoliciesData::~WebsitePoliciesData((v12 + 40), v13);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 216) = 0;
    v10 = v28;
  }

  if (((v16 | v2) & 1) == 0 && v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v13);
  }

  if (v44 == 1 && v43 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v42);
  }

  if (v46 == 1 && v45[120] == 1)
  {
    WebKit::WebsitePoliciesData::~WebsitePoliciesData(v45, v13);
  }
}

void sub_19D6F3B98(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, WebKit::SandboxExtensionImpl *a39, __int16 a41, char a42, char a43, int a44, __int16 a45, char a46, char a47)
{
  if (((v46 | v47) & 1) == 0 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (a45 == 1 && a41 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&a39);
  }

  if (*(v48 - 120) == 1 && *(v48 - 128) == 1)
  {
    WebKit::WebsitePoliciesData::~WebsitePoliciesData((v48 - 248), a2);
  }

  _Unwind_Resume(exception_object);
}

void *IPC::ArgumentCoder<WebKit::PolicyDecisionConsoleMessage,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 1));

  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
}

uint64_t IPC::Decoder::decode<JSC::MessageLevel>(IPC::Decoder *a1)
{
  v2 = IPC::Decoder::decode<unsigned char>(a1);
  v3 = v2;
  v5 = (v2 & 0x100) == 0 || v2 > 4u;
  if (v5)
  {
    IPC::Decoder::markInvalid(a1);
  }

  if (v5)
  {
    return 0;
  }

  else
  {
    return v3 | 0x100u;
  }
}

uint64_t IPC::Decoder::decode<JSC::MessageSource>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<JSC::MessageSource,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x100) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2;
}

uint64_t IPC::ArgumentCoder<WebKit::PrintInfo,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 4));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<WebCore::PathQuadCurveTo,void>::encode(a1, (a2 + 12));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 28));
}

IPC::Decoder *IPC::ArgumentCoder<WebKit::PrintInfo,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 1);
  v5 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = *a1;
  v7 = v5 - *a1;
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (v8 && v9 > 3)
  {
    *(a1 + 2) = v5 + 1;
    if (v5)
    {
      v11 = *v5 | 0x100000000;
      v12 = v6;
      goto LABEL_8;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v30 = *(a1 + 3);
    if (!v30)
    {
      v4 = 0;
LABEL_52:
      v6 = 0;
      goto LABEL_53;
    }

    if (!v4)
    {
      goto LABEL_52;
    }

    (*(*v30 + 16))(v30, v6);
    v6 = *a1;
    v4 = *(a1 + 1);
  }

LABEL_53:
  *a1 = 0;
  *(a1 + 1) = 0;
  v31 = *(a1 + 3);
  if (!v31)
  {
    v12 = 0;
    v4 = 0;
LABEL_55:
    v6 = 0;
    v11 = 0;
    goto LABEL_8;
  }

  if (!v4)
  {
    v12 = 0;
    goto LABEL_55;
  }

  (*(*v31 + 16))(v31, v6);
  v11 = 0;
  v12 = *a1;
  v4 = *(a1 + 1);
  v6 = *a1;
LABEL_8:
  v13 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v4 >= v13 - v6 && v4 - (v13 - v6) > 3)
  {
    *(a1 + 2) = v13 + 1;
    if (v13)
    {
      v15 = *v13 | 0x100000000;
      goto LABEL_15;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v32 = *(a1 + 3);
    if (v32)
    {
      if (v4)
      {
        (*(*v32 + 16))(v32, v12);
        v12 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_59;
      }
    }

    else
    {
      v4 = 0;
    }

    v12 = 0;
  }

LABEL_59:
  *a1 = 0;
  *(a1 + 1) = 0;
  v33 = *(a1 + 3);
  if (v33)
  {
    if (v4)
    {
      (*(*v33 + 16))(v33, v12);
      v15 = 0;
      v12 = *a1;
      v4 = *(a1 + 1);
      v6 = *a1;
      goto LABEL_15;
    }

    v12 = 0;
  }

  else
  {
    v12 = 0;
    v4 = 0;
  }

  v6 = 0;
  v15 = 0;
LABEL_15:
  v16 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v17 = v16 - v6;
  v8 = v4 >= v17;
  v18 = v4 - v17;
  if (!v8 || v18 <= 3)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v34 = *(a1 + 3);
    if (v34)
    {
      if (v4)
      {
        (*(*v34 + 16))(v34, v12);
        v12 = *a1;
        v4 = *(a1 + 1);
LABEL_65:
        *a1 = 0;
        *(a1 + 1) = 0;
        v35 = *(a1 + 3);
        if (v35 && v4)
        {
          (*(*v35 + 16))(v35, v12);
        }

        v19 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      v4 = 0;
    }

    v12 = 0;
    goto LABEL_65;
  }

  *(a1 + 2) = v16 + 1;
  if (!v16)
  {
    goto LABEL_65;
  }

  v19 = *v16 | 0x100000000;
LABEL_20:
  result = IPC::ArgumentCoder<WebCore::RectEdges<float>,void>::decode(a1, &v41);
  v21 = v42;
  v22 = *(a1 + 1);
  if ((v42 & 1) == 0)
  {
    v23 = *a1;
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (!result)
    {
      v24 = 0;
      v28 = 0;
      goto LABEL_38;
    }

    goto LABEL_43;
  }

LABEL_21:
  v23 = *a1;
  v24 = *(a1 + 2);
  if (v22 > &v24[-*a1])
  {
    *(a1 + 2) = v24 + 1;
    if (v24)
    {
      LODWORD(v24) = *v24;
      if (v24 < 2)
      {
        v25 = 1;
        goto LABEL_25;
      }

      goto LABEL_40;
    }

    v24 = v22;
    v28 = v23;
    goto LABEL_38;
  }

  v38 = v21;
  v24 = 0;
  v36 = *(a1 + 3);
  *a1 = 0;
  *(a1 + 1) = 0;
  v28 = 0;
  if (v36)
  {
    if (v22)
    {
      (*(*v36 + 16))(v36);
      v21 = v38;
      v28 = *a1;
      v24 = *(a1 + 1);
    }

    goto LABEL_38;
  }

  while (1)
  {
    v21 = v38;
LABEL_38:
    *a1 = 0;
    *(a1 + 1) = 0;
    v29 = *(a1 + 3);
    if (v29)
    {
      v40 = v21;
      if (v24)
      {
        (*(*v29 + 16))(v29, v28, v24);
        LODWORD(v24) = 0;
        v23 = *a1;
        v22 = *(a1 + 1);
      }

      else
      {
        v22 = 0;
        v23 = 0;
      }

      v21 = v40;
    }

    else
    {
      v22 = 0;
      v23 = 0;
      LODWORD(v24) = 0;
    }

LABEL_40:
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (!result || !v22)
    {
      break;
    }

    v37 = v24;
    v39 = v21;
    result = (*(*result + 16))(result, v23);
    LODWORD(v24) = v37;
    v21 = v39;
    v25 = 0;
    v23 = *a1;
LABEL_25:
    v26 = v24 ? v25 : 0;
    if (!v23)
    {
      break;
    }

    if (v11 & 0x100000000) != 0 && (v15 & 0x100000000) != 0 && (v19 & 0x100000000) != 0 && (v21 & 1) != 0 && (v25)
    {
      *a2 = v11;
      *(a2 + 4) = v15;
      *(a2 + 8) = v19;
      *(a2 + 12) = v41;
      *(a2 + 28) = v26;
      v27 = 1;
      goto LABEL_35;
    }

    __break(1u);
LABEL_43:
    v38 = v21;
    if (v22)
    {
      result = (*(*result + 16))(result, v23);
      v22 = *(a1 + 1);
      v21 = v38;
      goto LABEL_21;
    }

    v24 = 0;
    v28 = 0;
  }

  v27 = 0;
  *a2 = 0;
LABEL_35:
  *(a2 + 32) = v27;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  v4 = a2[1];

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = v5;
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v9 = *a1;
  if (!*a1)
  {
    goto LABEL_7;
  }

  if ((v6 & 1) == 0 || (v8 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    *a2 = 0;
    goto LABEL_5;
  }

  *a2 = v4;
  *(a2 + 8) = result;
  LOBYTE(v9) = 1;
LABEL_5:
  *(a2 + 16) = v9;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = v5;
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v9 = *a1;
  if (!*a1)
  {
    *a2 = 0;
    goto LABEL_5;
  }

  if (v6 & 1) != 0 && (v8)
  {
    *a2 = v4;
    *(a2 + 8) = result;
    LOBYTE(v9) = 1;
LABEL_5:
    *(a2 + 16) = v9;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = v5;
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v9 = *a1;
  if (!*a1)
  {
    *a2 = 0;
    goto LABEL_5;
  }

  if (v6 & 1) != 0 && (v8)
  {
    *a2 = v4;
    *(a2 + 8) = result;
    LOBYTE(v9) = 1;
LABEL_5:
    *(a2 + 16) = v9;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WTF::UUID,void>::encode(a1, a2);
  v4 = a2[2];

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WTF::UUID,void>::decode(a1, v8);
  if (v9 != 1)
  {
    IPC::Decoder::markInvalid(a1);
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
    if (*a1)
    {
      goto LABEL_7;
    }

LABEL_8:
    v7 = 0;
    *a2 = 0;
    goto LABEL_5;
  }

  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (!*a1)
  {
    goto LABEL_8;
  }

  if ((v5 & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = v8[1];
  *a2 = v8[0];
  *(a2 + 8) = v6;
  *(a2 + 16) = result;
  v7 = 1;
LABEL_5:
  *(a2 + 32) = v7;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::ProcessQualified<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>(a1);
  v6 = v5;
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v9 = *a1;
  if (!*a1)
  {
    *a2 = 0;
    goto LABEL_5;
  }

  if (v6 & 1) != 0 && (v8)
  {
    *a2 = v4;
    *(a2 + 8) = result;
    LOBYTE(v9) = 1;
LABEL_5:
    *(a2 + 16) = v9;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t IPC::Decoder::decode<WebKit::MonotonicObjectIdentifier<WebKit::TransactionIDType>>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<WebKit::MonotonicObjectIdentifier<WebKit::RenderingUpdateIDType>,void>::decode(a1);
  if ((v3 & 1) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2;
}

unint64_t IPC::ArgumentCoder<WebKit::ProvisionalFrameCreationParameters,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2 + 8);
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(a1, a2 + 24);
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, *(a2 + 40));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 42));

  return IPC::ArgumentCoder<std::optional<WebCore::IntSize>,void>::encode<IPC::Encoder,std::optional<WebCore::IntSize> const&>(a1, a2 + 44);
}

unint64_t IPC::ArgumentCoder<WebKit::ProvisionalFrameCreationParameters,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = v5;
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a1, &v19);
  if ((v21 & 1) == 0)
  {
    v12 = *a1;
    v13 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v14 = *(a1 + 3);
    if (v14)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      (*(*v14 + 16))(v14, v12);
    }
  }

  IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(&v16, a1);
  v7 = IPC::Decoder::decode<WTF::OptionSet<WebCore::SandboxFlag>>(a1);
  v8 = IPC::Decoder::decode<WebCore::WritingDirection>(a1);
  result = IPC::Decoder::decode<std::optional<WebCore::IntSize>>(a1);
  if (!*a1)
  {
    goto LABEL_12;
  }

  if ((v6 & 1) == 0 || (v21 & 1) == 0 || (v18 & 1) == 0 || (*(&v22 + 7) = v16, HIBYTE(v22) = v17, (v7 & 0x10000) == 0) || (v8 & 0x100) == 0 || (v10 & 0x100000000) == 0)
  {
    __break(1u);
LABEL_12:
    *a2 = 0;
    *(a2 + 56) = 0;
    return result;
  }

  v11 = v19;
  *a2 = v4;
  *(a2 + 8) = v11;
  *(a2 + 16) = v20;
  *(a2 + 17) = v22;
  *(a2 + 40) = v7;
  *(a2 + 42) = v8;
  *(a2 + 44) = result;
  *(a2 + 52) = v10;
  *(a2 + 56) = 1;
  return result;
}

uint64_t *IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebCore::LayerHostingContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(_BYTE *a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a2, a1);
  if ((a1[16] & 1) == 0)
  {
    v5 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

unint64_t IPC::Decoder::decode<std::optional<WebCore::IntSize>>(IPC::Decoder *a1)
{
  result = IPC::ArgumentCoder<std::optional<WebCore::IntSize>,void>::decode<IPC::Decoder>(a1);
  if ((v3 & 0x100000000) == 0)
  {
    v5 = *a1;
    v4 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v6 = *(a1 + 3);
    if (v6)
    {
      v7 = v4 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v8 = result;
      (*(*v6 + 16))(v6, v5);
      return v8;
    }
  }

  return result;
}

void *IPC::ArgumentCoder<WebKit::WebRTCNetwork::IPAddress,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<mpark::variant<WebKit::WebRTCNetwork::IPAddress::UnspecifiedFamily,unsigned int,std::array<unsigned int,4ul>>,void>::decode<IPC::Decoder>(a1, &v9);
  if ((v11 & 1) == 0)
  {
    v6 = *a1;
    v7 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      result = (*(*result + 16))(result, v6);
    }
  }

  v5 = *a1;
  if (!*a1)
  {
    *a2 = 0;
    goto LABEL_5;
  }

  if (v11)
  {
    *a2 = v9;
    *(a2 + 16) = v10;
    LOBYTE(v5) = 1;
LABEL_5:
    *(a2 + 20) = v5;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::WebRTCNetwork::InterfaceAddress,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<mpark::variant<WebKit::WebRTCNetwork::IPAddress::UnspecifiedFamily,unsigned int,std::array<unsigned int,4ul>>,void>::encode<IPC::Encoder,mpark::variant<WebKit::WebRTCNetwork::IPAddress::UnspecifiedFamily,unsigned int,std::array<unsigned int,4ul>> const&>(a1, a2, v5);
  return IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 20));
}

void *IPC::Decoder::decode<WebKit::WebRTCNetwork::IPAddress>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebKit::WebRTCNetwork::IPAddress,void>::decode(a1, a2);
  if ((*(a2 + 20) & 1) == 0)
  {
    v5 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

mpark *IPC::ArgumentCoder<WebKit::WebRTCNetwork::SocketAddress,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 4));
  IPC::ArgumentCoder<std::span<char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, *(a2 + 8), *(a2 + 20));

  return IPC::ArgumentCoder<std::optional<WebKit::WebRTCNetwork::IPAddress>,void>::encode<IPC::Encoder,std::optional<WebKit::WebRTCNetwork::IPAddress> const&>(a1, a2 + 24);
}

WTF *IPC::ArgumentCoder<WebKit::WebRTCNetwork::SocketAddress,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1);
  v5 = ((*(a1 + 2) + 1) & 0xFFFFFFFFFFFFFFFELL);
  v6 = v5 - *a1;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (v7 && v8 > 1)
  {
    *(a1 + 2) = v5 + 1;
    if (v5)
    {
      v10 = *v5 | 0x10000;
      goto LABEL_8;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v19 = *(a1 + 3);
    if (v19)
    {
      if (v4)
      {
        (*(*v19 + 16))(v19);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v20 = *(a1 + 3);
  if (v20 && v4)
  {
    (*(*v20 + 16))(v20);
  }

  v10 = 0;
LABEL_8:
  v11 = IPC::Decoder::decode<float>(a1);
  result = IPC::Decoder::decode<WTF::Vector<char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v27, a1);
  v13 = *(a1 + 1);
  v14 = *(a1 + 2);
  v15 = *a1;
  if (v13 <= &v14[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v21 = *(a1 + 3);
    if (v21)
    {
      if (v13)
      {
        (*(*v21 + 16))(v21);
        v13 = *(a1 + 1);
      }
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_21;
  }

  *(a1 + 2) = v14 + 1;
  if (!v14)
  {
LABEL_21:
    *a1 = 0;
    *(a1 + 1) = 0;
    v22 = *(a1 + 3);
    if (v22)
    {
      if (v13)
      {
        (*(*v22 + 16))(v22);
        v15 = *a1;
        v13 = *(a1 + 1);
        goto LABEL_24;
      }
    }

    else
    {
      v13 = 0;
    }

    v15 = 0;
LABEL_24:
    *a1 = 0;
    *(a1 + 1) = 0;
    v23 = *(a1 + 3);
    if (v23 && v13)
    {
      (*(*v23 + 16))(v23, v15);
    }

LABEL_25:
    v15 = *a1;
    v24 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v24)
    {
      result = (*(*result + 16))(result, v15);
    }

    v17 = 0;
    LOBYTE(v16) = 0;
    goto LABEL_27;
  }

  v16 = *v14;
  if (v16 >= 2)
  {
    goto LABEL_24;
  }

  if (!v16)
  {
    v18 = 0;
    v17 = 1;
    goto LABEL_28;
  }

  result = IPC::Decoder::decode<WebKit::WebRTCNetwork::IPAddress>(a1, &v30);
  if (v32 != 1)
  {
    goto LABEL_25;
  }

  LOBYTE(v16) = v30;
  *v33 = *v31;
  *&v33[15] = *&v31[15];
  v17 = 1;
LABEL_27:
  v18 = 1;
LABEL_28:
  if (!*a1)
  {
    goto LABEL_38;
  }

  if ((v10 & 0x10000) == 0 || (v11 & 0x100000000) == 0 || (v29 & 1) == 0 || (v17 & 1) == 0)
  {
    __break(1u);
LABEL_38:
    *a2 = 0;
    *(a2 + 48) = 0;
    if ((v29 & 1) == 0)
    {
      return result;
    }

    goto LABEL_34;
  }

  *(a2 + 25) = *v33;
  *(a2 + 40) = *&v33[15];
  v25 = v27;
  *a2 = v10 | (v11 << 32);
  *(a2 + 8) = v25;
  v26 = v28;
  v27 = 0;
  v28 = 0;
  *(a2 + 16) = v26;
  *(a2 + 24) = v16;
  *(a2 + 44) = v18;
  *(a2 + 48) = 1;
LABEL_34:
  result = v27;
  if (v27)
  {
    v27 = 0;
    LODWORD(v28) = 0;
    return WTF::fastFree(result, v15);
  }

  return result;
}

void sub_19D6F4D74(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10, int a11, char a12)
{
  if (a12 == 1)
  {
    if (a9)
    {
      WTF::fastFree(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WTF::Vector<char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(_BYTE *a1, uint64_t *a2)
{
  IPC::Decoder::decode<std::span<char const,18446744073709551615ul>>(a2, v8);
  if (v9 == 1)
  {
    result = WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<unsigned char const,18446744073709551615ul>(a1, v8[0], v8[1]);
    a1[16] = 1;
  }

  else
  {
    *a1 = 0;
    a1[16] = 0;
    v5 = *a2;
    v6 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      return (*(*result + 16))(result, v5);
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::RTCNetwork,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<std::span<char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, *a2, *(a2 + 12));
  IPC::ArgumentCoder<std::span<char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, *(a2 + 16), *(a2 + 28));
  v5 = *(a2 + 48);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<mpark::variant<WebKit::WebRTCNetwork::IPAddress::UnspecifiedFamily,unsigned int,std::array<unsigned int,4ul>>,void>::encode<IPC::Encoder,mpark::variant<WebKit::WebRTCNetwork::IPAddress::UnspecifiedFamily,unsigned int,std::array<unsigned int,4ul>> const&>(a1, a2 + 32, v5);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 52));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 56));
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, *(a2 + 60));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 64));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 68));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 69));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 72));
  return IPC::VectorArgumentCoder<false,WebKit::WebRTCNetwork::InterfaceAddress,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::WebRTCNetwork::InterfaceAddress,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 80);
}

WTF *IPC::ArgumentCoder<WebKit::RTCNetwork,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::Vector<char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v77, a1);
  IPC::Decoder::decode<WTF::Vector<char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v74, a1);
  IPC::Decoder::decode<WebKit::WebRTCNetwork::IPAddress>(a1, &v71);
  v57 = IPC::Decoder::decode<float>(a1);
  v56 = IPC::Decoder::decode<float>(a1);
  v4 = a1[1];
  v5 = ((a1[2] + 1) & 0xFFFFFFFFFFFFFFFELL);
  v6 = v5 - *a1;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (v7 && v8 > 1)
  {
    a1[2] = (v5 + 1);
    if (v5)
    {
      v10 = *v5 | 0x10000;
      goto LABEL_8;
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    v46 = a1[3];
    if (v46)
    {
      if (v4)
      {
        (*(*v46 + 16))(v46);
        v4 = a1[1];
      }
    }

    else
    {
      v4 = 0;
    }
  }

  *a1 = 0;
  a1[1] = 0;
  v47 = a1[3];
  if (v47 && v4)
  {
    (*(*v47 + 16))(v47);
  }

  v10 = 0;
LABEL_8:
  v11 = IPC::Decoder::decode<float>(a1);
  v12 = a1[1];
  v13 = a1[2];
  v14 = *a1;
  if (v12 <= &v13[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v48 = a1[3];
    if (v48)
    {
      if (v12)
      {
        (*(*v48 + 16))(v48);
        v12 = a1[1];
      }
    }

    else
    {
      v12 = 0;
    }

LABEL_87:
    *a1 = 0;
    a1[1] = 0;
    v49 = a1[3];
    if (v49)
    {
      if (v12)
      {
        (*(*v49 + 16))(v49);
        v16 = 0;
        v14 = *a1;
        v12 = a1[1];
        goto LABEL_90;
      }
    }

    else
    {
      v12 = 0;
    }

    v14 = 0;
    v16 = 0;
    goto LABEL_90;
  }

  v15 = v13 + 1;
  a1[2] = (v13 + 1);
  if (!v13)
  {
    goto LABEL_87;
  }

  v16 = *v13;
  if (v16 < 2)
  {
    v17 = 1;
    goto LABEL_12;
  }

LABEL_90:
  *a1 = 0;
  a1[1] = 0;
  v50 = a1[3];
  if (!v50 || !v12)
  {
    v55 = 0;
    v17 = 0;
    v51 = 0;
    v14 = 0;
LABEL_92:
    *a1 = 0;
    a1[1] = 0;
    v52 = a1[3];
    if (v52 && v51)
    {
      (*(*v52 + 16))(v52, v14, v51);
      v19 = 0;
      v14 = *a1;
      v12 = a1[1];
    }

    else
    {
      v12 = 0;
      v14 = 0;
      v19 = 0;
    }

    goto LABEL_94;
  }

  (*(*v50 + 16))(v50, v14);
  v17 = 0;
  v14 = *a1;
  v12 = a1[1];
  v15 = a1[2];
LABEL_12:
  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v55 = v18;
  if (v12 <= &v15[-v14])
  {
    v51 = 0;
    v54 = a1[3];
    *a1 = 0;
    a1[1] = 0;
    if (v54 && v12)
    {
      (*(*v54 + 16))(v54);
      v14 = *a1;
      v51 = a1[1];
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_92;
  }

  a1[2] = (v15 + 1);
  if (!v15)
  {
    v51 = v12;
    goto LABEL_92;
  }

  v19 = *v15;
  if (v19 < 2)
  {
    v20 = 1;
    goto LABEL_19;
  }

LABEL_94:
  *a1 = 0;
  a1[1] = 0;
  v53 = a1[3];
  if (v53 && v12)
  {
    (*(*v53 + 16))(v53, v14);
  }

  v20 = 0;
LABEL_19:
  if (v19)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = IPC::Decoder::decode<float>(a1);
  v23 = a1[1];
  v24 = ((a1[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v25 = *a1;
  v26 = v24 - *a1;
  v7 = v23 >= v26;
  v27 = v23 - v26;
  if (!v7 || v27 <= 7)
  {
    *a1 = 0;
    a1[1] = 0;
    v43 = a1[3];
    if (v43)
    {
      if (v23)
      {
        (*(*v43 + 16))(v43);
        v23 = a1[1];
      }
    }

    else
    {
      v23 = 0;
    }

    goto LABEL_75;
  }

  a1[2] = (v24 + 1);
  if (!v24)
  {
LABEL_75:
    *a1 = 0;
    a1[1] = 0;
    v44 = a1[3];
    if (v44 && v23)
    {
      (*(*v44 + 16))(v44);
    }

    LOBYTE(v67) = 0;
    v70 = 0;
    goto LABEL_77;
  }

  v28 = *v24;
  v58[0] = 0;
  v58[1] = 0;
  if (v28 >= 0xAAAA)
  {
    while (1)
    {
      IPC::Decoder::decode<WebKit::WebRTCNetwork::InterfaceAddress>(&v60, a1);
      if ((v62 & 1) == 0)
      {
        goto LABEL_43;
      }

      v36 = HIDWORD(v58[1]);
      if (HIDWORD(v58[1]) == LODWORD(v58[1]))
      {
        v37 = WTF::Vector<WebKit::WebRTCNetwork::InterfaceAddress,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v58, HIDWORD(v58[1]) + 1, &v60);
        v36 = HIDWORD(v58[1]);
        v38 = v58[0] + 24 * HIDWORD(v58[1]);
        v39 = *v37;
        *(v38 + 2) = *(v37 + 16);
      }

      else
      {
        v38 = v58[0] + 24 * HIDWORD(v58[1]);
        v39 = v60;
        *(v38 + 2) = v61;
      }

      *v38 = v39;
      HIDWORD(v58[1]) = v36 + 1;
      if (!--v28)
      {
        WTF::Vector<WebKit::WebRTCNetwork::InterfaceAddress,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(v58, (v36 + 1));
        v31 = v58[0];
        v34 = HIDWORD(v58[1]);
        goto LABEL_36;
      }
    }
  }

  if (v28)
  {
    LODWORD(v58[1]) = 24 * v28 / 0x18u;
    v58[0] = WTF::fastMalloc((3 * v28), (24 * v28));
    while (1)
    {
      IPC::Decoder::decode<WebKit::WebRTCNetwork::InterfaceAddress>(&v60, a1);
      if ((v62 & 1) == 0)
      {
        break;
      }

      v29 = HIDWORD(v58[1]);
      if (HIDWORD(v58[1]) == LODWORD(v58[1]))
      {
        v30 = WTF::Vector<WebKit::WebRTCNetwork::InterfaceAddress,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v58, HIDWORD(v58[1]) + 1, &v60);
        v29 = HIDWORD(v58[1]);
        v31 = v58[0];
        v32 = v58[0] + 24 * HIDWORD(v58[1]);
        v33 = *v30;
        *(v32 + 2) = *(v30 + 16);
      }

      else
      {
        v31 = v58[0];
        v32 = v58[0] + 24 * HIDWORD(v58[1]);
        v33 = v60;
        *(v32 + 2) = v61;
      }

      *v32 = v33;
      v34 = v29 + 1;
      HIDWORD(v58[1]) = v34;
      if (!--v28)
      {
        goto LABEL_36;
      }
    }

LABEL_43:
    v35 = 0;
    LOBYTE(v67) = 0;
    v70 = 0;
    goto LABEL_44;
  }

  v34 = 0;
  v31 = 0;
LABEL_36:
  v58[0] = 0;
  v67 = v31;
  HIDWORD(v58[1]) = 0;
  v68 = v58[1];
  v69 = v34;
  v35 = 1;
  v70 = 1;
LABEL_44:
  result = v58[0];
  if (v58[0])
  {
    v58[0] = 0;
    LODWORD(v58[1]) = 0;
    result = WTF::fastFree(result, v25);
  }

  if (v35)
  {
    v41 = 1;
    goto LABEL_48;
  }

LABEL_77:
  v25 = *a1;
  v45 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  result = a1[3];
  if (result && v45)
  {
    result = (*(*result + 16))(result, v25);
  }

  v41 = 0;
LABEL_48:
  if (*a1)
  {
    if (v79 & 1) != 0 && (v76 & 1) != 0 && (v73)
    {
      *v58 = v71;
      v59 = v72;
      if (v57 & 0x100000000) != 0 && (v56 & 0x100000000) != 0 && (v10 & 0x10000) != 0 && (v11 & 0x100000000) != 0 && (v17 & 1) != 0 && (v20 & 1) != 0 && (v22 & 0x100000000) != 0 && (v41)
      {
        result = WebKit::RTCNetwork::RTCNetwork(&v60, &v77, &v74, v58, v57, v56, v10, v11, v55, v21, v22, &v67);
        *a2 = v60;
        *(a2 + 16) = v61;
        *(a2 + 24) = v62;
        v42 = v64[0];
        *(a2 + 32) = v63;
        *(a2 + 48) = v42;
        *(a2 + 60) = *(v64 + 12);
        *(a2 + 80) = v65;
        *(a2 + 88) = v66;
        *(a2 + 96) = 1;
        if ((v70 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_61;
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 96) = 0;
  if (!v41)
  {
    goto LABEL_63;
  }

LABEL_61:
  result = v67;
  if (v67)
  {
    v67 = 0;
    v68 = 0;
    result = WTF::fastFree(result, v25);
  }

LABEL_63:
  if (v76 == 1)
  {
    result = v74;
    if (v74)
    {
      v74 = 0;
      v75 = 0;
      result = WTF::fastFree(result, v25);
    }
  }

  if (v79 == 1)
  {
    result = v77;
    if (v77)
    {
      v77 = 0;
      v78 = 0;
      return WTF::fastFree(result, v25);
    }
  }

  return result;
}

void sub_19D6F5684(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF *a15, int a16)
{
  if (*(v16 - 120) == 1)
  {
    v18 = *(v16 - 136);
    if (v18)
    {
      *(v16 - 136) = 0;
      *(v16 - 128) = 0;
      WTF::fastFree(v18, a2);
    }
  }

  if (*(v16 - 96) == 1)
  {
    v19 = *(v16 - 112);
    if (v19)
    {
      *(v16 - 112) = 0;
      *(v16 - 104) = 0;
      WTF::fastFree(v19, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<webrtc::WebKitEncodedFrameInfo,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 4));
  v5 = *(a2 + 8);
  IPC::Encoder::encodeObject<long long>(a1, &v5);
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(a1, a2 + 16);
  v5 = *(a2 + 32);
  IPC::Encoder::encodeObject<long long>(a1, &v5);
  v5 = *(a2 + 40);
  IPC::Encoder::encodeObject<long long>(a1, &v5);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 48));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 52));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 53));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 54));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 56));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 60));
  return IPC::ArgumentCoder<webrtc::EncodedImage::Timing,void>::encode(a1, a2 + 64);
}

uint64_t IPC::ArgumentCoder<webrtc::WebKitEncodedFrameInfo,void>::decode@<X0>(IPC::Decoder *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 1);
  v4 = ((*(this + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = *this;
  v6 = v4 - *this;
  v7 = v3 >= v6;
  v8 = v3 - v6;
  if (v7 && v8 > 3)
  {
    *(this + 2) = v4 + 1;
    if (v4)
    {
      v96 = *v4 | 0x100000000;
      v10 = v5;
      goto LABEL_8;
    }
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
    v57 = *(this + 3);
    if (v57)
    {
      if (v3)
      {
        (*(*v57 + 16))(v57);
        v3 = *(this + 1);
      }
    }

    else
    {
      v3 = 0;
    }
  }

  *this = 0;
  *(this + 1) = 0;
  v58 = *(this + 3);
  if (!v58)
  {
    v10 = 0;
    v3 = 0;
LABEL_76:
    v5 = 0;
    v96 = 0;
    goto LABEL_8;
  }

  if (!v3)
  {
    v10 = 0;
    goto LABEL_76;
  }

  (*(*v58 + 16))(v58);
  v96 = 0;
  v10 = *this;
  v3 = *(this + 1);
  v5 = *this;
LABEL_8:
  v11 = ((*(this + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v3 < v11 - v5 || v3 - (v11 - v5) <= 3)
  {
    *this = 0;
    *(this + 1) = 0;
    v59 = *(this + 3);
    if (v59)
    {
      if (v3)
      {
        (*(*v59 + 16))(v59, v10);
        v10 = *this;
        v3 = *(this + 1);
LABEL_80:
        *this = 0;
        *(this + 1) = 0;
        v60 = *(this + 3);
        if (v60 && v3)
        {
          (*(*v60 + 16))(v60, v10);
        }

        v95 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      v3 = 0;
    }

    v10 = 0;
    goto LABEL_80;
  }

  *(this + 2) = v11 + 1;
  if (!v11)
  {
    goto LABEL_80;
  }

  v95 = *v11 | 0x100000000;
LABEL_15:
  v83 = IPC::Decoder::decode<long long>(this);
  v94 = v13;
  IPC::Decoder::decode<std::optional<unsigned long long>>(this, &v97);
  v82 = IPC::Decoder::decode<long long>(this);
  v93 = v14;
  v81 = IPC::Decoder::decode<long long>(this);
  v92 = v15;
  v16 = IPC::Decoder::decode<float>(this);
  if ((v16 & 0x100000000) == 0 || v16 > 4 || ((1 << v16) & 0x19) == 0)
  {
    v17 = *this;
    v18 = *(this + 1);
    *this = 0;
    *(this + 1) = 0;
    result = *(this + 3);
    if (result)
    {
      goto LABEL_65;
    }

    goto LABEL_17;
  }

  v80 = v16;
  for (i = 0; ; i = 1)
  {
    v20 = *(this + 1);
    v21 = *(this + 2);
    v22 = *this;
    if (v20 <= &v21[-*this])
    {
      *this = 0;
      *(this + 1) = 0;
      v61 = *(this + 3);
      if (v61)
      {
        if (v20)
        {
          (*(*v61 + 16))(v61);
          v20 = *(this + 1);
        }
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      *(this + 2) = v21 + 1;
      if (v21)
      {
        v23 = *v21;
        if (v23 < 4)
        {
          v90 = v23 | 0x100;
          goto LABEL_25;
        }

        goto LABEL_87;
      }
    }

    *this = 0;
    *(this + 1) = 0;
    v62 = *(this + 3);
    if (v62)
    {
      if (v20)
      {
        (*(*v62 + 16))(v62);
        v22 = *this;
        v20 = *(this + 1);
        goto LABEL_87;
      }
    }

    else
    {
      v20 = 0;
    }

    v22 = 0;
LABEL_87:
    *this = 0;
    *(this + 1) = 0;
    v63 = *(this + 3);
    if (!v63)
    {
      v22 = 0;
      v90 = 0;
      v20 = 0;
      goto LABEL_89;
    }

    if (!v20)
    {
      v22 = 0;
      v90 = 0;
      goto LABEL_89;
    }

    (*(*v63 + 16))(v63, v22);
    v90 = 0;
    v22 = *this;
    v20 = *(this + 1);
LABEL_25:
    v24 = *(this + 2);
    if (v20 > &v24[-v22])
    {
      *(this + 2) = v24 + 1;
      if (v24)
      {
        v25 = *v24;
        if (v25 < 2)
        {
          v26 = v25 | 0x100;
          goto LABEL_29;
        }

        goto LABEL_95;
      }

      goto LABEL_92;
    }

LABEL_89:
    *this = 0;
    *(this + 1) = 0;
    v64 = *(this + 3);
    if (v64)
    {
      if (v20)
      {
        (*(*v64 + 16))(v64, v22);
        v22 = *this;
        v20 = *(this + 1);
        goto LABEL_92;
      }
    }

    else
    {
      v20 = 0;
    }

    v22 = 0;
LABEL_92:
    *this = 0;
    *(this + 1) = 0;
    v65 = *(this + 3);
    if (v65)
    {
      if (v20)
      {
        (*(*v65 + 16))(v65, v22);
        v22 = *this;
        v20 = *(this + 1);
        goto LABEL_95;
      }
    }

    else
    {
      v20 = 0;
    }

    v22 = 0;
LABEL_95:
    *this = 0;
    *(this + 1) = 0;
    v66 = *(this + 3);
    if (!v66)
    {
      v22 = 0;
      v89 = 0;
      v20 = 0;
      goto LABEL_97;
    }

    if (!v20)
    {
      v22 = 0;
      v89 = 0;
      goto LABEL_97;
    }

    (*(*v66 + 16))(v66, v22);
    v26 = 0;
    v22 = *this;
    v20 = *(this + 1);
LABEL_29:
    v27 = *(this + 2);
    v89 = v26;
    if (v20 > &v27[-v22])
    {
      *(this + 2) = v27 + 1;
      if (v27)
      {
        v28 = *v27;
        if (v28 < 2)
        {
          v29 = 1;
          goto LABEL_33;
        }

        goto LABEL_103;
      }

      goto LABEL_100;
    }

LABEL_97:
    *this = 0;
    *(this + 1) = 0;
    v67 = *(this + 3);
    if (v67)
    {
      if (v20)
      {
        (*(*v67 + 16))(v67, v22);
        v22 = *this;
        v20 = *(this + 1);
        goto LABEL_100;
      }
    }

    else
    {
      v20 = 0;
    }

    v22 = 0;
LABEL_100:
    *this = 0;
    *(this + 1) = 0;
    v68 = *(this + 3);
    if (!v68)
    {
      v20 = 0;
LABEL_102:
      v22 = 0;
      v28 = 0;
      goto LABEL_103;
    }

    if (!v20)
    {
      goto LABEL_102;
    }

    (*(*v68 + 16))(v68, v22);
    v28 = 0;
    v22 = *this;
    v20 = *(this + 1);
LABEL_103:
    *this = 0;
    *(this + 1) = 0;
    v69 = *(this + 3);
    if (v69 && v20)
    {
      (*(*v69 + 16))(v69, v22);
    }

    v29 = 0;
LABEL_33:
    v30 = v28 ? v29 : 0;
    v31 = IPC::Decoder::decode<float>(this);
    v32 = IPC::Decoder::decode<float>(this);
    v33 = *(this + 1);
    v34 = *(this + 2);
    v79 = v30;
    v86 = v32;
    v87 = v31;
    v88 = v29;
    if (v33 <= &v34[-*this])
    {
      *this = 0;
      *(this + 1) = 0;
      v70 = *(this + 3);
      if (v70)
      {
        if (v33)
        {
          (*(*v70 + 16))(v70);
          v33 = *(this + 1);
        }
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      *(this + 2) = v34 + 1;
      if (v34)
      {
        v84 = *v34;
        v35 = 1;
        goto LABEL_39;
      }
    }

    *this = 0;
    *(this + 1) = 0;
    v71 = *(this + 3);
    if (v71 && v33)
    {
      (*(*v71 + 16))(v71);
    }

    v84 = 0;
    v35 = 0;
LABEL_39:
    v78 = IPC::Decoder::decode<long long>(this);
    v37 = v36;
    v77 = IPC::Decoder::decode<long long>(this);
    v39 = v38;
    v76 = IPC::Decoder::decode<long long>(this);
    v41 = v40;
    v75 = IPC::Decoder::decode<long long>(this);
    v43 = v42;
    v74 = IPC::Decoder::decode<long long>(this);
    v45 = v44;
    v73 = IPC::Decoder::decode<long long>(this);
    v47 = v46;
    v72 = IPC::Decoder::decode<long long>(this);
    v49 = v48;
    result = IPC::Decoder::decode<long long>(this);
    v50 = result;
    v51 = *this;
    if (*this)
    {
      if ((v35 & 1) == 0 || (v37 & 1) == 0 || (v39 & 1) == 0 || (v41 & 1) == 0 || (v43 & 1) == 0 || (v45 & 1) == 0 || (v47 & 1) == 0 || (v49 & 1) == 0 || (v17 & 1) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_49;
    }

    v55 = *(this + 1);
    *this = 0;
    *(this + 1) = 0;
    result = *(this + 3);
    if (!result)
    {
      break;
    }

    if (!v55)
    {
      break;
    }

    v56 = v50;
    result = (*(*result + 16))(result, 0);
    if (!*this)
    {
      break;
    }

    v50 = v56;
    v84 = 0;
LABEL_49:
    if ((v96 & 0x100000000) != 0 && (v95 & 0x100000000) != 0 && (v94 & 1) != 0 && (v99 & 1) != 0 && (v93 & 1) != 0 && (v92 & 1) != 0 && !i && v90 > 0xFF && v89 > 0xFF && (v88 & 1) != 0 && (v87 & 0x100000000) != 0 && (v86 & 0x100000000) != 0 && v51)
    {
      v52 = a2;
      *(a2 + 64) = v84;
      *(a2 + 72) = v78;
      *(a2 + 80) = v77;
      *(a2 + 88) = v76;
      *(a2 + 96) = v75;
      *(a2 + 104) = v74;
      *(a2 + 112) = v73;
      *(a2 + 120) = v72;
      *(a2 + 128) = v50;
      *a2 = v96;
      *(a2 + 4) = v95;
      v53 = v97;
      *(a2 + 8) = v83;
      *(a2 + 16) = v53;
      *(a2 + 24) = v98;
      *(a2 + 32) = v82;
      *(a2 + 40) = v81;
      *(a2 + 48) = v80;
      *(a2 + 52) = v90;
      *(a2 + 53) = v89;
      *(a2 + 54) = v79;
      v54 = 1;
      *(a2 + 56) = v87;
      *(a2 + 60) = v86;
      goto LABEL_63;
    }

LABEL_64:
    __break(1u);
LABEL_65:
    if (v18)
    {
      (*(*result + 16))(result, v17);
    }

LABEL_17:
    v80 = 0;
  }

  v54 = 0;
  v52 = a2;
  *a2 = 0;
LABEL_63:
  *(v52 + 136) = v54;
  return result;
}

uint64_t IPC::ArgumentCoder<webrtc::EncodedImage::Timing,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  v5 = *(a2 + 8);
  IPC::Encoder::encodeObject<long long>(a1, &v5);
  v5 = *(a2 + 16);
  IPC::Encoder::encodeObject<long long>(a1, &v5);
  v5 = *(a2 + 24);
  IPC::Encoder::encodeObject<long long>(a1, &v5);
  v5 = *(a2 + 32);
  IPC::Encoder::encodeObject<long long>(a1, &v5);
  v5 = *(a2 + 40);
  IPC::Encoder::encodeObject<long long>(a1, &v5);
  v5 = *(a2 + 48);
  IPC::Encoder::encodeObject<long long>(a1, &v5);
  v5 = *(a2 + 56);
  IPC::Encoder::encodeObject<long long>(a1, &v5);
  v5 = *(a2 + 64);
  return IPC::Encoder::encodeObject<long long>(a1, &v5);
}

uint64_t IPC::ArgumentCoder<WebKit::RTCPacketOptions::SerializableData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 4));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  v5 = *(a2 + 16);
  IPC::Encoder::encodeObject<long long>(a1, &v5);
  IPC::ArgumentCoder<std::span<char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, *(a2 + 24), *(a2 + 32));
  v5 = *(a2 + 40);
  return IPC::Encoder::encodeObject<long long>(a1, &v5);
}

uint64_t IPC::ArgumentCoder<WebKit::RTCPacketOptions::SerializableData,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WebKit::RTCPacketOptions::DifferentiatedServicesCodePoint>(a1);
  v5 = IPC::Decoder::decode<float>(a1);
  v6 = IPC::Decoder::decode<float>(a1);
  v7 = IPC::Decoder::decode<long long>(a1);
  v9 = v8;
  IPC::Decoder::decode<std::span<char const,18446744073709551615ul>>(a1, &v13);
  result = IPC::Decoder::decode<long long>(a1);
  v12 = *a1;
  if (!*a1)
  {
    goto LABEL_11;
  }

  if ((v4 & 0x100) == 0 || (v5 & 0x100000000) == 0 || (v6 & 0x100000000) == 0 || (v9 & 1) == 0 || (LOBYTE(v12) = v14, (v14 & 1) == 0) || (v11 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    *a2 = 0;
    goto LABEL_9;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v13;
  *(a2 + 40) = result;
  LOBYTE(v12) = 1;
LABEL_9:
  *(a2 + 48) = v12;
  return result;
}

uint64_t IPC::Decoder::decode<WebKit::RTCPacketOptions::DifferentiatedServicesCodePoint>(IPC::Decoder *a1)
{
  LOWORD(v2) = IPC::Decoder::decode<signed char>(a1);
  if ((v2 & 0x100) == 0 || ((v5 = 256, v2 > 0x38u) || ((1 << v2) & 0x101415555555501) == 0) && v2 != 255)
  {
    v3 = *a1;
    v4 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v2 = *(a1 + 3);
    if (v2)
    {
      if (v4)
      {
        (*(*v2 + 16))(v2, v3);
      }

      LOBYTE(v2) = 0;
    }

    v5 = 0;
  }

  return v5 | v2;
}

uint64_t *IPC::Decoder::decode<std::span<char const,18446744073709551615ul>>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<std::span<char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 16) & 1) == 0)
  {
    v5 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

void IPC::ArgumentCoder<WebKit::RTCPacketOptions,void>::decode(IPC::Decoder *a1@<X0>, webrtc::AsyncSocketPacketOptions *a2@<X8>)
{
  IPC::ArgumentCoder<WebKit::RTCPacketOptions::SerializableData,void>::decode(a1, v9);
  if ((v9[48] & 1) == 0)
  {
    v4 = *a1;
    v5 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v6 = *(a1 + 3);
    if (v6)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      (*(*v6 + 16))(v6, v4);
      if (*a1)
      {
        __break(1u);
        return;
      }
    }

LABEL_10:
    *a2 = 0;
    *(a2 + 112) = 0;
    return;
  }

  if (!*a1)
  {
    goto LABEL_10;
  }

  WebKit::RTCPacketOptions::RTCPacketOptions(v8, v9);
  webrtc::AsyncSocketPacketOptions::AsyncSocketPacketOptions();
  *(a2 + 112) = 1;
  webrtc::AsyncSocketPacketOptions::~AsyncSocketPacketOptions(v8);
}

void sub_19D6F64C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  webrtc::AsyncSocketPacketOptions::~AsyncSocketPacketOptions(va);
  _Unwind_Resume(a1);
}

WTF *IPC::ArgumentCoder<WebKit::RemoteWebTouchEvent,void>::decode@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = v5;
  result = IPC::Decoder::decode<WebKit::WebTouchEvent>(v18, a1);
  if (!*a1)
  {
    goto LABEL_11;
  }

  if ((v6 & 1) == 0 || (v23 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    *a2 = 0;
    a2[144] = 0;
    goto LABEL_6;
  }

  WebKit::WebTouchEvent::WebTouchEvent(v13, v18);
  *a2 = v4;
  WebKit::WebTouchEvent::WebTouchEvent((a2 + 16), v13);
  a2[144] = 1;
  v13[0] = &unk_1F10E7D80;
  WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v17, v9);
  WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v16, v10);
  result = v14;
  if (v14)
  {
    v14 = 0;
    v15 = 0;
    result = WTF::fastFree(result, v8);
  }

LABEL_6:
  if (v23 == 1)
  {
    v18[0] = &unk_1F10E7D80;
    WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v22, v8);
    WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v21, v11);
    result = v19;
    if (v19)
    {
      v19 = 0;
      v20 = 0;
      return WTF::fastFree(result, v12);
    }
  }

  return result;
}

void sub_19D6F6644(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF *a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, WTF *a33, int a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a21, a2);
  WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a19, v44);
  if (a17)
  {
    WTF::fastFree(a17, v45);
  }

  if (a43 == 1)
  {
    a27 = &unk_1F10E7D80;
    WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a37, v45);
    WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a35, v46);
    v48 = a33;
    if (a33)
    {
      a33 = 0;
      a34 = 0;
      WTF::fastFree(v48, v47);
    }
  }

  _Unwind_Resume(a1);
}

WTF *IPC::Decoder::decode<WebKit::WebTouchEvent>(_BYTE *a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<WebKit::WebTouchEvent,void>::decode(a2, a1);
  if ((a1[128] & 1) == 0)
  {
    v5 = *a2;
    v6 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      return (*(*result + 16))(result, v5);
    }
  }

  return result;
}

void sub_19D6F676C(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 128) == 1)
  {
    *v2 = &unk_1F10E7D80;
    WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 80, a2);
    WTF::Vector<WebKit::WebTouchEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 64, v4);
    v6 = *(v2 + 48);
    if (v6)
    {
      *(v2 + 48) = 0;
      *(v2 + 56) = 0;
      WTF::fastFree(v6, v5);
    }
  }

  _Unwind_Resume(exception_object);
}

void *IPC::ArgumentCoder<WebKit::RemoteWorkerInitializationData,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = v5;
  result = IPC::Decoder::decode<WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v12, v5);
  if (*a1)
  {
    if (v6 & 1) != 0 && (v13)
    {
      *&v9 = 0;
      v10 = v12;
      v12 = v9;
      v11 = v9;
      *a2 = v4;
      *(a2 + 8) = v10;
      *(a2 + 24) = 1;
      result = WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v11, v8);
      goto LABEL_5;
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 24) = 0;
LABEL_5:
  if (v13 == 1)
  {
    return WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v12, v8);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>, WTF::StringImpl *a3@<X1>)
{
  result = IPC::VectorArgumentCoder<false,std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a3, a2);
  if ((*(a2 + 16) & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

void sub_19D6F68BC(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 16) == 1)
  {
    WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::ResourceLoadInfo,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2 + 8);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2 + 24);
  IPC::ArgumentCoder<WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>> const&>(a1, (a2 + 48));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 64));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 104));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 112));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 120));
  v4 = *(a2 + 121);

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v4);
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::ResourceLoadInfo,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = *MEMORY[0x1E69E9840];
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = v5;
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a1, &v56);
  if ((v58 & 1) == 0)
  {
    goto LABEL_36;
  }

  while (1)
  {
    IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a1, &v53);
    if ((v55 & 1) == 0)
    {
      v27 = *a1;
      v28 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v29 = *(a1 + 3);
      if (v29)
      {
        if (v28)
        {
          (*(*v29 + 16))(v29, v27);
        }
      }
    }

    IPC::Decoder::decode<WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>>>(a1, &v69);
    IPC::Decoder::decode<WTF::URL>(a1, &v49);
    IPC::Decoder::decode<WTF::String>(a1, &v47);
    result = IPC::Decoder::decode<WTF::Seconds>(a1);
    v9 = v8;
    v10 = *(a1 + 1);
    v11 = *(a1 + 2);
    v12 = *a1;
    if (v10 <= &v11[-*a1])
    {
      v41 = result;
      v44 = v9;
      *a1 = 0;
      *(a1 + 1) = 0;
      v30 = *(a1 + 3);
      if (v30)
      {
        if (v10)
        {
          (*(*v30 + 16))(v30);
          v12 = *a1;
          v10 = *(a1 + 1);
          goto LABEL_45;
        }
      }

      else
      {
        v10 = 0;
      }

      v12 = 0;
    }

    else
    {
      v13 = v11 + 1;
      *(a1 + 2) = v11 + 1;
      if (v11)
      {
        v14 = *v11;
        if (v14 < 2)
        {
          v15 = 1;
          goto LABEL_7;
        }

        v38 = *v11;
        v41 = result;
        v44 = v9;
        goto LABEL_61;
      }

      v41 = result;
      v44 = v9;
    }

LABEL_45:
    *a1 = 0;
    *(a1 + 1) = 0;
    v31 = *(a1 + 3);
    if (!v31)
    {
      v10 = 0;
LABEL_47:
      v12 = 0;
      v38 = 0;
      goto LABEL_61;
    }

    if (!v10)
    {
      goto LABEL_47;
    }

    (*(*v31 + 16))(v31, v12);
    v38 = 0;
    v12 = *a1;
    v10 = *(a1 + 1);
LABEL_61:
    *a1 = 0;
    *(a1 + 1) = 0;
    v35 = *(a1 + 3);
    if (v35)
    {
      if (v10)
      {
        (*(*v35 + 16))(v35, v12);
        v12 = *a1;
        v10 = *(a1 + 1);
        goto LABEL_64;
      }
    }

    else
    {
      v10 = 0;
    }

    v12 = 0;
LABEL_64:
    v15 = 0;
    v13 = *(a1 + 2);
    result = v41;
    v9 = v44;
    v14 = v38;
LABEL_7:
    if (v14)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if (v10 <= v13 - v12)
    {
      v36 = v15;
      v39 = v16;
      v42 = result;
      v45 = v9;
      *a1 = 0;
      *(a1 + 1) = 0;
      v32 = *(a1 + 3);
      if (v32)
      {
        if (v10)
        {
          (*(*v32 + 16))(v32);
          v12 = *a1;
          v10 = *(a1 + 1);
LABEL_51:
          *a1 = 0;
          *(a1 + 1) = 0;
          v33 = *(a1 + 3);
          if (v33)
          {
            if (v10)
            {
              (*(*v33 + 16))(v33, v12);
              v12 = *a1;
              v10 = *(a1 + 1);
              goto LABEL_54;
            }
          }

          else
          {
            v10 = 0;
          }

          v12 = 0;
LABEL_54:
          result = v42;
          v9 = v45;
          v15 = v36;
          v16 = v39;
          goto LABEL_55;
        }
      }

      else
      {
        v10 = 0;
      }

      v12 = 0;
      goto LABEL_51;
    }

    *(a1 + 2) = v13 + 1;
    if (!v13)
    {
      v36 = v15;
      v39 = v16;
      v42 = result;
      v45 = v9;
      goto LABEL_51;
    }

    v17 = *v13;
    if (v17 < 0xF)
    {
      v18 = v17 | 0x100;
      if (!v12)
      {
        goto LABEL_56;
      }

      goto LABEL_14;
    }

LABEL_55:
    *a1 = 0;
    *(a1 + 1) = 0;
    v34 = *(a1 + 3);
    if (!v34 || !v10 || (v37 = v15, v40 = v16, v43 = result, v46 = v9, (*(*v34 + 16))(v34, v12), v18 = 0, v12 = *a1, result = v43, v9 = v46, v15 = v37, v16 = v40, !*a1))
    {
LABEL_56:
      *a2 = 0;
      *(a2 + 128) = 0;
      goto LABEL_26;
    }

LABEL_14:
    if (v6)
    {
      *&v59 = v4;
      if (v58)
      {
        *(&v59 + 1) = v56;
        LOBYTE(v60) = v57;
        if (v55)
        {
          *(&v60 + 1) = v53;
          LOBYTE(v61) = v54;
          if (v70)
          {
            v62 = v69;
            if (v52)
            {
              v19 = v49;
              v49 = 0;
              v63 = v19;
              v64 = v50;
              v65 = v51;
              LODWORD(v50) = v50 & 0xFFFFFFFE;
              if (v48)
              {
                v20 = v47;
                v47 = 0;
                v66 = v20;
                if (v9)
                {
                  v67 = result;
                  if (v15)
                  {
                    LOBYTE(v68) = v16;
                    if (v18 > 0xFF)
                    {
                      break;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_36:
    v24 = *a1;
    v25 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v26 = *(a1 + 3);
    if (v26 && v25)
    {
      (*(*v26 + 16))(v26, v24);
    }
  }

  HIBYTE(v68) = v18;
  v21 = v60;
  *a2 = v59;
  *(a2 + 16) = v21;
  v22 = v62;
  *(a2 + 32) = v61;
  *(a2 + 48) = v22;
  WTF::URL::URL(a2 + 64, &v63);
  v23 = v67;
  result = v63;
  *(a2 + 104) = v66;
  *(a2 + 112) = v23;
  *(a2 + 120) = v68;
  *(a2 + 128) = 1;
  v66 = 0;
  v63 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v12);
  }

LABEL_26:
  if (v48 == 1)
  {
    result = v47;
    v47 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v12);
      }
    }
  }

  if (v52 == 1)
  {
    result = v49;
    v49 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v12);
      }
    }
  }

  return result;
}

void sub_19D6F6E90(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, char a14, WTF::StringImpl *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, WTF::StringImpl *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, WTF::StringImpl *a40)
{
  if (a14 == 1 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  if (a20 == 1 && a15 && atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a15, a2);
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebKit::ResourceLoadStatisticsParameters,void>::decode(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<WTF::String>(a2, &v39);
  IPC::Decoder::decode<WebKit::SandboxExtensionHandle>(a2, &v37);
  v4 = IPC::Decoder::decode<BOOL>(a2);
  v5 = IPC::Decoder::decode<BOOL>(a2);
  v6 = IPC::Decoder::decode<BOOL>(a2);
  v7 = IPC::Decoder::decode<BOOL>(a2);
  v8 = IPC::Decoder::decode<WebCore::ThirdPartyCookieBlockingMode>(a2);
  v9 = IPC::Decoder::decode<WebKit::AllowsCellularAccess>(a2);
  PartyWebsiteDataRemoval = IPC::Decoder::decode<WebCore::FirstPartyWebsiteDataRemovalMode>(a2);
  IPC::Decoder::decode<WebCore::RegistrableDomain>(a2, &v35);
  IPC::Decoder::decode<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(a2, &v33);
  IPC::Decoder::decode<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(a2, &v31);
  IPC::Decoder::decode<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(a2, &v29);
  IPC::Decoder::decode<WebCore::RegistrableDomain>(a2, &v27);
  if (*a2)
  {
    if ((v40 & 1) == 0 || (v12 = v39, v39 = 0, *&v22 = v12, (v38 & 1) == 0) || (v13 = v37, v37 = 0, (v4 & 0x100) == 0) || (v23[0] = v4, (v5 & 0x100) == 0) || (v23[1] = v5, (v6 & 0x100) == 0) || (v23[2] = v6, (v7 & 0x100) == 0) || (v23[3] = v7, (v8 & 0x100) == 0) || (v23[4] = v8, (v9 & 0x100) == 0) || (v23[5] = v9, (PartyWebsiteDataRemoval & 0x100) == 0) || (v23[6] = PartyWebsiteDataRemoval, (v36 & 1) == 0) || (v14 = v35, v35 = 0, (v34 & 1) == 0) || (v15 = v33, v33 = 0, (v32 & 1) == 0) || (v16 = v31, v31 = 0, (v30 & 1) == 0) || (v17 = v29, v29 = 0, (v28 & 1) == 0))
    {
      __break(1u);
      return;
    }

    v18 = v27;
    v26 = 0;
    v27 = 0;
    v22 = 0u;
    *a1 = v12;
    *(a1 + 8) = v13;
    *(a1 + 16) = *v23;
    *(a1 + 19) = *&v23[3];
    v24 = 0u;
    *(a1 + 24) = v14;
    *(a1 + 32) = v15;
    v25 = 0u;
    *(a1 + 40) = v16;
    *(a1 + 48) = v17;
    *(a1 + 56) = v18;
    *(a1 + 64) = 1;
    WebKit::ResourceLoadStatisticsParameters::~ResourceLoadStatisticsParameters(&v22, v11);
  }

  else
  {
    *a1 = 0;
    *(a1 + 64) = 0;
  }

  if (v28 == 1)
  {
    v20 = v27;
    v27 = 0;
    if (v20)
    {
      if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v11);
      }
    }
  }

  if (v30 == 1 && v29)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v29, v11);
  }

  if (v32 == 1 && v31)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v31, v11);
  }

  if (v34 == 1 && v33)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v33, v11);
  }

  if (v36 == 1)
  {
    v21 = v35;
    v35 = 0;
    if (v21)
    {
      if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v11);
      }
    }
  }

  if (v38 == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v37);
  }

  if (v40 == 1)
  {
    v19 = v39;
    v39 = 0;
    if (v19)
    {
      if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v11);
      }
    }
  }
}

void sub_19D6F724C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, WTF::StringImpl **a19, char a20, WTF::StringImpl **a21, char a22, WTF::StringImpl **a23, char a24, WTF::StringImpl *a25, char a26)
{
  if ((a20 & 1) != 0 && a19)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(a19, a2);
  }

  if (a22 == 1 && a21)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(a21, a2);
  }

  if (a24 == 1 && a23)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(a23, a2);
  }

  if (a26 == 1 && a25 && atomic_fetch_add_explicit(a25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a25, a2);
  }

  if (*(v26 - 104) == 1)
  {
    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((v26 - 112));
  }

  if (*(v26 - 88) == 1)
  {
    v28 = *(v26 - 96);
    *(v26 - 96) = 0;
    if (v28)
    {
      if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v28, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WebCore::ThirdPartyCookieBlockingMode>(IPC::Decoder *a1)
{
  v2 = IPC::ArgumentCoder<WebCore::ThirdPartyCookieBlockingMode,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x100) == 0)
  {
    IPC::Decoder::markInvalid(a1);
  }

  return v2;
}

uint64_t IPC::Decoder::decode<WebCore::FirstPartyWebsiteDataRemovalMode>(IPC::Decoder *a1)
{
  v2 = IPC::Decoder::decode<unsigned char>(a1);
  v3 = v2 & 0x1FC;
  if (v3 == 256)
  {
    return v2 | 0x100u;
  }

  IPC::Decoder::markInvalid(a1);
  return 0;
}

uint64_t IPC::ArgumentCoder<WebKit::ScriptTrackingPrivacyRules,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::VectorArgumentCoder<false,WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2);
  IPC::VectorArgumentCoder<false,WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 2);
  IPC::VectorArgumentCoder<false,WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 4);

  return IPC::VectorArgumentCoder<false,WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 6);
}

uint64_t IPC::ArgumentCoder<WebKit::ScriptTrackingPrivacyRules,void>::decode@<X0>(IPC::Decoder *this@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v27, this);
  IPC::Decoder::decode<WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v24, this);
  IPC::Decoder::decode<WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v21, this);
  result = IPC::Decoder::decode<WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v18, this);
  if (*this)
  {
    if ((v29 & 1) == 0 || (v14[0] = v27, v6 = v28, v27 = 0, v28 = 0, v14[1] = v6, (v26 & 1) == 0) || (v15[0] = v24, v7 = v25, v24 = 0, v25 = 0, v15[1] = v7, (v23 & 1) == 0) || (v16[0] = v21, v8 = v22, v21 = 0, v22 = 0, v16[1] = v8, (v20 & 1) == 0))
    {
      __break(1u);
      return result;
    }

    v17[0] = v18;
    v9 = v19;
    v18 = 0;
    v19 = 0;
    v17[1] = v9;
    WebKit::ScriptTrackingPrivacyRules::ScriptTrackingPrivacyRules(a2, v14);
    a2[64] = 1;
    WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v17, v10);
    WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v16, v11);
    WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v15, v12);
    result = WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14, v13);
  }

  else
  {
    *a2 = 0;
    a2[64] = 0;
  }

  if (v20 == 1)
  {
    result = WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v5);
  }

  if (v23 == 1)
  {
    result = WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v21, v5);
  }

  if (v26 == 1)
  {
    result = WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v24, v5);
  }

  if (v29 == 1)
  {
    return WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v27, v5);
  }

  return result;
}

void sub_19D6F75B4(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  WebKit::ScriptTrackingPrivacyRules::~ScriptTrackingPrivacyRules(&a9, a2);
  if (a19 == 1)
  {
    WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a17, v27);
  }

  if (a25 == 1)
  {
    WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a21, v27);
  }

  if (*(v25 - 48) == 1)
  {
    WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v25 - 64, v27);
  }

  if (*(v25 - 24) == 1)
  {
    WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v25 - 40, v27);
  }

  _Unwind_Resume(a1);
}

uint64_t IPC::Decoder::decode<WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, IPC::Decoder *this)
{
  v4 = *(this + 1);
  v5 = ((*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = v5 - *this;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (!v7 || v8 <= 7)
  {
    IPC::Decoder::markInvalid(this);
    goto LABEL_33;
  }

  *(this + 2) = v5 + 1;
  if (v5)
  {
    v10 = *v5;
    v24 = 0;
    v25 = 0;
    if (v10 < 0x10000)
    {
      if (!v10)
      {
LABEL_30:
        *a1 = v24;
        v20 = v25;
        v24 = 0;
        v25 = 0;
        *(a1 + 8) = v20;
        *(a1 + 16) = 1;
        return WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v24, this);
      }

      LODWORD(v25) = v10;
      v24 = WTF::fastMalloc(v5, (16 * v10));
      while (1)
      {
        IPC::Decoder::decode<WebKit::ScriptTrackingPrivacyHost>(&v21, this);
        if ((v23 & 1) == 0)
        {
          goto LABEL_26;
        }

        if (HIDWORD(v25) != v25)
        {
          break;
        }

        WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::ScriptTrackingPrivacyHost>(&v24, &v21);
        if (v23)
        {
          goto LABEL_13;
        }

LABEL_14:
        if (!--v10)
        {
          goto LABEL_30;
        }
      }

      v11 = HIDWORD(v25) + 1;
      v12 = &v24[2 * HIDWORD(v25)];
      v13 = v21;
      v21 = 0;
      *v12 = v13;
      *(v12 + 4) = v22;
      HIDWORD(v25) = v11;
LABEL_13:
      v14 = v21;
      v21 = 0;
      if (v14)
      {
        if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, this);
        }
      }

      goto LABEL_14;
    }

    while (1)
    {
      IPC::Decoder::decode<WebKit::ScriptTrackingPrivacyHost>(&v21, this);
      if ((v23 & 1) == 0)
      {
LABEL_26:
        *a1 = 0;
        *(a1 + 16) = 0;
        WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v24, this);
        return IPC::Decoder::markInvalid(this);
      }

      if (HIDWORD(v25) != v25)
      {
        break;
      }

      WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::ScriptTrackingPrivacyHost>(&v24, &v21);
      if (v23)
      {
        goto LABEL_21;
      }

LABEL_22:
      if (!--v10)
      {
        WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v24, HIDWORD(v25));
        goto LABEL_30;
      }
    }

    v15 = HIDWORD(v25) + 1;
    v16 = &v24[2 * HIDWORD(v25)];
    v17 = v21;
    v21 = 0;
    *v16 = v17;
    *(v16 + 4) = v22;
    HIDWORD(v25) = v15;
LABEL_21:
    v18 = v21;
    v21 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, this);
    }

    goto LABEL_22;
  }

LABEL_33:
  IPC::Decoder::markInvalid(this);
  *a1 = 0;
  *(a1 + 16) = 0;
  return IPC::Decoder::markInvalid(this);
}

void sub_19D6F7834(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (a12 == 1 && a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a14, a2);
  _Unwind_Resume(a1);
}

void WebKit::ScriptTrackingPrivacyRules::~ScriptTrackingPrivacyRules(WebKit::ScriptTrackingPrivacyRules *this, void *a2)
{
  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 48, a2);
  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 32, v3);
  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 16, v4);

  WTF::Vector<WebKit::ScriptTrackingPrivacyHost,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this, v5);
}

uint64_t std::optional<WebKit::HTTPBody>::optional[abi:sn200100]<WebKit::HTTPBody,0>(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a1 + 8, a2 + 2);
  *(a1 + 24) = 1;
  return a1;
}

void sub_19D6F7920(_Unwind_Exception *exception_object, void *a2)
{
  v4 = v3;
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    WTF::fastFree(v6, a2);
  }

  v7 = *v2;
  *v2 = 0;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

IPC::Decoder *IPC::Decoder::decode<std::optional<WTF::WallTime>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::optional<WTF::WallTime>,void>::decode<IPC::Decoder>(a2, a1);
  if ((a1[16] & 1) == 0)
  {
    v5 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

void *IPC::ArgumentCoder<WebKit::FrameState,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 24));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 32));
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2 + 40);
  IPC::ArgumentCoder<std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, a2 + 56);
  v4 = *(a2 + 80);
  v5 = IPC::Encoder::grow(a1, 8uLL, 8);
  if (v6 <= 7)
  {
    goto LABEL_28;
  }

  *v5 = v4;
  v7 = *(a2 + 88);
  v8 = IPC::Encoder::grow(a1, 8uLL, 8);
  if (v9 <= 7)
  {
    __break(0xC471u);
    JUMPOUT(0x19D6F7D08);
  }

  *v8 = v7;
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 96));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 100));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 104));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 108));
  if (*(a2 + 136))
  {
    v19 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v19);
    if ((*(a2 + 136) & 1) == 0)
    {
LABEL_24:
      std::__throw_bad_optional_access[abi:sn200100]();
      goto LABEL_28;
    }

    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 112));
    IPC::VectorArgumentCoder<false,WebKit::HTTPBody::Element,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::HTTPBody::Element,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, (a2 + 120));
  }

  else
  {
    v20 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v20);
  }

  v10 = *(a2 + 144);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v10 == 0);
  if (v10)
  {
    v11 = *(a2 + 144);
    if (!v11)
    {
      __break(0xC471u);
      JUMPOUT(0x19D6F7D28);
    }

    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v11);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 152));
  }

  v12 = *(a2 + 160);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v12 == 0);
  if (v12)
  {
    v13 = *(a2 + 160);
    if (v13)
    {
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v13);
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 168));
      goto LABEL_11;
    }

LABEL_28:
    __break(0xC471u);
    JUMPOUT(0x19D6F7CE8);
  }

LABEL_11:
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 176));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 184));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 192));
  IPC::ArgumentCoder<WTF::RefPtr<WebCore::SerializedScriptValue,WTF::RawPtrTraits<WebCore::SerializedScriptValue>,WTF::DefaultRefDerefTraits<WebCore::SerializedScriptValue>>,void>::encode<IPC::Encoder,WebCore::SerializedScriptValue>(a1, (a2 + 200));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 208));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 209));
  if ((*(a2 + 296) & 1) == 0)
  {
    v22 = 0;
    IPC::Encoder::operator<<<BOOL>(a1, &v22);
    goto LABEL_13;
  }

  v21 = 1;
  IPC::Encoder::operator<<<BOOL>(a1, &v21);
  if ((*(a2 + 296) & 1) == 0)
  {
    goto LABEL_24;
  }

  IPC::ArgumentCoder<WebCore::PolicyContainer,void>::encode(a1, a2 + 216);
LABEL_13:
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(a1, (a2 + 304));
  IPC::ArgumentCoder<WebCore::IntRect,void>::encode(a1, (a2 + 320));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 336));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 340));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 344));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 348));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 352));
  IPC::ArgumentCoder<WebCore::PathQuadCurveTo,void>::encode(a1, (a2 + 356));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 388));
  v14 = *(a2 + 388);
  if (v14)
  {
    v16 = *(a2 + 376);
    v17 = 8 * v14;
    do
    {
      v18 = *v16++;
      IPC::ArgumentCoder<WebKit::FrameState,void>::encode(a1, v18);
      v17 -= 8;
    }

    while (v17);
  }

  return IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 392);
}

atomic_uint *IPC::ArgumentCoder<WebKit::FrameState,void>::decode@<X0>(IPC::Decoder *a1@<X0>, unint64_t a2@<X8>)
{
  v5 = a1;
  IPC::Decoder::decode<WTF::String>(a1, &v268);
  IPC::Decoder::decode<WTF::String>(v5, &v266);
  IPC::Decoder::decode<WTF::String>(v5, &v264);
  IPC::Decoder::decode<WTF::AtomString>(v5, &v262);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(v5, v260);
  if ((v261 & 1) == 0)
  {
    v151 = *v5;
    v152 = *(v5 + 1);
    *v5 = 0;
    *(v5 + 1) = 0;
    v153 = *(v5 + 3);
    if (v153)
    {
      if (v152)
      {
        (*(*v153 + 16))(v153, v151);
      }
    }
  }

  IPC::Decoder::decode<std::optional<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v5, &v256);
  v7 = IPC::Decoder::decode<long long>(v5);
  v228 = v8;
  v9 = v7;
  v10 = IPC::Decoder::decode<long long>(v5);
  v227 = v11;
  v12 = v10;
  v217 = IPC::Decoder::decode<WebCore::IntPoint>(v5);
  v226 = v13;
  v14 = *(v5 + 1);
  v15 = *(v5 + 2);
  v16 = *v5;
  v216 = v12;
  if (v14 <= &v15[-*v5])
  {
    *v5 = 0;
    *(v5 + 1) = 0;
    v177 = *(v5 + 3);
    if (v177)
    {
      if (v14)
      {
        (*(*v177 + 16))(v177);
        v14 = *(v5 + 1);
      }
    }

    else
    {
      v14 = 0;
    }

LABEL_322:
    *v5 = 0;
    *(v5 + 1) = 0;
    v178 = *(v5 + 3);
    if (v178)
    {
      if (v14)
      {
        (*(*v178 + 16))(v178);
        v17 = 0;
        v16 = *v5;
        v14 = *(v5 + 1);
        goto LABEL_325;
      }
    }

    else
    {
      v14 = 0;
    }

    v16 = 0;
    v17 = 0;
    goto LABEL_325;
  }

  *(v5 + 2) = v15 + 1;
  if (!v15)
  {
    goto LABEL_322;
  }

  v17 = *v15;
  if (v17 < 2)
  {
    v18 = 1;
    goto LABEL_6;
  }

LABEL_325:
  *v5 = 0;
  *(v5 + 1) = 0;
  v179 = *(v5 + 3);
  if (!v179)
  {
    v16 = 0;
    v14 = 0;
LABEL_327:
    v18 = 0;
    goto LABEL_6;
  }

  if (!v14)
  {
    v16 = 0;
    goto LABEL_327;
  }

  (*(*v179 + 16))(v179, v16);
  v18 = 0;
  v16 = *v5;
  v14 = *(v5 + 1);
LABEL_6:
  v225 = v18;
  if (!v17)
  {
    LOBYTE(v18) = 0;
  }

  v215 = v18;
  v19 = ((*(v5 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  if (v14 < v19 - v16 || v14 - (v19 - v16) <= 3)
  {
    *v5 = 0;
    *(v5 + 1) = 0;
    v199 = *(v5 + 3);
    if (v199)
    {
      if (v14)
      {
        (*(*v199 + 16))(v199);
        v16 = *v5;
        v14 = *(v5 + 1);
        goto LABEL_381;
      }
    }

    else
    {
      v14 = 0;
    }

    v16 = 0;
    goto LABEL_381;
  }

  *(v5 + 2) = v19 + 1;
  if (v19)
  {
    v20 = *v19 | 0x100000000;
    goto LABEL_12;
  }

LABEL_381:
  *v5 = 0;
  *(v5 + 1) = 0;
  v200 = *(v5 + 3);
  if (!v200 || !v14)
  {
    v16 = 0;
    v224 = 0;
    v14 = 0;
    v21 = 0.0;
LABEL_383:
    *v5 = 0;
    *(v5 + 1) = 0;
    v201 = *(v5 + 3);
    if (v201)
    {
      if (v14)
      {
        (*(*v201 + 16))(v201, v16);
        v16 = *v5;
        v14 = *(v5 + 1);
LABEL_386:
        *v5 = 0;
        *(v5 + 1) = 0;
        v202 = *(v5 + 3);
        if (v202)
        {
          if (v14)
          {
            (*(*v202 + 16))(v202, v16);
            v16 = *v5;
            v14 = *(v5 + 1);
LABEL_389:
            *v5 = 0;
            *(v5 + 1) = 0;
            v203 = *(v5 + 3);
            if (v203 && v14)
            {
              (*(*v203 + 16))(v203, v16);
            }

            LOBYTE(v252) = 0;
            v255 = 0;
LABEL_47:
            v42 = *v5;
            v43 = *(v5 + 1);
            *v5 = 0;
            *(v5 + 1) = 0;
            v44 = *(v5 + 3);
            if (v44 && v43)
            {
              (*(*v44 + 16))(v44, v42);
            }

            goto LABEL_51;
          }
        }

        else
        {
          v14 = 0;
        }

        v16 = 0;
        goto LABEL_389;
      }
    }

    else
    {
      v14 = 0;
    }

    v16 = 0;
    goto LABEL_386;
  }

  (*(*v200 + 16))(v200, v16);
  v20 = 0;
  v16 = *v5;
  v14 = *(v5 + 1);
LABEL_12:
  v224 = v20;
  v21 = *&v20;
  v22 = *(v5 + 2);
  if (v14 <= &v22[-v16])
  {
    goto LABEL_383;
  }

  *(v5 + 2) = v22 + 1;
  if (!v22)
  {
    goto LABEL_386;
  }

  v23 = *v22;
  if (v23 >= 2)
  {
    goto LABEL_389;
  }

  if (!v23)
  {
    LOBYTE(v252) = 0;
    v254 = 0;
    v255 = 1;
    goto LABEL_51;
  }

  IPC::Decoder::decode<WTF::String>(v5, &v229);
  v24 = *(v5 + 1);
  v25 = ((*(v5 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v26 = *v5;
  v27 = v25 - *v5;
  v28 = v24 >= v27;
  v29 = v24 - v27;
  if (!v28 || v29 <= 7)
  {
    *v5 = 0;
    *(v5 + 1) = 0;
    v172 = *(v5 + 3);
    if (v172)
    {
      if (v24)
      {
        (*(*v172 + 16))(v172);
        v24 = *(v5 + 1);
      }
    }

    else
    {
      v24 = 0;
    }

    goto LABEL_315;
  }

  *(v5 + 2) = v25 + 1;
  if (!v25)
  {
LABEL_315:
    *v5 = 0;
    *(v5 + 1) = 0;
    v173 = *(v5 + 3);
    if (v173 && v24)
    {
      (*(*v173 + 16))(v173);
    }

    LOBYTE(v279) = 0;
    v281 = 0;
    goto LABEL_259;
  }

  v30 = *v25;
  v232 = 0;
  v233 = 0;
  if (v30 >= 0x4924)
  {
    while (1)
    {
      IPC::Decoder::decode<WebKit::HTTPBody::Element>(&v239, v5);
      v141 = v244;
      if (v244)
      {
        if (HIDWORD(v233) == v233)
        {
          WTF::Vector<WebKit::HTTPBody::Element,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::HTTPBody::Element>(&v232, &v239);
        }

        else
        {
          mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::HTTPBody::Element::FileData,WTF::String>,(mpark::detail::Trait)1>::move_constructor(v232 + 56 * HIDWORD(v233), &v239);
          ++HIDWORD(v233);
        }
      }

      if (v244 == 1)
      {
        mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::HTTPBody::Element::FileData,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(&v239, v26);
      }

      if ((v141 & 1) == 0)
      {
        break;
      }

      if (!--v30)
      {
        v142 = HIDWORD(v233);
        if (v233 > HIDWORD(v233))
        {
          v143 = v232;
          if (HIDWORD(v233))
          {
            v35 = 76695845;
            if (HIDWORD(v233) >= 0x4924925)
            {
              __break(0xC471u);
              goto LABEL_455;
            }

            v144 = 56 * HIDWORD(v233);
            v145 = WTF::fastMalloc((HIDWORD(v233) << 6), (56 * HIDWORD(v233)));
            LODWORD(v233) = v144 / 0x38;
            v232 = v145;
            if (v145 != v143)
            {
              WTF::VectorMover<false,WebKit::HTTPBody::Element>::move(v143, v143 + 56 * v142, v145);
            }
          }

          if (v143)
          {
            if (v232 == v143)
            {
              v232 = 0;
              LODWORD(v233) = 0;
            }

            WTF::fastFree(v143, v26);
          }
        }

        goto LABEL_31;
      }
    }
  }

  else
  {
    if (!v30)
    {
LABEL_31:
      v279 = v232;
      v33 = v233;
      v232 = 0;
      v233 = 0;
      v280 = v33;
      v281 = 1;
      WTF::Vector<WebKit::HTTPBody::Element,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v232, v26);
      goto LABEL_32;
    }

    v31 = WTF::fastMalloc((v30 << 6), (56 * v30));
    LODWORD(v233) = 56 * v30 / 0x38u;
    v232 = v31;
    while (1)
    {
      IPC::Decoder::decode<WebKit::HTTPBody::Element>(&v239, v5);
      v32 = v244;
      if (v244)
      {
        if (HIDWORD(v233) == v233)
        {
          WTF::Vector<WebKit::HTTPBody::Element,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::HTTPBody::Element>(&v232, &v239);
        }

        else
        {
          mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::HTTPBody::Element::FileData,WTF::String>,(mpark::detail::Trait)1>::move_constructor(v232 + 56 * HIDWORD(v233), &v239);
          ++HIDWORD(v233);
        }
      }

      if (v244 == 1)
      {
        mpark::detail::move_constructor<mpark::detail::traits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WebKit::HTTPBody::Element::FileData,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(&v239, v26);
      }

      if ((v32 & 1) == 0)
      {
        break;
      }

      if (!--v30)
      {
        goto LABEL_31;
      }
    }
  }

  LOBYTE(v279) = 0;
  v281 = 0;
  WTF::Vector<WebKit::HTTPBody::Element,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v232, v26);
LABEL_259:
  v34 = *v5;
  v146 = *(v5 + 1);
  *v5 = 0;
  *(v5 + 1) = 0;
  v147 = *(v5 + 3);
  if (v147 && v146)
  {
    (*(*v147 + 16))(v147, v34);
  }

LABEL_32:
  if (*v5)
  {
    v35 = v230;
    if ((v230 & 1) == 0)
    {
      goto LABEL_455;
    }

    v36 = v229;
    v229 = 0;
    v239 = v36;
    v35 = v281;
    if ((v281 & 1) == 0)
    {
      goto LABEL_455;
    }

    v240 = v279;
    v37 = v280;
    v279 = 0;
    v280 = 0;
    v241 = v37;
    std::optional<WebKit::HTTPBody>::optional[abi:sn200100]<WebKit::HTTPBody,0>(&v270, &v239);
    WTF::Vector<WebKit::HTTPBody::Element,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v240, v38);
    v39 = v239;
    v239 = 0;
    if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v39, v34);
    }
  }

  else
  {
    LOBYTE(v270) = 0;
    v273 = 0;
  }

  if (v281 == 1)
  {
    WTF::Vector<WebKit::HTTPBody::Element,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v279, v34);
  }

  if (v230 == 1)
  {
    v40 = v229;
    v229 = 0;
    if (v40)
    {
      if (atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v40, v34);
      }
    }
  }

  if (v273 & 1) != 0 || (v148 = *v5, v149 = *(v5 + 1), *v5 = 0, *(v5 + 1) = 0, (v150 = *(v5 + 3)) != 0) && v149 && ((*(*v150 + 16))(v150, v148), (v273))
  {
    std::optional<WebKit::HTTPBody>::optional[abi:sn200100]<WebKit::HTTPBody,0>(&v252, &v270);
    v255 = 1;
    if (v273)
    {
      WTF::Vector<WebKit::HTTPBody::Element,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v271, v41);
      v161 = v270;
      v270 = 0;
      if (v161)
      {
        if (atomic_fetch_add_explicit(v161, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v161, v160);
        }
      }
    }
  }

  else
  {
    LOBYTE(v252) = 0;
    v255 = 0;
  }

  if ((v255 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_51:
  v45 = *(v5 + 1);
  v46 = *(v5 + 2);
  v47 = *v5;
  if (v45 <= &v46[-*v5])
  {
    *v5 = 0;
    *(v5 + 1) = 0;
    v180 = *(v5 + 3);
    if (v180)
    {
      if (v45)
      {
        (*(*v180 + 16))(v180);
        v45 = *(v5 + 1);
      }
    }

    else
    {
      v45 = 0;
    }

    goto LABEL_330;
  }

  *(v5 + 2) = v46 + 1;
  if (!v46)
  {
LABEL_330:
    *v5 = 0;
    *(v5 + 1) = 0;
    v181 = *(v5 + 3);
    if (v181)
    {
      if (v45)
      {
        (*(*v181 + 16))(v181);
        v47 = *v5;
        v45 = *(v5 + 1);
        goto LABEL_333;
      }
    }

    else
    {
      v45 = 0;
    }

    v47 = 0;
LABEL_333:
    *v5 = 0;
    *(v5 + 1) = 0;
    v137 = *(v5 + 3);
    if (!v137 || !v45)
    {
      goto LABEL_238;
    }

    goto LABEL_289;
  }

  v48 = *v46;
  if (v48 >= 2)
  {
    goto LABEL_333;
  }

  if (v48)
  {
    v214 = 0uLL;
    v205 = 0;
LABEL_58:
    v223 = 1;
    goto LABEL_59;
  }

  IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode(v5, &v239);
  if (v241)
  {
    v205 = v240;
    *&v214 = v239 & 0xFFFFFFFFFFFFFF00;
    *(&v214 + 1) = v239;
    goto LABEL_58;
  }

  v47 = *v5;
  v136 = *(v5 + 1);
  *v5 = 0;
  *(v5 + 1) = 0;
  v137 = *(v5 + 3);
  if (v137 && v136)
  {
LABEL_289:
    (*(*v137 + 16))(v137, v47);
  }

LABEL_238:
  v138 = *v5;
  v139 = *(v5 + 1);
  *v5 = 0;
  *(v5 + 1) = 0;
  v140 = *(v5 + 3);
  if (v140 && v139)
  {
    (*(*v140 + 16))(v140, v138);
  }

  v223 = 0;
  v214 = 0uLL;
LABEL_59:
  v49 = *(v5 + 1);
  v50 = *(v5 + 2);
  v51 = *v5;
  if (v49 <= &v50[-*v5])
  {
    *v5 = 0;
    *(v5 + 1) = 0;
    v182 = *(v5 + 3);
    if (v182)
    {
      if (v49)
      {
        (*(*v182 + 16))(v182);
        v49 = *(v5 + 1);
      }
    }

    else
    {
      v49 = 0;
    }

    goto LABEL_338;
  }

  *(v5 + 2) = v50 + 1;
  if (!v50)
  {
LABEL_338:
    *v5 = 0;
    *(v5 + 1) = 0;
    v183 = *(v5 + 3);
    if (v183)
    {
      if (v49)
      {
        (*(*v183 + 16))(v183);
        v51 = *v5;
        v49 = *(v5 + 1);
        goto LABEL_341;
      }
    }

    else
    {
      v49 = 0;
    }

    v51 = 0;
LABEL_341:
    *v5 = 0;
    *(v5 + 1) = 0;
    v155 = *(v5 + 3);
    if (v155 && v49)
    {
LABEL_296:
      (*(*v155 + 16))(v155, v51);
    }

LABEL_270:
    v156 = *v5;
    v56 = *(v5 + 1);
    *v5 = 0;
    *(v5 + 1) = 0;
    v157 = *(v5 + 3);
    if (v157)
    {
      if (v56)
      {
        (*(*v157 + 16))(v157, v156);
        v222 = 0;
        v213 = 0;
        goto LABEL_66;
      }

      v222 = 0;
      v213 = 0;
    }

    else
    {
      v222 = 0;
      v213 = 0;
      v56 = 0;
    }

    v35 = 0;
    goto LABEL_273;
  }

  v52 = *v50;
  if (v52 >= 2)
  {
    goto LABEL_341;
  }

  if (!v52)
  {
    IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode(v5, &v239);
    if (v241)
    {
      v54 = v240;
      v53 = v239 >> 8;
      v222 = 1;
      v213 = v239;
      goto LABEL_66;
    }

    v51 = *v5;
    v154 = *(v5 + 1);
    *v5 = 0;
    *(v5 + 1) = 0;
    v155 = *(v5 + 3);
    if (v155 && v154)
    {
      goto LABEL_296;
    }

    goto LABEL_270;
  }

  v213 = 0;
  v53 = 0;
  v54 = 0;
  v222 = 1;
LABEL_66:
  v55 = *v5;
  v56 = *(v5 + 1);
  v57 = *(v5 + 2);
  v206 = v54;
  v210 = v53;
  if (v56 <= &v57[-*v5])
  {
    v35 = 0;
    v204 = *(v5 + 3);
    *v5 = 0;
    *(v5 + 1) = 0;
    if (!v204 || !v56)
    {
      goto LABEL_456;
    }

    (*(*v204 + 16))(v204);
    v35 = *v5;
    v56 = *(v5 + 1);
    goto LABEL_273;
  }

  *(v5 + 2) = v57 + 1;
  if (!v57)
  {
    v35 = v55;
    goto LABEL_273;
  }

  v58 = *v57;
  if (v58 >= 2)
  {
    goto LABEL_276;
  }

  for (i = 1; ; i = 0)
  {
    v221 = i;
    v60 = v58 ? i : 0;
    IPC::Decoder::decode<WTF::String>(v5, &v250);
    ShouldOpenExternalURLs = IPC::Decoder::decode<WebCore::ShouldOpenExternalURLsPolicy>(v5);
    IPC::Decoder::decode<WTF::RefPtr<WebCore::SerializedScriptValue,WTF::RawPtrTraits<WebCore::SerializedScriptValue>,WTF::DefaultRefDerefTraits<WebCore::SerializedScriptValue>>>(v5, &v248);
    v61 = *(v5 + 1);
    v62 = *(v5 + 2);
    v63 = *v5;
    v212 = v60;
    if (v61 <= &v62[-*v5])
    {
      *v5 = 0;
      *(v5 + 1) = 0;
      v184 = *(v5 + 3);
      if (v184)
      {
        if (v61)
        {
          (*(*v184 + 16))(v184);
          v61 = *(v5 + 1);
        }
      }

      else
      {
        v61 = 0;
      }
    }

    else
    {
      *(v5 + 2) = v62 + 1;
      if (v62)
      {
        v64 = *v62;
        if (v64 < 2)
        {
          v65 = 1;
          goto LABEL_77;
        }

        goto LABEL_349;
      }
    }

    *v5 = 0;
    *(v5 + 1) = 0;
    v185 = *(v5 + 3);
    if (!v185)
    {
      v61 = 0;
LABEL_348:
      v63 = 0;
      v64 = 0;
      goto LABEL_349;
    }

    if (!v61)
    {
      goto LABEL_348;
    }

    (*(*v185 + 16))(v185);
    v64 = 0;
    v63 = *v5;
    v61 = *(v5 + 1);
LABEL_349:
    *v5 = 0;
    *(v5 + 1) = 0;
    v186 = *(v5 + 3);
    if (!v186)
    {
      v211 = 0;
      v219 = 0;
      v61 = 0;
LABEL_351:
      v63 = 0;
      goto LABEL_352;
    }

    if (!v61)
    {
      v211 = 0;
      v219 = 0;
      goto LABEL_351;
    }

    (*(*v186 + 16))(v186, v63);
    v65 = 0;
    v63 = *v5;
    v61 = *(v5 + 1);
LABEL_77:
    v219 = v65;
    if (v64)
    {
      v66 = v65;
    }

    else
    {
      v66 = 0;
    }

    v67 = *(v5 + 2);
    v211 = v66;
    if (v61 > &v67[-v63])
    {
      *(v5 + 2) = v67 + 1;
      if (v67)
      {
        v68 = *v67;
        if (v68 < 2)
        {
          v69 = 1;
          goto LABEL_84;
        }

        goto LABEL_358;
      }

      goto LABEL_355;
    }

LABEL_352:
    *v5 = 0;
    *(v5 + 1) = 0;
    v187 = *(v5 + 3);
    if (v187)
    {
      if (v61)
      {
        (*(*v187 + 16))(v187, v63);
        v63 = *v5;
        v61 = *(v5 + 1);
        goto LABEL_355;
      }
    }

    else
    {
      v61 = 0;
    }

    v63 = 0;
LABEL_355:
    *v5 = 0;
    *(v5 + 1) = 0;
    v188 = *(v5 + 3);
    if (v188)
    {
      if (v61)
      {
        (*(*v188 + 16))(v188, v63);
        v68 = 0;
        v63 = *v5;
        v61 = *(v5 + 1);
        goto LABEL_358;
      }
    }

    else
    {
      v61 = 0;
    }

    v63 = 0;
    v68 = 0;
LABEL_358:
    *v5 = 0;
    *(v5 + 1) = 0;
    v189 = *(v5 + 3);
    if (!v189 || !v61)
    {
      v63 = 0;
      v70 = 0;
      v218 = 0;
      v61 = 0;
LABEL_360:
      *v5 = 0;
      *(v5 + 1) = 0;
      v190 = *(v5 + 3);
      if (v190)
      {
        if (v61)
        {
          (*(*v190 + 16))(v190, v63);
          v63 = *v5;
          v61 = *(v5 + 1);
LABEL_363:
          *v5 = 0;
          *(v5 + 1) = 0;
          v191 = *(v5 + 3);
          if (v191)
          {
            if (v61)
            {
              (*(*v191 + 16))(v191, v63);
              v63 = *v5;
              v61 = *(v5 + 1);
              goto LABEL_366;
            }
          }

          else
          {
            v61 = 0;
          }

          v63 = 0;
LABEL_366:
          *v5 = 0;
          *(v5 + 1) = 0;
          v192 = *(v5 + 3);
          if (v192 && v61)
          {
            (*(*v192 + 16))(v192, v63);
          }

LABEL_367:
          LOBYTE(v239) = 0;
          v247 = 0;
LABEL_368:
          v193 = *v5;
          v194 = *(v5 + 1);
          *v5 = 0;
          *(v5 + 1) = 0;
          v195 = *(v5 + 3);
          if (v195 && v194)
          {
            (*(*v195 + 16))(v195, v193);
          }

          goto LABEL_108;
        }
      }

      else
      {
        v61 = 0;
      }

      v63 = 0;
      goto LABEL_363;
    }

    (*(*v189 + 16))(v189, v63);
    v69 = 0;
    v63 = *v5;
    v61 = *(v5 + 1);
LABEL_84:
    v218 = v69;
    if (v68)
    {
      v70 = v69;
    }

    else
    {
      v70 = 0;
    }

    v71 = *(v5 + 2);
    if (v61 <= &v71[-v63])
    {
      goto LABEL_360;
    }

    *(v5 + 2) = v71 + 1;
    if (!v71)
    {
      goto LABEL_363;
    }

    v72 = *v71;
    if (v72 >= 2)
    {
      goto LABEL_366;
    }

    if (!v72)
    {
      LOBYTE(v239) = 0;
      v246 = 0;
      v247 = 1;
      goto LABEL_108;
    }

    IPC::Decoder::decode<WebCore::PolicyContainer>(v5, &v270);
    if (v278 != 1)
    {
      goto LABEL_367;
    }

    std::optional<WebCore::PolicyContainer>::optional[abi:sn200100]<WebCore::PolicyContainer,0>(&v239, &v270);
    v247 = 1;
    if (v278)
    {
      v74 = v277;
      v277 = 0;
      if (v74 && atomic_fetch_add_explicit(v74, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v74, v73);
      }

      v75 = v276;
      v276 = 0;
      if (v75 && atomic_fetch_add_explicit(v75, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v75, v73);
      }

      v76 = v275;
      v275 = 0;
      if (v76 && atomic_fetch_add_explicit(v76, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v76, v73);
      }

      v77 = v274;
      v274 = 0;
      if (v77 && atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v77, v73);
      }

      WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v270, v73);
      if ((v247 & 1) == 0)
      {
        goto LABEL_368;
      }
    }

LABEL_108:
    v78 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(v5);
    v80 = v79;
    if ((v79 & 1) == 0)
    {
      v174 = *v5;
      v175 = *(v5 + 1);
      *v5 = 0;
      *(v5 + 1) = 0;
      v176 = *(v5 + 3);
      if (v176)
      {
        if (v175)
        {
          (*(*v176 + 16))(v176, v174);
        }
      }
    }

    v81 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(v5);
    v83 = v82;
    if ((v82 & 1) == 0)
    {
      v164 = *v5;
      v165 = *(v5 + 1);
      *v5 = 0;
      *(v5 + 1) = 0;
      v166 = *(v5 + 3);
      if (v166)
      {
        if (v165)
        {
          (*(*v166 + 16))(v166, v164);
        }
      }
    }

    v84 = *v5;
    if (*v5)
    {
      if ((v80 & 1) == 0 || (v83 & 1) == 0)
      {
        goto LABEL_455;
      }

      v3 = *(&v78 + 1);
      v85 = *&v78;
      v4 = *(&v81 + 1);
      v2 = *&v81;
    }

    else
    {
      v162 = *(v5 + 1);
      *v5 = 0;
      *(v5 + 1) = 0;
      v85 = 0.0;
      v163 = *(v5 + 3);
      if (v163 && v162)
      {
        (*(*v163 + 16))(v163, 0);
      }
    }

    IPC::Decoder::decode<WebCore::IntRect>(v5, v237);
    v86 = IPC::Decoder::decode<WebCore::FloatPoint>(v5);
    v88 = v87;
    v89 = IPC::Decoder::decode<WebCore::IntSize>(v5);
    v91 = v90;
    v92 = *(v5 + 1);
    v93 = *(v5 + 2);
    v94 = *v5;
    v209 = a2;
    v208 = v70;
    v207 = v89;
    if (v92 <= &v93[-*v5])
    {
      v95 = v9;
      *v5 = 0;
      *(v5 + 1) = 0;
      v196 = *(v5 + 3);
      if (v196)
      {
        if (v92)
        {
          (*(*v196 + 16))(v196);
          v92 = *(v5 + 1);
        }
      }

      else
      {
        v92 = 0;
      }
    }

    else
    {
      *(v5 + 2) = v93 + 1;
      v95 = v9;
      if (v93)
      {
        v96 = *v93;
        if (v96 < 2)
        {
          v9 = 1;
          goto LABEL_118;
        }

        goto LABEL_376;
      }
    }

    *v5 = 0;
    *(v5 + 1) = 0;
    v197 = *(v5 + 3);
    if (!v197)
    {
      v92 = 0;
LABEL_375:
      v94 = 0;
      v96 = 0;
      goto LABEL_376;
    }

    if (!v92)
    {
      goto LABEL_375;
    }

    (*(*v197 + 16))(v197);
    v96 = 0;
    v94 = *v5;
    v92 = *(v5 + 1);
LABEL_376:
    *v5 = 0;
    *(v5 + 1) = 0;
    v198 = *(v5 + 3);
    if (v198 && v92)
    {
      (*(*v198 + 16))(v198, v94);
    }

    v9 = 0;
LABEL_118:
    if (v96)
    {
      a2 = v9;
    }

    else
    {
      a2 = 0;
    }

    IPC::ArgumentCoder<WebCore::RectEdges<float>,void>::decode(v5, v235);
    v97 = v236;
    v98 = *(v5 + 1);
    if ((v236 & 1) == 0)
    {
      v134 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v135 = *(v5 + 3);
      if (v135)
      {
        if (v98)
        {
          (*(*v135 + 16))(v135, v134);
          v98 = *(v5 + 1);
        }
      }

      else
      {
        v98 = 0;
      }
    }

    v99 = *v5;
    v100 = ((*(v5 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    v101 = v100 - *v5;
    v28 = v98 >= v101;
    v102 = v98 - v101;
    if (!v28 || v102 <= 7)
    {
      *v5 = 0;
      *(v5 + 1) = 0;
      v167 = *(v5 + 3);
      if (v167)
      {
        if (v98)
        {
          (*(*v167 + 16))(v167);
          v98 = *(v5 + 1);
        }
      }

      else
      {
        v98 = 0;
      }

LABEL_308:
      *v5 = 0;
      *(v5 + 1) = 0;
      v168 = *(v5 + 3);
      if (v168 && v98)
      {
        (*(*v168 + 16))(v168);
      }

      LOBYTE(v232) = 0;
      v234 = 0;
LABEL_310:
      v169 = *v5;
      v170 = *(v5 + 1);
      *v5 = 0;
      *(v5 + 1) = 0;
      v171 = *(v5 + 3);
      if (v171 && v170)
      {
        (*(*v171 + 16))(v171, v169);
      }

      goto LABEL_130;
    }

    *(v5 + 2) = v100 + 1;
    if (!v100)
    {
      goto LABEL_308;
    }

    v103 = *v100;
    v270 = 0;
    v271 = 0;
    if (v103 >= 0x20000)
    {
      while (1)
      {
        IPC::Decoder::decode<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>>(v5, &v279);
        if ((v280 & 1) == 0)
        {
LABEL_234:
          LOBYTE(v232) = 0;
          v234 = 0;
          goto LABEL_129;
        }

        v125 = HIDWORD(v271);
        if (HIDWORD(v271) != v271)
        {
          break;
        }

        v126 = WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v270, HIDWORD(v271) + 1, &v279);
        v128 = HIDWORD(v271);
        v129 = HIDWORD(v271) + 1;
        v130 = v270;
        v131 = *v126;
        *v126 = 0;
        *(v130 + v128) = v131;
        HIDWORD(v271) = v129;
        if (v280)
        {
          goto LABEL_230;
        }

LABEL_232:
        if (!--v103)
        {
          WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v270, HIDWORD(v271), v127);
          goto LABEL_128;
        }
      }

      v132 = v279;
      v279 = 0;
      *(v270 + HIDWORD(v271)) = v132;
      HIDWORD(v271) = v125 + 1;
LABEL_230:
      v133 = v279;
      v279 = 0;
      if (v133)
      {
        WTF::RefCounted<WebKit::FrameState>::deref(v133);
      }

      goto LABEL_232;
    }

    if (v103)
    {
      v112 = WTF::fastMalloc(v100, (8 * v103));
      LODWORD(v271) = v103;
      v270 = v112;
      while (1)
      {
        IPC::Decoder::decode<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>>(v5, &v279);
        if ((v280 & 1) == 0)
        {
          goto LABEL_234;
        }

        v113 = HIDWORD(v271);
        if (HIDWORD(v271) != v271)
        {
          break;
        }

        v114 = WTF::Vector<WTF::Ref<WebCore::SecurityOrigin,WTF::RawPtrTraits<WebCore::SecurityOrigin>,WTF::DefaultRefDerefTraits<WebCore::SecurityOrigin>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v270, HIDWORD(v271) + 1, &v279);
        v115 = HIDWORD(v271);
        v116 = HIDWORD(v271) + 1;
        v117 = v270;
        v118 = *v114;
        *v114 = 0;
        *(v117 + v115) = v118;
        HIDWORD(v271) = v116;
        if (v280)
        {
          goto LABEL_209;
        }

LABEL_211:
        if (!--v103)
        {
          goto LABEL_128;
        }
      }

      v119 = v279;
      v279 = 0;
      *(v270 + HIDWORD(v271)) = v119;
      HIDWORD(v271) = v113 + 1;
LABEL_209:
      v120 = v279;
      v279 = 0;
      if (v120)
      {
        WTF::RefCounted<WebKit::FrameState>::deref(v120);
      }

      goto LABEL_211;
    }

LABEL_128:
    v232 = v270;
    v104 = v271;
    v270 = 0;
    v271 = 0;
    v233 = v104;
    v234 = 1;
LABEL_129:
    WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v270, v99);
    if ((v234 & 1) == 0)
    {
      goto LABEL_310;
    }

LABEL_130:
    result = IPC::Decoder::decode<WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&v229, v5);
    v107 = *v5;
    if (!*v5)
    {
      v111 = v209;
      *v209 = 0;
      goto LABEL_167;
    }

    v35 = v231;
    if (v231)
    {
      v35 = v269;
      if (v269)
      {
        v35 = v267;
        if (v267)
        {
          v35 = v265;
          if (v265)
          {
            v35 = v263;
            if (v263)
            {
              v35 = v261;
              if (v261)
              {
                v35 = v259;
                if (v259)
                {
                  v35 = v228;
                  if (v228)
                  {
                    v35 = v227;
                    if (v227)
                    {
                      v35 = v226;
                      if (v226)
                      {
                        v35 = v225;
                        if (v225)
                        {
                          v35 = v224;
                          if ((v224 & 0x100000000) != 0)
                          {
                            v35 = v255;
                            if (v255)
                            {
                              v35 = v223;
                              if (v223)
                              {
                                v35 = v222;
                                if (v222)
                                {
                                  v35 = v221;
                                  if (v221)
                                  {
                                    v35 = v251;
                                    if (v251)
                                    {
                                      v5 = ShouldOpenExternalURLs;
                                      v35 = ShouldOpenExternalURLs;
                                      if (ShouldOpenExternalURLs > 0xFFu)
                                      {
                                        v35 = v249;
                                        if (v249)
                                        {
                                          v35 = v219;
                                          if (v219)
                                          {
                                            v35 = v218;
                                            if (v218)
                                            {
                                              v35 = v247;
                                              if (v247)
                                              {
                                                if (v84)
                                                {
                                                  v35 = v238;
                                                  if (v238 & 1) != 0 && (v88 & 1) != 0 && (v91 & 1) != 0 && (v9 & 1) != 0 && (v97)
                                                  {
                                                    v35 = v234;
                                                    if (v234)
                                                    {
                                                      break;
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

LABEL_455:
    __break(1u);
LABEL_456:
    v56 = v35;
LABEL_273:
    *v5 = 0;
    *(v5 + 1) = 0;
    v158 = *(v5 + 3);
    if (v158)
    {
      if (v56)
      {
        (*(*v158 + 16))(v158, v35);
        v58 = 0;
        v55 = *v5;
        v56 = *(v5 + 1);
        goto LABEL_276;
      }
    }

    else
    {
      v56 = 0;
    }

    v55 = 0;
    v58 = 0;
LABEL_276:
    *v5 = 0;
    *(v5 + 1) = 0;
    v159 = *(v5 + 3);
    if (v159 && v56)
    {
      (*(*v159 + 16))(v159, v55);
    }
  }

  v108 = WTF::fastMalloc(v234, 0x198);
  v109 = v214 | BYTE8(v214);
  if (v214 == 0)
  {
    LOBYTE(v270) = 0;
  }

  else
  {
    v270 = (v214 | *(&v214 + 1));
    v271 = v205;
    v109 = 1;
  }

  v272 = v109;
  v110 = v213 | (v210 << 8);
  if (v110)
  {
    v279 = (v213 | (v210 << 8));
    v280 = v206;
    LOBYTE(v110) = 1;
  }

  else
  {
    LOBYTE(v279) = 0;
  }

  v281 = v110;
  result = WebKit::FrameState::FrameState(v108, &v268, &v266, &v264, &v262, v260[0], v260[1], &v256, v21, v85, v3, v2, v4, *&v86, *(&v86 + 1), v95, v216, v217, v215, &v252, &v270, &v279, v212, &v250, ShouldOpenExternalURLs, &v248, v211, v208, &v239, v237[0], v237[1], v207, a2, v235[0], v235[1], v235[2], v235[3], &v232, &v229);
  v111 = v209;
  *v209 = result;
  LOBYTE(v107) = 1;
LABEL_167:
  v111[8] = v107;
  if (v231 == 1)
  {
    result = WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v229, v106);
  }

  if (v234 == 1)
  {
    result = WTF::Vector<WTF::Ref<WebKit::FrameState,WTF::RawPtrTraits<WebKit::FrameState>,WTF::DefaultRefDerefTraits<WebKit::FrameState>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v232, v106);
  }

  if (v247 == 1 && v246 == 1)
  {
    v121 = v245;
    v245 = 0;
    if (v121 && atomic_fetch_add_explicit(v121, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v121, v106);
    }

    v122 = v244;
    v244 = 0;
    if (v122 && atomic_fetch_add_explicit(v122, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v122, v106);
    }

    v123 = v243;
    v243 = 0;
    if (v123 && atomic_fetch_add_explicit(v123, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v123, v106);
    }

    v124 = v242;
    v242 = 0;
    if (v124 && atomic_fetch_add_explicit(v124, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v124, v106);
    }

    result = WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v239, v106);
  }

  if (v249 == 1)
  {
    result = v248;
    v248 = 0;
    if (result)
    {
      result = WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(result);
    }
  }

  if (v251 == 1)
  {
    result = v250;
    v250 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v106);
      }
    }
  }

  if (v255 == 1 && v254 == 1)
  {
    WTF::Vector<WebKit::HTTPBody::Element,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v253, v106);
    result = v252;
    v252 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v106);
      }
    }
  }

  if (v259 == 1 && v258 == 1)
  {
    result = v256;
    if (v256)
    {
      v256 = 0;
      v257 = 0;
      result = WTF::fastFree(result, v106);
    }
  }

  if (v263 == 1)
  {
    result = v262;
    v262 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v106);
      }
    }
  }

  if (v265 == 1)
  {
    result = v264;
    v264 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v106);
      }
    }
  }

  if (v267 == 1)
  {
    result = v266;
    v266 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v106);
      }
    }
  }

  if (v269 == 1)
  {
    result = v268;
    v268 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v106);
      }
    }
  }

  return result;
}