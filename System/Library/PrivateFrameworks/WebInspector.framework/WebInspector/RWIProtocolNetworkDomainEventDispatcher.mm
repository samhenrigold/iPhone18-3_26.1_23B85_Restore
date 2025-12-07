@interface RWIProtocolNetworkDomainEventDispatcher
- (RWIProtocolNetworkDomainEventDispatcher)initWithController:(AugmentableInspectorController *)controller;
- (void)dataReceivedWithRequestId:(id)id timestamp:(double)timestamp dataLength:(int)length encodedDataLength:(int)dataLength;
- (void)loadingFailedWithRequestId:(id)id timestamp:(double)timestamp errorText:(id)text canceled:(BOOL *)canceled;
- (void)loadingFinishedWithRequestId:(id)id timestamp:(double)timestamp sourceMapURL:(id *)l metrics:(id *)metrics;
- (void)requestInterceptedWithRequestId:(id)id request:(id)request;
- (void)requestServedFromMemoryCacheWithRequestId:(id)id frameId:(id)frameId loaderId:(id)loaderId documentURL:(id)l timestamp:(double)timestamp initiator:(id)initiator resource:(id)resource;
- (void)requestWillBeSentWithRequestId:(id)id frameId:(id)frameId loaderId:(id)loaderId documentURL:(id)l request:(id)request timestamp:(double)timestamp walltime:(double)walltime initiator:(id)self0 redirectResponse:(id *)self1 type:(int64_t *)self2 targetId:(id *)self3;
- (void)responseInterceptedWithRequestId:(id)id response:(id)response;
- (void)responseReceivedWithRequestId:(id)id frameId:(id)frameId loaderId:(id)loaderId timestamp:(double)timestamp type:(int64_t)type response:(id)response;
- (void)webSocketClosedWithRequestId:(id)id timestamp:(double)timestamp;
- (void)webSocketCreatedWithRequestId:(id)id url:(id)url;
- (void)webSocketFrameErrorWithRequestId:(id)id timestamp:(double)timestamp errorMessage:(id)message;
- (void)webSocketFrameReceivedWithRequestId:(id)id timestamp:(double)timestamp response:(id)response;
- (void)webSocketFrameSentWithRequestId:(id)id timestamp:(double)timestamp response:(id)response;
- (void)webSocketHandshakeResponseReceivedWithRequestId:(id)id timestamp:(double)timestamp response:(id)response;
- (void)webSocketWillSendHandshakeRequestWithRequestId:(id)id timestamp:(double)timestamp walltime:(double)walltime request:(id)request;
@end

@implementation RWIProtocolNetworkDomainEventDispatcher

- (RWIProtocolNetworkDomainEventDispatcher)initWithController:(AugmentableInspectorController *)controller
{
  v5.receiver = self;
  v5.super_class = RWIProtocolNetworkDomainEventDispatcher;
  result = [(RWIProtocolNetworkDomainEventDispatcher *)&v5 init];
  if (result)
  {
    result->_controller = controller;
  }

  return result;
}

- (void)requestWillBeSentWithRequestId:(id)id frameId:(id)frameId loaderId:(id)loaderId documentURL:(id)l request:(id)request timestamp:(double)timestamp walltime:(double)walltime initiator:(id)self0 redirectResponse:(id *)self1 type:(int64_t *)self2 targetId:(id *)self3
{
  v21 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v22 = v21;
  if (id)
  {
    if (frameId)
    {
LABEL_3:
      if (!loaderId)
      {
        goto LABEL_4;
      }

LABEL_8:
      if (l)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v98 = @"requestId";
    v21 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
    if (frameId)
    {
      goto LABEL_3;
    }
  }

  v21 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"frameId"}];
  if (loaderId)
  {
    goto LABEL_8;
  }

LABEL_4:
  v21 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"loaderId"}];
  if (!l)
  {
LABEL_9:
    v21 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required parameter '%@' cannot be nil", @"documentURL"}];
  }

LABEL_10:
  if (!request)
  {
    v98 = @"request";
    v21 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  if (!initiator)
  {
    v98 = @"initiator";
    v21 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  if (response && !*response)
  {
    v98 = @"redirectResponse";
    v21 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"optional parameter '%@' cannot be nil"];
  }

  if (targetId && !*targetId)
  {
    v98 = @"targetId";
    v21 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"optional parameter '%@' cannot be nil"];
  }

  WTF::JSONImpl::Object::create(&v113, v21);
  v23 = v113;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v112 = v114[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v111 = v114[0];
  WTF::JSONImpl::ObjectBase::setString(v23, &v112, &v111);
  v24 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v111);
  WTF::JSONImpl::Object::create(&v112, v24);
  v25 = v112;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v110 = v114[0];
  MEMORY[0x2743DB520](&v109, id);
  WTF::JSONImpl::ObjectBase::setString(v25, &v110, &v109);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v109);
  v26 = v112;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v110 = v114[0];
  MEMORY[0x2743DB520](&v108, frameId);
  WTF::JSONImpl::ObjectBase::setString(v26, &v110, &v108);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v108);
  v27 = v112;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v110 = v114[0];
  MEMORY[0x2743DB520](&v107, loaderId);
  WTF::JSONImpl::ObjectBase::setString(v27, &v110, &v107);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v107);
  v28 = v112;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v110 = v114[0];
  MEMORY[0x2743DB520](&v106, l);
  WTF::JSONImpl::ObjectBase::setString(v28, &v110, &v106);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v106);
  v29 = v112;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v110 = v114[0];
  if (request)
  {
    objc_msgSend_toJSONObject(request);
    v30 = v104;
  }

  else
  {
    v30 = 0;
  }

  v104 = 0;
  v105 = v30;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v29 + 16), &v110, &v105, v114);
  if (v115 == 1)
  {
    v38 = *(v29 + 36);
    if (v38 == *(v29 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v29 + 24, &v110);
    }

    else
    {
      v39 = *(v29 + 24);
      v40 = v110;
      if (v110)
      {
        atomic_fetch_add_explicit(v110, 2u, memory_order_relaxed);
      }

      v41 = *(v29 + 36);
      *(v39 + 8 * v38) = v40;
      *(v29 + 36) = v41 + 1;
    }
  }

  v42 = v105;
  v105 = 0;
  if (v42)
  {
    Inspector::toJSONObjectArray(v42, v31, v32, v33, v34, v35, v36, v37, v98, v99);
  }

  v43 = v104;
  v104 = 0;
  if (v43)
  {
    if (LODWORD(v43->isa) == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --LODWORD(v43->isa);
    }
  }

  v44 = v110;
  v110 = 0;
  if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v44, v31);
  }

  v45 = v112;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v110 = v114[0];
  WTF::JSONImpl::ObjectBase::setDouble(v45, &v110, timestamp);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v110);
  v46 = v112;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v110 = v114[0];
  WTF::JSONImpl::ObjectBase::setDouble(v46, &v110, walltime);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v110);
  v47 = v112;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v110 = v114[0];
  if (initiator)
  {
    objc_msgSend_toJSONObject(initiator);
    v48 = v104;
  }

  else
  {
    v48 = 0;
  }

  v104 = 0;
  v105 = v48;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v47 + 16), &v110, &v105, v114);
  if (v115 == 1)
  {
    v56 = *(v47 + 36);
    if (v56 == *(v47 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v47 + 24, &v110);
    }

    else
    {
      v57 = *(v47 + 24);
      v58 = v110;
      if (v110)
      {
        atomic_fetch_add_explicit(v110, 2u, memory_order_relaxed);
      }

      v59 = *(v47 + 36);
      *(v57 + 8 * v56) = v58;
      *(v47 + 36) = v59 + 1;
    }
  }

  v60 = v105;
  v105 = 0;
  if (v60)
  {
    Inspector::toJSONObjectArray(v60, v49, v50, v51, v52, v53, v54, v55, v98, v99);
  }

  v61 = v104;
  v104 = 0;
  if (v61)
  {
    if (LODWORD(v61->isa) == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --LODWORD(v61->isa);
    }
  }

  v62 = v110;
  v110 = 0;
  if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v62, v49);
  }

  if (response)
  {
    v63 = v112;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v110 = v114[0];
    if (*response)
    {
      objc_msgSend_toJSONObject(*response);
      v64 = v104;
    }

    else
    {
      v64 = 0;
    }

    v104 = 0;
    v105 = v64;
    WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v63 + 16), &v110, &v105, v114);
    if (v115 == 1)
    {
      v72 = *(v63 + 36);
      if (v72 == *(v63 + 32))
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v63 + 24, &v110);
      }

      else
      {
        v73 = *(v63 + 24);
        v74 = v110;
        if (v110)
        {
          atomic_fetch_add_explicit(v110, 2u, memory_order_relaxed);
        }

        v75 = *(v63 + 36);
        *(v73 + 8 * v72) = v74;
        *(v63 + 36) = v75 + 1;
      }
    }

    v76 = v105;
    v105 = 0;
    if (v76)
    {
      Inspector::toJSONObjectArray(v76, v65, v66, v67, v68, v69, v70, v71, v98, v99);
    }

    v77 = v104;
    v104 = 0;
    if (v77)
    {
      if (LODWORD(v77->isa) == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --LODWORD(v77->isa);
      }
    }

    v78 = v110;
    v110 = 0;
    if (v78 && atomic_fetch_add_explicit(v78, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v78, v65);
    }
  }

  if (type)
  {
    v79 = v112;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v110 = v114[0];
    Inspector::toProtocolString();
    if (v103)
    {
      atomic_fetch_add_explicit(v103, 2u, memory_order_relaxed);
      MEMORY[0x2743DB4B0](&v104, v103);
      if (atomic_fetch_add_explicit(v103, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v103, v80);
      }
    }

    else
    {
      v104 = &stru_2882B1C88;
      v97 = &stru_2882B1C88;
    }

    MEMORY[0x2743DB520](&v105, v104);
    WTF::JSONImpl::ObjectBase::setString(v79, &v110, &v105);
    [RWIProtocolConsoleDomainEventDispatcher messagesClearedWithReason:?];
  }

  if (targetId)
  {
    v81 = v112;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v102 = v114[0];
    MEMORY[0x2743DB520](&v101, *targetId);
    WTF::JSONImpl::ObjectBase::setString(v81, &v102, &v101);
    ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v101);
  }

  v82 = v113;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v83 = v112;
  v112 = 0;
  v99 = v83;
  v100 = v114[0];
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v82 + 2, &v100, &v99, v114);
  if (v115 == 1)
  {
    v91 = *(v82 + 9);
    if (v91 == *(v82 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v82 + 24, &v100);
    }

    else
    {
      v92 = *(v82 + 3);
      v93 = v100;
      if (v100)
      {
        atomic_fetch_add_explicit(v100, 2u, memory_order_relaxed);
      }

      v94 = *(v82 + 9);
      *(v92 + 8 * v91) = v93;
      *(v82 + 9) = v94 + 1;
    }
  }

  v95 = v99;
  v99 = 0;
  if (v95)
  {
    Inspector::toJSONObjectArray(v95, v84, v85, v86, v87, v88, v89, v90, v98, v99);
  }

  v96 = v100;
  v100 = 0;
  if (v96 && atomic_fetch_add_explicit(v96, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v96, v84);
  }

  WTF::JSONImpl::Value::toJSONString(v114, v113);
  Inspector::FrontendRouter::sendEvent(v22, v114);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v114];
}

- (void)responseReceivedWithRequestId:(id)id frameId:(id)frameId loaderId:(id)loaderId timestamp:(double)timestamp type:(int64_t)type response:(id)response
{
  v13 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v14 = v13;
  v15 = MEMORY[0x277CBE660];
  if (id)
  {
    if (frameId)
    {
LABEL_3:
      if (!loaderId)
      {
        goto LABEL_4;
      }

LABEL_8:
      if (response)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v55 = @"requestId";
    v13 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
    if (frameId)
    {
      goto LABEL_3;
    }
  }

  v13 = [MEMORY[0x277CBEAD8] raise:*v15 format:{@"required parameter '%@' cannot be nil", @"frameId"}];
  if (loaderId)
  {
    goto LABEL_8;
  }

LABEL_4:
  v13 = [MEMORY[0x277CBEAD8] raise:*v15 format:{@"required parameter '%@' cannot be nil", @"loaderId"}];
  if (!response)
  {
LABEL_9:
    v13 = [MEMORY[0x277CBEAD8] raise:*v15 format:{@"required parameter '%@' cannot be nil", @"response"}];
  }

LABEL_10:
  WTF::JSONImpl::Object::create(&v68, v13);
  v16 = v68;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v67 = v69[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v66 = v69[0];
  WTF::JSONImpl::ObjectBase::setString(v16, &v67, &v66);
  v17 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v66);
  WTF::JSONImpl::Object::create(&v67, v17);
  v18 = v67;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v65 = v69[0];
  MEMORY[0x2743DB520](&v64, id);
  WTF::JSONImpl::ObjectBase::setString(v18, &v65, &v64);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v64);
  v19 = v67;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v65 = v69[0];
  MEMORY[0x2743DB520](&v63, frameId);
  WTF::JSONImpl::ObjectBase::setString(v19, &v65, &v63);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v63);
  v20 = v67;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v65 = v69[0];
  MEMORY[0x2743DB520](&v62, loaderId);
  WTF::JSONImpl::ObjectBase::setString(v20, &v65, &v62);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v62);
  v21 = v67;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v65 = v69[0];
  WTF::JSONImpl::ObjectBase::setDouble(v21, &v65, timestamp);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v65);
  v22 = v67;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v65 = v69[0];
  Inspector::toProtocolString();
  if (v59)
  {
    atomic_fetch_add_explicit(v59, 2u, memory_order_relaxed);
    MEMORY[0x2743DB4B0](&v60, v59);
    if (atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v59, v23);
    }
  }

  else
  {
    v60 = &stru_2882B1C88;
    v54 = &stru_2882B1C88;
  }

  MEMORY[0x2743DB520](&v61, v60);
  WTF::JSONImpl::ObjectBase::setString(v22, &v65, &v61);
  [RWIProtocolConsoleDomainEventDispatcher messagesClearedWithReason:?];
  v24 = v67;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v65 = v69[0];
  if (response)
  {
    objc_msgSend_toJSONObject(response);
    v25 = v56;
  }

  else
  {
    v25 = 0;
  }

  v57 = 0;
  v58 = v25;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v24 + 16), &v65, &v58, v69);
  if (v70 == 1)
  {
    v33 = *(v24 + 36);
    if (v33 == *(v24 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v24 + 24, &v65);
    }

    else
    {
      v34 = *(v24 + 24);
      v35 = v65;
      if (v65)
      {
        atomic_fetch_add_explicit(v65, 2u, memory_order_relaxed);
      }

      v36 = *(v24 + 36);
      *(v34 + 8 * v33) = v35;
      *(v24 + 36) = v36 + 1;
    }
  }

  v37 = v58;
  v58 = 0;
  if (v37)
  {
    Inspector::toJSONObjectArray(v37, v26, v27, v28, v29, v30, v31, v32, v55, 0);
  }

  if (v57)
  {
    if (*v57 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v57;
    }
  }

  v38 = v65;
  v65 = 0;
  if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v38, v26);
  }

  v39 = v68;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v65 = v69[0];
  v40 = v67;
  v67 = 0;
  v58 = v40;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v39 + 2, &v65, &v58, v69);
  if (v70 == 1)
  {
    v48 = *(v39 + 9);
    if (v48 == *(v39 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v39 + 24, &v65);
    }

    else
    {
      v49 = *(v39 + 3);
      v50 = v65;
      if (v65)
      {
        atomic_fetch_add_explicit(v65, 2u, memory_order_relaxed);
      }

      v51 = *(v39 + 9);
      *(v49 + 8 * v48) = v50;
      *(v39 + 9) = v51 + 1;
    }
  }

  v52 = v58;
  v58 = 0;
  if (v52)
  {
    Inspector::toJSONObjectArray(v52, v41, v42, v43, v44, v45, v46, v47, v55, 0);
  }

  v53 = v65;
  v65 = 0;
  if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v53, v41);
  }

  WTF::JSONImpl::Value::toJSONString(v69, v68);
  Inspector::FrontendRouter::sendEvent(v14, v69);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v69];
}

- (void)dataReceivedWithRequestId:(id)id timestamp:(double)timestamp dataLength:(int)length encodedDataLength:(int)dataLength
{
  v6 = *&dataLength;
  v7 = *&length;
  v10 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v11 = v10;
  if (!id)
  {
    v33 = @"requestId";
    v10 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  WTF::JSONImpl::Object::create(&v39, v10);
  v12 = v39;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v38 = v40[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v37 = v40[0];
  WTF::JSONImpl::ObjectBase::setString(v12, &v38, &v37);
  v13 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v37);
  WTF::JSONImpl::Object::create(&v38, v13);
  v14 = v38;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v36 = v40[0];
  MEMORY[0x2743DB520](&v35, id);
  WTF::JSONImpl::ObjectBase::setString(v14, &v36, &v35);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v35);
  v15 = v38;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v36 = v40[0];
  WTF::JSONImpl::ObjectBase::setDouble(v15, &v36, timestamp);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v36);
  v16 = v38;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v36 = v40[0];
  WTF::JSONImpl::ObjectBase::setInteger(v16, &v36, v7);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v36);
  v17 = v38;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v36 = v40[0];
  WTF::JSONImpl::ObjectBase::setInteger(v17, &v36, v6);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v36);
  v18 = v39;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v36 = v40[0];
  v19 = v38;
  v38 = 0;
  v34 = v19;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v18 + 2, &v36, &v34, v40);
  if (v41 == 1)
  {
    v27 = *(v18 + 9);
    if (v27 == *(v18 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v18 + 24, &v36);
    }

    else
    {
      v28 = *(v18 + 3);
      v29 = v36;
      if (v36)
      {
        atomic_fetch_add_explicit(v36, 2u, memory_order_relaxed);
      }

      v30 = *(v18 + 9);
      *(v28 + 8 * v27) = v29;
      *(v18 + 9) = v30 + 1;
    }
  }

  v31 = v34;
  v34 = 0;
  if (v31)
  {
    Inspector::toJSONObjectArray(v31, v20, v21, v22, v23, v24, v25, v26, v33, v34);
  }

  v32 = v36;
  v36 = 0;
  if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v32, v20);
  }

  WTF::JSONImpl::Value::toJSONString(v40, v39);
  Inspector::FrontendRouter::sendEvent(v11, v40);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v40];
}

- (void)loadingFinishedWithRequestId:(id)id timestamp:(double)timestamp sourceMapURL:(id *)l metrics:(id *)metrics
{
  v10 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v11 = v10;
  if (!id)
  {
    v49 = @"requestId";
    v10 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  if (l && !*l)
  {
    v49 = @"sourceMapURL";
    v10 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"optional parameter '%@' cannot be nil"];
  }

  if (metrics && !*metrics)
  {
    v49 = @"metrics";
    v10 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"optional parameter '%@' cannot be nil"];
  }

  WTF::JSONImpl::Object::create(&v59, v10);
  v12 = v59;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v58 = v60[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v57 = v60[0];
  WTF::JSONImpl::ObjectBase::setString(v12, &v58, &v57);
  v13 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v57);
  WTF::JSONImpl::Object::create(&v58, v13);
  v14 = v58;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v56 = v60[0];
  MEMORY[0x2743DB520](&v55, id);
  WTF::JSONImpl::ObjectBase::setString(v14, &v56, &v55);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v55);
  v15 = v58;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v56 = v60[0];
  WTF::JSONImpl::ObjectBase::setDouble(v15, &v56, timestamp);
  v17 = v56;
  v56 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v16);
  }

  if (l)
  {
    v18 = v58;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v56 = v60[0];
    MEMORY[0x2743DB520](&v54, *l);
    WTF::JSONImpl::ObjectBase::setString(v18, &v56, &v54);
    ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v54);
  }

  if (metrics)
  {
    v19 = v58;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v53 = v60[0];
    if (*metrics)
    {
      objc_msgSend_toJSONObject(*metrics);
      v20 = v51;
    }

    else
    {
      v20 = 0;
    }

    v52 = v20;
    WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v19 + 16), &v53, &v52, v60);
    if (v61 == 1)
    {
      v28 = *(v19 + 36);
      if (v28 == *(v19 + 32))
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v19 + 24, &v53);
      }

      else
      {
        v29 = *(v19 + 24);
        v30 = v53;
        if (v53)
        {
          atomic_fetch_add_explicit(v53, 2u, memory_order_relaxed);
        }

        v31 = *(v19 + 36);
        *(v29 + 8 * v28) = v30;
        *(v19 + 36) = v31 + 1;
      }
    }

    v32 = v52;
    v52 = 0;
    if (v32)
    {
      Inspector::toJSONObjectArray(v32, v21, v22, v23, v24, v25, v26, v27, v49, v50);
    }

    v33 = v53;
    v53 = 0;
    if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v33, v21);
    }
  }

  v34 = v59;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v35 = v58;
  v58 = 0;
  v52 = v35;
  v53 = v60[0];
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v34 + 2, &v53, &v52, v60);
  if (v61 == 1)
  {
    v43 = *(v34 + 9);
    if (v43 == *(v34 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v34 + 24, &v53);
    }

    else
    {
      v44 = *(v34 + 3);
      v45 = v53;
      if (v53)
      {
        atomic_fetch_add_explicit(v53, 2u, memory_order_relaxed);
      }

      v46 = *(v34 + 9);
      *(v44 + 8 * v43) = v45;
      *(v34 + 9) = v46 + 1;
    }
  }

  v47 = v52;
  v52 = 0;
  if (v47)
  {
    Inspector::toJSONObjectArray(v47, v36, v37, v38, v39, v40, v41, v42, v49, v50);
  }

  v48 = v53;
  v53 = 0;
  if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v48, v36);
  }

  WTF::JSONImpl::Value::toJSONString(v60, v59);
  Inspector::FrontendRouter::sendEvent(v11, v60);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v60];
}

- (void)loadingFailedWithRequestId:(id)id timestamp:(double)timestamp errorText:(id)text canceled:(BOOL *)canceled
{
  v10 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v11 = v10;
  v12 = MEMORY[0x277CBE660];
  if (!id)
  {
    v34 = @"requestId";
    v10 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  if (!text)
  {
    v34 = @"errorText";
    v10 = [MEMORY[0x277CBEAD8] raise:*v12 format:@"required parameter '%@' cannot be nil"];
  }

  WTF::JSONImpl::Object::create(&v44, v10);
  v13 = v44;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v43 = v45[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v42 = v45[0];
  WTF::JSONImpl::ObjectBase::setString(v13, &v43, &v42);
  v14 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v42);
  WTF::JSONImpl::Object::create(&v43, v14);
  v15 = v43;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v41 = v45[0];
  MEMORY[0x2743DB520](&v40, id);
  WTF::JSONImpl::ObjectBase::setString(v15, &v41, &v40);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v40);
  v16 = v43;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v41 = v45[0];
  WTF::JSONImpl::ObjectBase::setDouble(v16, &v41, timestamp);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v41);
  v17 = v43;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v41 = v45[0];
  MEMORY[0x2743DB520](&v39, text);
  WTF::JSONImpl::ObjectBase::setString(v17, &v41, &v39);
  if (![RWIProtocolNetworkDomainEventDispatcher loadingFailedWithRequestId:? timestamp:? errorText:? canceled:?])
  {
    v18 = v43;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v38 = v45[0];
    WTF::JSONImpl::ObjectBase::setBoolean(v18, &v38, *canceled);
    Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v38);
  }

  v19 = v44;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v20 = v43;
  v43 = 0;
  v36 = v20;
  v37 = v45[0];
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v19 + 2, &v37, &v36, v45);
  if (v46 == 1)
  {
    v28 = *(v19 + 9);
    if (v28 == *(v19 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v19 + 24, &v37);
    }

    else
    {
      v29 = *(v19 + 3);
      v30 = v37;
      if (v37)
      {
        atomic_fetch_add_explicit(v37, 2u, memory_order_relaxed);
      }

      v31 = *(v19 + 9);
      *(v29 + 8 * v28) = v30;
      *(v19 + 9) = v31 + 1;
    }
  }

  v32 = v36;
  v36 = 0;
  if (v32)
  {
    Inspector::toJSONObjectArray(v32, v21, v22, v23, v24, v25, v26, v27, v34, v35);
  }

  v33 = v37;
  v37 = 0;
  if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v33, v21);
  }

  WTF::JSONImpl::Value::toJSONString(v45, v44);
  Inspector::FrontendRouter::sendEvent(v11, v45);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v45];
}

- (void)requestServedFromMemoryCacheWithRequestId:(id)id frameId:(id)frameId loaderId:(id)loaderId documentURL:(id)l timestamp:(double)timestamp initiator:(id)initiator resource:(id)resource
{
  v16 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v17 = v16;
  v18 = MEMORY[0x277CBE660];
  if (id)
  {
    if (frameId)
    {
LABEL_3:
      if (!loaderId)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v70 = @"requestId";
    v16 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
    if (frameId)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x277CBEAD8] raise:*v18 format:{@"required parameter '%@' cannot be nil", @"frameId"}];
  if (!loaderId)
  {
LABEL_4:
    v16 = [MEMORY[0x277CBEAD8] raise:*v18 format:{@"required parameter '%@' cannot be nil", @"loaderId"}];
    if (l)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  if (l)
  {
LABEL_5:
    if (!initiator)
    {
      goto LABEL_6;
    }

LABEL_12:
    if (resource)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_11:
  v16 = [MEMORY[0x277CBEAD8] raise:*v18 format:{@"required parameter '%@' cannot be nil", @"documentURL"}];
  if (initiator)
  {
    goto LABEL_12;
  }

LABEL_6:
  v16 = [MEMORY[0x277CBEAD8] raise:*v18 format:{@"required parameter '%@' cannot be nil", @"initiator"}];
  if (!resource)
  {
LABEL_13:
    v16 = [MEMORY[0x277CBEAD8] raise:*v18 format:{@"required parameter '%@' cannot be nil", @"resource"}];
  }

LABEL_14:
  WTF::JSONImpl::Object::create(&v82, v16);
  v19 = v82;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v81 = v83[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v80 = v83[0];
  WTF::JSONImpl::ObjectBase::setString(v19, &v81, &v80);
  v20 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v80);
  WTF::JSONImpl::Object::create(&v81, v20);
  v21 = v81;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v79 = v83[0];
  MEMORY[0x2743DB520](&v78, id);
  WTF::JSONImpl::ObjectBase::setString(v21, &v79, &v78);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v78);
  v22 = v81;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v79 = v83[0];
  MEMORY[0x2743DB520](&v77, frameId);
  WTF::JSONImpl::ObjectBase::setString(v22, &v79, &v77);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v77);
  v23 = v81;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v79 = v83[0];
  MEMORY[0x2743DB520](&v76, loaderId);
  WTF::JSONImpl::ObjectBase::setString(v23, &v79, &v76);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v76);
  v24 = v81;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v79 = v83[0];
  MEMORY[0x2743DB520](&v75, l);
  WTF::JSONImpl::ObjectBase::setString(v24, &v79, &v75);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v75);
  v25 = v81;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v79 = v83[0];
  WTF::JSONImpl::ObjectBase::setDouble(v25, &v79, timestamp);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v79);
  v26 = v81;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v79 = v83[0];
  if (initiator)
  {
    objc_msgSend_toJSONObject(initiator);
    v27 = v71;
  }

  else
  {
    v27 = 0;
  }

  v72 = 0;
  v74 = v27;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v26 + 16), &v79, &v74, v83);
  if (v84 == 1)
  {
    v35 = *(v26 + 36);
    if (v35 == *(v26 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v26 + 24, &v79);
    }

    else
    {
      v36 = *(v26 + 24);
      v37 = v79;
      if (v79)
      {
        atomic_fetch_add_explicit(v79, 2u, memory_order_relaxed);
      }

      v38 = *(v26 + 36);
      *(v36 + 8 * v35) = v37;
      *(v26 + 36) = v38 + 1;
    }
  }

  v39 = v74;
  v74 = 0;
  if (v39)
  {
    Inspector::toJSONObjectArray(v39, v28, v29, v30, v31, v32, v33, v34, v70, 0);
  }

  if (v72)
  {
    if (*v72 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v72;
    }
  }

  v40 = v79;
  v79 = 0;
  if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v40, v28);
  }

  v41 = v81;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v79 = v83[0];
  if (resource)
  {
    objc_msgSend_toJSONObject(resource);
  }

  v73 = 0;
  v74 = 0;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v41 + 16), &v79, &v74, v83);
  if (v84 == 1)
  {
    v49 = *(v41 + 36);
    if (v49 == *(v41 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v41 + 24, &v79);
    }

    else
    {
      v50 = *(v41 + 24);
      v51 = v79;
      if (v79)
      {
        atomic_fetch_add_explicit(v79, 2u, memory_order_relaxed);
      }

      v52 = *(v41 + 36);
      *(v50 + 8 * v49) = v51;
      *(v41 + 36) = v52 + 1;
    }
  }

  v53 = v74;
  v74 = 0;
  if (v53)
  {
    Inspector::toJSONObjectArray(v53, v42, v43, v44, v45, v46, v47, v48, v70, 0);
  }

  if (v73)
  {
    if (*v73 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v73;
    }
  }

  v54 = v79;
  v79 = 0;
  if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v54, v42);
  }

  v55 = v82;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v79 = v83[0];
  v56 = v81;
  v81 = 0;
  v74 = v56;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v55 + 2, &v79, &v74, v83);
  if (v84 == 1)
  {
    v64 = *(v55 + 9);
    if (v64 == *(v55 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v55 + 24, &v79);
    }

    else
    {
      v65 = *(v55 + 3);
      v66 = v79;
      if (v79)
      {
        atomic_fetch_add_explicit(v79, 2u, memory_order_relaxed);
      }

      v67 = *(v55 + 9);
      *(v65 + 8 * v64) = v66;
      *(v55 + 9) = v67 + 1;
    }
  }

  v68 = v74;
  v74 = 0;
  if (v68)
  {
    Inspector::toJSONObjectArray(v68, v57, v58, v59, v60, v61, v62, v63, v70, 0);
  }

  v69 = v79;
  v79 = 0;
  if (v69 && atomic_fetch_add_explicit(v69, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v69, v57);
  }

  WTF::JSONImpl::Value::toJSONString(v83, v82);
  Inspector::FrontendRouter::sendEvent(v17, v83);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v83];
}

- (void)requestInterceptedWithRequestId:(id)id request:(id)request
{
  v6 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v7 = v6;
  v8 = MEMORY[0x277CBE660];
  if (!id)
  {
    v42 = @"requestId";
    v6 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  if (!request)
  {
    v42 = @"request";
    v6 = [MEMORY[0x277CBEAD8] raise:*v8 format:@"required parameter '%@' cannot be nil"];
  }

  WTF::JSONImpl::Object::create(&v50, v6);
  v9 = v50;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v49 = v51[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v48 = v51[0];
  WTF::JSONImpl::ObjectBase::setString(v9, &v49, &v48);
  v10 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v48);
  WTF::JSONImpl::Object::create(&v49, v10);
  v11 = v49;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v47 = v51[0];
  MEMORY[0x2743DB520](&v46, id);
  WTF::JSONImpl::ObjectBase::setString(v11, &v47, &v46);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v46);
  v12 = v49;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v47 = v51[0];
  if (request)
  {
    objc_msgSend_toJSONObject(request);
    v13 = v44;
  }

  else
  {
    v13 = 0;
  }

  v45 = v13;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v12 + 16), &v47, &v45, v51);
  if (v52 == 1)
  {
    v21 = *(v12 + 36);
    if (v21 == *(v12 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v12 + 24, &v47);
    }

    else
    {
      v22 = *(v12 + 24);
      v23 = v47;
      if (v47)
      {
        atomic_fetch_add_explicit(v47, 2u, memory_order_relaxed);
      }

      v24 = *(v12 + 36);
      *(v22 + 8 * v21) = v23;
      *(v12 + 36) = v24 + 1;
    }
  }

  v25 = v45;
  v45 = 0;
  if (v25)
  {
    Inspector::toJSONObjectArray(v25, v14, v15, v16, v17, v18, v19, v20, v42, v43);
  }

  v26 = v47;
  v47 = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v14);
  }

  v27 = v50;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v47 = v51[0];
  v28 = v49;
  v49 = 0;
  v45 = v28;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v27 + 2, &v47, &v45, v51);
  if (v52 == 1)
  {
    v36 = *(v27 + 9);
    if (v36 == *(v27 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v27 + 24, &v47);
    }

    else
    {
      v37 = *(v27 + 3);
      v38 = v47;
      if (v47)
      {
        atomic_fetch_add_explicit(v47, 2u, memory_order_relaxed);
      }

      v39 = *(v27 + 9);
      *(v37 + 8 * v36) = v38;
      *(v27 + 9) = v39 + 1;
    }
  }

  v40 = v45;
  v45 = 0;
  if (v40)
  {
    Inspector::toJSONObjectArray(v40, v29, v30, v31, v32, v33, v34, v35, v42, v43);
  }

  v41 = v47;
  v47 = 0;
  if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v41, v29);
  }

  WTF::JSONImpl::Value::toJSONString(v51, v50);
  Inspector::FrontendRouter::sendEvent(v7, v51);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v51];
}

- (void)responseInterceptedWithRequestId:(id)id response:(id)response
{
  v6 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v7 = v6;
  v8 = MEMORY[0x277CBE660];
  if (!id)
  {
    v42 = @"requestId";
    v6 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  if (!response)
  {
    v42 = @"response";
    v6 = [MEMORY[0x277CBEAD8] raise:*v8 format:@"required parameter '%@' cannot be nil"];
  }

  WTF::JSONImpl::Object::create(&v50, v6);
  v9 = v50;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v49 = v51[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v48 = v51[0];
  WTF::JSONImpl::ObjectBase::setString(v9, &v49, &v48);
  v10 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v48);
  WTF::JSONImpl::Object::create(&v49, v10);
  v11 = v49;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v47 = v51[0];
  MEMORY[0x2743DB520](&v46, id);
  WTF::JSONImpl::ObjectBase::setString(v11, &v47, &v46);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v46);
  v12 = v49;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v47 = v51[0];
  if (response)
  {
    objc_msgSend_toJSONObject(response);
    v13 = v44;
  }

  else
  {
    v13 = 0;
  }

  v45 = v13;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v12 + 16), &v47, &v45, v51);
  if (v52 == 1)
  {
    v21 = *(v12 + 36);
    if (v21 == *(v12 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v12 + 24, &v47);
    }

    else
    {
      v22 = *(v12 + 24);
      v23 = v47;
      if (v47)
      {
        atomic_fetch_add_explicit(v47, 2u, memory_order_relaxed);
      }

      v24 = *(v12 + 36);
      *(v22 + 8 * v21) = v23;
      *(v12 + 36) = v24 + 1;
    }
  }

  v25 = v45;
  v45 = 0;
  if (v25)
  {
    Inspector::toJSONObjectArray(v25, v14, v15, v16, v17, v18, v19, v20, v42, v43);
  }

  v26 = v47;
  v47 = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v14);
  }

  v27 = v50;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v47 = v51[0];
  v28 = v49;
  v49 = 0;
  v45 = v28;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v27 + 2, &v47, &v45, v51);
  if (v52 == 1)
  {
    v36 = *(v27 + 9);
    if (v36 == *(v27 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v27 + 24, &v47);
    }

    else
    {
      v37 = *(v27 + 3);
      v38 = v47;
      if (v47)
      {
        atomic_fetch_add_explicit(v47, 2u, memory_order_relaxed);
      }

      v39 = *(v27 + 9);
      *(v37 + 8 * v36) = v38;
      *(v27 + 9) = v39 + 1;
    }
  }

  v40 = v45;
  v45 = 0;
  if (v40)
  {
    Inspector::toJSONObjectArray(v40, v29, v30, v31, v32, v33, v34, v35, v42, v43);
  }

  v41 = v47;
  v47 = 0;
  if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v41, v29);
  }

  WTF::JSONImpl::Value::toJSONString(v51, v50);
  Inspector::FrontendRouter::sendEvent(v7, v51);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v51];
}

- (void)webSocketWillSendHandshakeRequestWithRequestId:(id)id timestamp:(double)timestamp walltime:(double)walltime request:(id)request
{
  v10 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v11 = v10;
  v12 = MEMORY[0x277CBE660];
  if (!id)
  {
    v48 = @"requestId";
    v10 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  if (!request)
  {
    v48 = @"request";
    v10 = [MEMORY[0x277CBEAD8] raise:*v12 format:@"required parameter '%@' cannot be nil"];
  }

  WTF::JSONImpl::Object::create(&v56, v10);
  v13 = v56;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v55 = v57[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v54 = v57[0];
  WTF::JSONImpl::ObjectBase::setString(v13, &v55, &v54);
  v14 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v54);
  WTF::JSONImpl::Object::create(&v55, v14);
  v15 = v55;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v53 = v57[0];
  MEMORY[0x2743DB520](&v52, id);
  WTF::JSONImpl::ObjectBase::setString(v15, &v53, &v52);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v52);
  v16 = v55;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v53 = v57[0];
  WTF::JSONImpl::ObjectBase::setDouble(v16, &v53, timestamp);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v53);
  v17 = v55;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v53 = v57[0];
  WTF::JSONImpl::ObjectBase::setDouble(v17, &v53, walltime);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v53);
  v18 = v55;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v53 = v57[0];
  if (request)
  {
    objc_msgSend_toJSONObject(request);
    v19 = v50;
  }

  else
  {
    v19 = 0;
  }

  v51 = v19;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v18 + 16), &v53, &v51, v57);
  if (v58 == 1)
  {
    v27 = *(v18 + 36);
    if (v27 == *(v18 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v18 + 24, &v53);
    }

    else
    {
      v28 = *(v18 + 24);
      v29 = v53;
      if (v53)
      {
        atomic_fetch_add_explicit(v53, 2u, memory_order_relaxed);
      }

      v30 = *(v18 + 36);
      *(v28 + 8 * v27) = v29;
      *(v18 + 36) = v30 + 1;
    }
  }

  v31 = v51;
  v51 = 0;
  if (v31)
  {
    Inspector::toJSONObjectArray(v31, v20, v21, v22, v23, v24, v25, v26, v48, v49);
  }

  v32 = v53;
  v53 = 0;
  if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v32, v20);
  }

  v33 = v56;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v53 = v57[0];
  v34 = v55;
  v55 = 0;
  v51 = v34;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v33 + 2, &v53, &v51, v57);
  if (v58 == 1)
  {
    v42 = *(v33 + 9);
    if (v42 == *(v33 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v33 + 24, &v53);
    }

    else
    {
      v43 = *(v33 + 3);
      v44 = v53;
      if (v53)
      {
        atomic_fetch_add_explicit(v53, 2u, memory_order_relaxed);
      }

      v45 = *(v33 + 9);
      *(v43 + 8 * v42) = v44;
      *(v33 + 9) = v45 + 1;
    }
  }

  v46 = v51;
  v51 = 0;
  if (v46)
  {
    Inspector::toJSONObjectArray(v46, v35, v36, v37, v38, v39, v40, v41, v48, v49);
  }

  v47 = v53;
  v53 = 0;
  if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v47, v35);
  }

  WTF::JSONImpl::Value::toJSONString(v57, v56);
  Inspector::FrontendRouter::sendEvent(v11, v57);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v57];
}

- (void)webSocketHandshakeResponseReceivedWithRequestId:(id)id timestamp:(double)timestamp response:(id)response
{
  v8 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v9 = v8;
  v10 = MEMORY[0x277CBE660];
  if (!id)
  {
    v45 = @"requestId";
    v8 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  if (!response)
  {
    v45 = @"response";
    v8 = [MEMORY[0x277CBEAD8] raise:*v10 format:@"required parameter '%@' cannot be nil"];
  }

  WTF::JSONImpl::Object::create(&v53, v8);
  v11 = v53;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v52 = v54[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v51 = v54[0];
  WTF::JSONImpl::ObjectBase::setString(v11, &v52, &v51);
  v12 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v51);
  WTF::JSONImpl::Object::create(&v52, v12);
  v13 = v52;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v50 = v54[0];
  MEMORY[0x2743DB520](&v49, id);
  WTF::JSONImpl::ObjectBase::setString(v13, &v50, &v49);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v49);
  v14 = v52;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v50 = v54[0];
  WTF::JSONImpl::ObjectBase::setDouble(v14, &v50, timestamp);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v50);
  v15 = v52;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v50 = v54[0];
  if (response)
  {
    objc_msgSend_toJSONObject(response);
    v16 = v47;
  }

  else
  {
    v16 = 0;
  }

  v48 = v16;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v15 + 16), &v50, &v48, v54);
  if (v55 == 1)
  {
    v24 = *(v15 + 36);
    if (v24 == *(v15 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v15 + 24, &v50);
    }

    else
    {
      v25 = *(v15 + 24);
      v26 = v50;
      if (v50)
      {
        atomic_fetch_add_explicit(v50, 2u, memory_order_relaxed);
      }

      v27 = *(v15 + 36);
      *(v25 + 8 * v24) = v26;
      *(v15 + 36) = v27 + 1;
    }
  }

  v28 = v48;
  v48 = 0;
  if (v28)
  {
    Inspector::toJSONObjectArray(v28, v17, v18, v19, v20, v21, v22, v23, v45, v46);
  }

  v29 = v50;
  v50 = 0;
  if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v29, v17);
  }

  v30 = v53;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v50 = v54[0];
  v31 = v52;
  v52 = 0;
  v48 = v31;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v30 + 2, &v50, &v48, v54);
  if (v55 == 1)
  {
    v39 = *(v30 + 9);
    if (v39 == *(v30 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v30 + 24, &v50);
    }

    else
    {
      v40 = *(v30 + 3);
      v41 = v50;
      if (v50)
      {
        atomic_fetch_add_explicit(v50, 2u, memory_order_relaxed);
      }

      v42 = *(v30 + 9);
      *(v40 + 8 * v39) = v41;
      *(v30 + 9) = v42 + 1;
    }
  }

  v43 = v48;
  v48 = 0;
  if (v43)
  {
    Inspector::toJSONObjectArray(v43, v32, v33, v34, v35, v36, v37, v38, v45, v46);
  }

  v44 = v50;
  v50 = 0;
  if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v44, v32);
  }

  WTF::JSONImpl::Value::toJSONString(v54, v53);
  Inspector::FrontendRouter::sendEvent(v9, v54);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v54];
}

- (void)webSocketCreatedWithRequestId:(id)id url:(id)url
{
  v6 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v7 = v6;
  v8 = MEMORY[0x277CBE660];
  if (!id)
  {
    v28 = @"requestId";
    v6 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  if (!url)
  {
    v28 = @"url";
    v6 = [MEMORY[0x277CBEAD8] raise:*v8 format:@"required parameter '%@' cannot be nil"];
  }

  WTF::JSONImpl::Object::create(&v36, v6);
  v9 = v36;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v35 = v37[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v34 = v37[0];
  WTF::JSONImpl::ObjectBase::setString(v9, &v35, &v34);
  v10 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v34);
  WTF::JSONImpl::Object::create(&v35, v10);
  v11 = v35;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v33 = v37[0];
  MEMORY[0x2743DB520](&v32, id);
  WTF::JSONImpl::ObjectBase::setString(v11, &v33, &v32);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v32);
  v12 = v35;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v33 = v37[0];
  MEMORY[0x2743DB520](&v31, url);
  WTF::JSONImpl::ObjectBase::setString(v12, &v33, &v31);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v31);
  v13 = v36;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v33 = v37[0];
  v14 = v35;
  v35 = 0;
  v30 = v14;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v13 + 2, &v33, &v30, v37);
  if (v38 == 1)
  {
    v22 = *(v13 + 9);
    if (v22 == *(v13 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v13 + 24, &v33);
    }

    else
    {
      v23 = *(v13 + 3);
      v24 = v33;
      if (v33)
      {
        atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
      }

      v25 = *(v13 + 9);
      *(v23 + 8 * v22) = v24;
      *(v13 + 9) = v25 + 1;
    }
  }

  v26 = v30;
  v30 = 0;
  if (v26)
  {
    Inspector::toJSONObjectArray(v26, v15, v16, v17, v18, v19, v20, v21, v28, v29);
  }

  v27 = v33;
  v33 = 0;
  if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v27, v15);
  }

  WTF::JSONImpl::Value::toJSONString(v37, v36);
  Inspector::FrontendRouter::sendEvent(v7, v37);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v37];
}

- (void)webSocketClosedWithRequestId:(id)id timestamp:(double)timestamp
{
  v6 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v7 = v6;
  if (!id)
  {
    v27 = @"requestId";
    v6 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  WTF::JSONImpl::Object::create(&v33, v6);
  v8 = v33;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v32 = v34[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v31 = v34[0];
  WTF::JSONImpl::ObjectBase::setString(v8, &v32, &v31);
  v9 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v31);
  WTF::JSONImpl::Object::create(&v32, v9);
  v10 = v32;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v30 = v34[0];
  MEMORY[0x2743DB520](&v29, id);
  WTF::JSONImpl::ObjectBase::setString(v10, &v30, &v29);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v29);
  v11 = v32;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v30 = v34[0];
  WTF::JSONImpl::ObjectBase::setDouble(v11, &v30, timestamp);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v30);
  v12 = v33;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v30 = v34[0];
  v13 = v32;
  v32 = 0;
  v28 = v13;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v12 + 2, &v30, &v28, v34);
  if (v35 == 1)
  {
    v21 = *(v12 + 9);
    if (v21 == *(v12 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v12 + 24, &v30);
    }

    else
    {
      v22 = *(v12 + 3);
      v23 = v30;
      if (v30)
      {
        atomic_fetch_add_explicit(v30, 2u, memory_order_relaxed);
      }

      v24 = *(v12 + 9);
      *(v22 + 8 * v21) = v23;
      *(v12 + 9) = v24 + 1;
    }
  }

  v25 = v28;
  v28 = 0;
  if (v25)
  {
    Inspector::toJSONObjectArray(v25, v14, v15, v16, v17, v18, v19, v20, v27, v28);
  }

  v26 = v30;
  v30 = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v14);
  }

  WTF::JSONImpl::Value::toJSONString(v34, v33);
  Inspector::FrontendRouter::sendEvent(v7, v34);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v34];
}

- (void)webSocketFrameReceivedWithRequestId:(id)id timestamp:(double)timestamp response:(id)response
{
  v8 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v9 = v8;
  v10 = MEMORY[0x277CBE660];
  if (!id)
  {
    v45 = @"requestId";
    v8 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  if (!response)
  {
    v45 = @"response";
    v8 = [MEMORY[0x277CBEAD8] raise:*v10 format:@"required parameter '%@' cannot be nil"];
  }

  WTF::JSONImpl::Object::create(&v53, v8);
  v11 = v53;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v52 = v54[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v51 = v54[0];
  WTF::JSONImpl::ObjectBase::setString(v11, &v52, &v51);
  v12 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v51);
  WTF::JSONImpl::Object::create(&v52, v12);
  v13 = v52;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v50 = v54[0];
  MEMORY[0x2743DB520](&v49, id);
  WTF::JSONImpl::ObjectBase::setString(v13, &v50, &v49);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v49);
  v14 = v52;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v50 = v54[0];
  WTF::JSONImpl::ObjectBase::setDouble(v14, &v50, timestamp);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v50);
  v15 = v52;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v50 = v54[0];
  if (response)
  {
    objc_msgSend_toJSONObject(response);
    v16 = v47;
  }

  else
  {
    v16 = 0;
  }

  v48 = v16;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v15 + 16), &v50, &v48, v54);
  if (v55 == 1)
  {
    v24 = *(v15 + 36);
    if (v24 == *(v15 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v15 + 24, &v50);
    }

    else
    {
      v25 = *(v15 + 24);
      v26 = v50;
      if (v50)
      {
        atomic_fetch_add_explicit(v50, 2u, memory_order_relaxed);
      }

      v27 = *(v15 + 36);
      *(v25 + 8 * v24) = v26;
      *(v15 + 36) = v27 + 1;
    }
  }

  v28 = v48;
  v48 = 0;
  if (v28)
  {
    Inspector::toJSONObjectArray(v28, v17, v18, v19, v20, v21, v22, v23, v45, v46);
  }

  v29 = v50;
  v50 = 0;
  if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v29, v17);
  }

  v30 = v53;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v50 = v54[0];
  v31 = v52;
  v52 = 0;
  v48 = v31;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v30 + 2, &v50, &v48, v54);
  if (v55 == 1)
  {
    v39 = *(v30 + 9);
    if (v39 == *(v30 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v30 + 24, &v50);
    }

    else
    {
      v40 = *(v30 + 3);
      v41 = v50;
      if (v50)
      {
        atomic_fetch_add_explicit(v50, 2u, memory_order_relaxed);
      }

      v42 = *(v30 + 9);
      *(v40 + 8 * v39) = v41;
      *(v30 + 9) = v42 + 1;
    }
  }

  v43 = v48;
  v48 = 0;
  if (v43)
  {
    Inspector::toJSONObjectArray(v43, v32, v33, v34, v35, v36, v37, v38, v45, v46);
  }

  v44 = v50;
  v50 = 0;
  if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v44, v32);
  }

  WTF::JSONImpl::Value::toJSONString(v54, v53);
  Inspector::FrontendRouter::sendEvent(v9, v54);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v54];
}

- (void)webSocketFrameErrorWithRequestId:(id)id timestamp:(double)timestamp errorMessage:(id)message
{
  v8 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v9 = v8;
  v10 = MEMORY[0x277CBE660];
  if (!id)
  {
    v31 = @"requestId";
    v8 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  if (!message)
  {
    v31 = @"errorMessage";
    v8 = [MEMORY[0x277CBEAD8] raise:*v10 format:@"required parameter '%@' cannot be nil"];
  }

  WTF::JSONImpl::Object::create(&v39, v8);
  v11 = v39;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v38 = v40[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v37 = v40[0];
  WTF::JSONImpl::ObjectBase::setString(v11, &v38, &v37);
  v12 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v37);
  WTF::JSONImpl::Object::create(&v38, v12);
  v13 = v38;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v36 = v40[0];
  MEMORY[0x2743DB520](&v35, id);
  WTF::JSONImpl::ObjectBase::setString(v13, &v36, &v35);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v35);
  v14 = v38;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v36 = v40[0];
  WTF::JSONImpl::ObjectBase::setDouble(v14, &v36, timestamp);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v36);
  v15 = v38;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v36 = v40[0];
  MEMORY[0x2743DB520](&v34, message);
  WTF::JSONImpl::ObjectBase::setString(v15, &v36, &v34);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v34);
  v16 = v39;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v36 = v40[0];
  v17 = v38;
  v38 = 0;
  v33 = v17;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v16 + 2, &v36, &v33, v40);
  if (v41 == 1)
  {
    v25 = *(v16 + 9);
    if (v25 == *(v16 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v16 + 24, &v36);
    }

    else
    {
      v26 = *(v16 + 3);
      v27 = v36;
      if (v36)
      {
        atomic_fetch_add_explicit(v36, 2u, memory_order_relaxed);
      }

      v28 = *(v16 + 9);
      *(v26 + 8 * v25) = v27;
      *(v16 + 9) = v28 + 1;
    }
  }

  v29 = v33;
  v33 = 0;
  if (v29)
  {
    Inspector::toJSONObjectArray(v29, v18, v19, v20, v21, v22, v23, v24, v31, v32);
  }

  v30 = v36;
  v36 = 0;
  if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v30, v18);
  }

  WTF::JSONImpl::Value::toJSONString(v40, v39);
  Inspector::FrontendRouter::sendEvent(v9, v40);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v40];
}

- (void)webSocketFrameSentWithRequestId:(id)id timestamp:(double)timestamp response:(id)response
{
  v8 = (*(self->_controller->var0 + 4))(self->_controller, a2);
  v9 = v8;
  v10 = MEMORY[0x277CBE660];
  if (!id)
  {
    v45 = @"requestId";
    v8 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"required parameter '%@' cannot be nil"];
  }

  if (!response)
  {
    v45 = @"response";
    v8 = [MEMORY[0x277CBEAD8] raise:*v10 format:@"required parameter '%@' cannot be nil"];
  }

  WTF::JSONImpl::Object::create(&v53, v8);
  v11 = v53;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v52 = v54[0];
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v51 = v54[0];
  WTF::JSONImpl::ObjectBase::setString(v11, &v52, &v51);
  v12 = ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v51);
  WTF::JSONImpl::Object::create(&v52, v12);
  v13 = v52;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v50 = v54[0];
  MEMORY[0x2743DB520](&v49, id);
  WTF::JSONImpl::ObjectBase::setString(v13, &v50, &v49);
  ___ZN9Inspector33ObjCInspectorCSSBackendDispatcher17getStyleSheetTextElRKN3WTF6StringE_block_invoke_2_cold_1(&v49);
  v14 = v52;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v50 = v54[0];
  WTF::JSONImpl::ObjectBase::setDouble(v14, &v50, timestamp);
  Inspector::ObjCInspectorCSSBackendDispatcher::setLayoutContextTypeChangedMode(&v50);
  v15 = v52;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v50 = v54[0];
  if (response)
  {
    objc_msgSend_toJSONObject(response);
    v16 = v47;
  }

  else
  {
    v16 = 0;
  }

  v48 = v16;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>((v15 + 16), &v50, &v48, v54);
  if (v55 == 1)
  {
    v24 = *(v15 + 36);
    if (v24 == *(v15 + 32))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v15 + 24, &v50);
    }

    else
    {
      v25 = *(v15 + 24);
      v26 = v50;
      if (v50)
      {
        atomic_fetch_add_explicit(v50, 2u, memory_order_relaxed);
      }

      v27 = *(v15 + 36);
      *(v25 + 8 * v24) = v26;
      *(v15 + 36) = v27 + 1;
    }
  }

  v28 = v48;
  v48 = 0;
  if (v28)
  {
    Inspector::toJSONObjectArray(v28, v17, v18, v19, v20, v21, v22, v23, v45, v46);
  }

  v29 = v50;
  v50 = 0;
  if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v29, v17);
  }

  v30 = v53;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v50 = v54[0];
  v31 = v52;
  v52 = 0;
  v48 = v31;
  WTF::HashMap<WTF::String,WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::inlineSet<WTF::String const&,WTF::Ref<WTF::JSONImpl::ObjectBase,WTF::RawPtrTraits<WTF::JSONImpl::ObjectBase>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::ObjectBase>>>(v30 + 2, &v50, &v48, v54);
  if (v55 == 1)
  {
    v39 = *(v30 + 9);
    if (v39 == *(v30 + 8))
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(v30 + 24, &v50);
    }

    else
    {
      v40 = *(v30 + 3);
      v41 = v50;
      if (v50)
      {
        atomic_fetch_add_explicit(v50, 2u, memory_order_relaxed);
      }

      v42 = *(v30 + 9);
      *(v40 + 8 * v39) = v41;
      *(v30 + 9) = v42 + 1;
    }
  }

  v43 = v48;
  v48 = 0;
  if (v43)
  {
    Inspector::toJSONObjectArray(v43, v32, v33, v34, v35, v36, v37, v38, v45, v46);
  }

  v44 = v50;
  v50 = 0;
  if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v44, v32);
  }

  WTF::JSONImpl::Value::toJSONString(v54, v53);
  Inspector::FrontendRouter::sendEvent(v9, v54);
  [RWIProtocolCSSDomainEventDispatcher styleSheetChangedWithStyleSheetId:v54];
}

- (BOOL)loadingFailedWithRequestId:(uint64_t *)a1 timestamp:errorText:canceled:.cold.4(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_0_5(a1);
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_1_1(v2);
    if (v5)
    {
      WTF::StringImpl::destroy(v3, v4);
    }
  }

  v6 = OUTLINED_FUNCTION_5_0();
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_1_1(v6);
    if (v5)
    {
      WTF::StringImpl::destroy(v7, v8);
    }
  }

  return v1 == 0;
}

@end