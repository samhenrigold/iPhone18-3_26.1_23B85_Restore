_DWORD *WebKit::WebExtensionContextProxy::didReceiveMessage(WebKit::WebExtensionContextProxy *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v4 = a3;
  v490 = *MEMORY[0x1E69E9840];
  v5 = (this + 16);
  v6 = (*(this + 4) + 1);
  *(this + 4) = v6;
  v7 = *(a3 + 25);
  switch(*(a3 + 25))
  {
    case 0x748:
      IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder>(a3, v419);
      if (v419[40] & 1) != 0 || (v10 = *v4, v339 = v4[1], *v4 = 0, v4[1] = 0, (v340 = v4[3]) != 0) && v339 && ((*(*v340 + 16))(v340, v10), (v419[40]))
      {
        WebKit::WebExtensionContextProxy::addPopupPageIdentifier(this, *v419, *&v419[8], *&v419[16], *&v419[24], *&v419[32]);
      }

      return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
    case 0x749:
      v96 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v97 & 1) == 0)
      {
        goto LABEL_762;
      }

      v98 = v96;
      v99 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v4);
      if ((v100 & 1) == 0)
      {
        goto LABEL_762;
      }

      v101 = v99;
      IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v4, v419);
      if ((v419[16] & 1) == 0)
      {
        goto LABEL_762;
      }

      WebKit::WebExtensionContextProxy::addTabPageIdentifier(this, v98, v101, *v419, *&v419[8]);
      return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
    case 0x74A:
      IPC::Decoder::decode<std::optional<WebKit::WebExtensionTabParameters>>(a3, v419);
      if (v424[16] == 1)
      {
        std::optional<WebKit::WebExtensionTabParameters>::optional[abi:sn200100](v462, v419);
        LOBYTE(v471) = 1;
        if ((v424[16] & 1) != 0 && v424[8] == 1)
        {
          if (v420[8] == 1)
          {
            v78 = *v420;
            *v420 = 0;
            if (v78)
            {
              if (atomic_fetch_add_explicit(v78, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v78, v77);
              }
            }
          }

          if (v419[56] == 1)
          {
            v79 = *&v419[16];
            *&v419[16] = 0;
            if (v79)
            {
              if (atomic_fetch_add_explicit(v79, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v79, v77);
              }
            }
          }
        }
      }

      else
      {
        v462[0] = 0;
        LOBYTE(v471) = 0;
      }

      if (v471 & 1) != 0 || (v10 = *v4, v335 = v4[1], *v4 = 0, v4[1] = 0, (v336 = v4[3]) != 0) && v335 && ((*(*v336 + 16))(v336, v10), (v471))
      {
        WebKit::WebExtensionContextProxy::dispatchActionClickedEvent(this, v462);
        if ((v471 & 1) != 0 && BYTE8(v470) == 1)
        {
          goto LABEL_368;
        }
      }

      return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
    case 0x74B:
      IPC::ArgumentCoder<WebKit::WebExtensionAlarmParameters,void>::decode(a3, v419);
      if ((v419[32] & 1) == 0)
      {
        v10 = *v4;
        v337 = v4[1];
        *v4 = 0;
        v4[1] = 0;
        v338 = v4[3];
        if (v338 && v337)
        {
          (*(*v338 + 16))(v338, v10);
          goto LABEL_728;
        }

        goto LABEL_639;
      }

      *&v462[8] = *&v419[8];
      *v462 = *v419;
      *&v462[24] = *&v419[24];
      v462[32] = 1;
      WebKit::WebExtensionContextProxy::dispatchAlarmsEvent(this, v462);
      if (v462[32])
      {
        v85 = *v462;
        *v462 = 0;
        if (v85)
        {
          goto LABEL_506;
        }
      }

      return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
    case 0x74C:
      IPC::ArgumentCoder<std::tuple<WTF::String,WTF::String,WTF::String>,void>::decode<IPC::Decoder>(a3, v419);
      if (v419[24] & 1) != 0 || (v10 = *v4, v333 = v4[1], *v4 = 0, v4[1] = 0, (v334 = v4[3]) != 0) && v333 && ((*(*v334 + 16))(v334, v10), (v419[24]))
      {
        WebKit::WebExtensionContextProxy::dispatchCommandsChangedEvent(this, v419, &v419[8], &v419[16]);
        if (v419[24])
        {
          v68 = *&v419[16];
          *&v419[16] = 0;
          if (v68 && atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v68, v10);
          }

          goto LABEL_399;
        }
      }

      return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
    case 0x74D:
      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, v451);
      if (v451[8] & 1) != 0 || (v387 = *v4, v388 = v4[1], *v4 = 0, v4[1] = 0, (v389 = v4[3]) != 0) && v388 && ((*(*v389 + 16))(v389, v387), (v451[8]))
      {
        IPC::Decoder::decode<std::optional<WebKit::WebExtensionTabParameters>>(v4, v462);
        if (v471 == 1)
        {
          if ((v451[8] & 1) == 0)
          {
            goto LABEL_582;
          }

          v130 = *v451;
          *v451 = 0;
          *v419 = v130;
          std::optional<WebKit::WebExtensionTabParameters>::optional[abi:sn200100](&v419[8], v462);
          v424[24] = 1;
          if ((v471 & 1) != 0 && BYTE8(v470) == 1)
          {
            if (v463[24] == 1)
            {
              v131 = *&v463[16];
              *&v463[16] = 0;
              if (v131)
              {
                if (atomic_fetch_add_explicit(v131, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v131, v129);
                }
              }
            }

            if (v463[8] == 1)
            {
              v132 = *&v462[16];
              *&v462[16] = 0;
              if (v132)
              {
                if (atomic_fetch_add_explicit(v132, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v132, v129);
                }
              }
            }
          }
        }

        else
        {
          v419[0] = 0;
          v424[24] = 0;
        }

        if (v451[8])
        {
          v260 = *v451;
          *v451 = 0;
          if (v260)
          {
            if (atomic_fetch_add_explicit(v260, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v260, v129);
            }
          }
        }
      }

      else
      {
        v419[0] = 0;
        v424[24] = 0;
      }

      if (v424[24] & 1) != 0 || (v10 = *v4, v349 = v4[1], *v4 = 0, v4[1] = 0, (v350 = v4[3]) != 0) && v349 && ((*(*v350 + 16))(v350, v10), (v424[24]))
      {
        WebKit::WebExtensionContextProxy::dispatchCommandsCommandEvent(this, v419, &v419[8]);
        if (v424[24])
        {
          if (v424[16] != 1)
          {
            goto LABEL_505;
          }

          if (v420[16] == 1)
          {
            v261 = *&v420[8];
            *&v420[8] = 0;
            if (v261)
            {
              if (atomic_fetch_add_explicit(v261, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v261, v10);
              }
            }
          }

          if (v420[0] != 1)
          {
            goto LABEL_505;
          }

          v262 = *&v419[24];
          *&v419[24] = 0;
          if (!v262)
          {
            goto LABEL_505;
          }

          goto LABEL_400;
        }
      }

      return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
    case 0x74E:
      WebKit::WebExtensionContextProxy::dispatchCookiesChangedEvent(this, v6);
      return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
    case 0x74F:
      IPC::Decoder::decode<WebKit::WebExtensionMenuItemParameters>(v440, a3);
      if (v449 != 1)
      {
        v419[0] = 0;
        v431[0] = 0;
        goto LABEL_527;
      }

      v86 = v4[1];
      v87 = v4[2];
      v88 = *v4;
      if (v86 <= &v87[-*v4])
      {
        *v4 = 0;
        v4[1] = 0;
        v413 = v4[3];
        if (v413)
        {
          if (v86)
          {
            (*(*v413 + 16))(v413);
            v86 = v4[1];
          }
        }

        else
        {
          v86 = 0;
        }

        goto LABEL_780;
      }

      v4[2] = (v87 + 1);
      if (!v87)
      {
LABEL_780:
        *v4 = 0;
        v4[1] = 0;
        v414 = v4[3];
        if (v414)
        {
          if (v86)
          {
            (*(*v414 + 16))(v414);
            v88 = *v4;
            v86 = v4[1];
            goto LABEL_783;
          }
        }

        else
        {
          v86 = 0;
        }

        v88 = 0;
LABEL_783:
        *v4 = 0;
        v4[1] = 0;
        v415 = v4[3];
        if (v415 && v86)
        {
          (*(*v415 + 16))(v415, v88);
        }

        goto LABEL_694;
      }

      v89 = *v87;
      if (v89 >= 2)
      {
        goto LABEL_783;
      }

      IPC::ArgumentCoder<WebKit::WebExtensionMenuItemContextParameters,void>::decode(v4, v451);
      if ((v459 & 1) == 0)
      {
        v88 = *v4;
        v378 = v4[1];
        *v4 = 0;
        v4[1] = 0;
        v379 = v4[3];
        if (!v379 || !v378 || ((*(*v379 + 16))(v379, v88), (v459 & 1) == 0))
        {
LABEL_694:
          v419[0] = 0;
          v431[0] = 0;
          goto LABEL_525;
        }
      }

      IPC::Decoder::decode<std::optional<WebKit::WebExtensionTabParameters>>(v4, v462);
      if (v471 == 1)
      {
        if ((v449 & 1) == 0 || (v459 & 1) == 0)
        {
          goto LABEL_582;
        }

        std::__tuple_leaf<0ul,WebKit::WebExtensionMenuItemParameters,false>::__tuple_leaf[abi:sn200100]<WebKit::WebExtensionMenuItemParameters,0>(v419, v440);
        v422[0] = v89;
        *&v422[8] = *v451;
        *v423 = *&v451[16];
        v423[16] = v451[32];
        v90 = *&v451[40];
        *&v451[40] = 0;
        *v424 = v90;
        *&v424[8] = v452;
        *&v424[24] = *v453;
        LODWORD(v452) = v452 & 0xFFFFFFFE;
        v91 = *&v453[16];
        *&v453[16] = 0;
        *&v453[24] = 0;
        *&v424[40] = v91;
        *&v424[56] = *&v453[32];
        *&v424[72] = *&v453[48];
        *&v453[32] &= ~1u;
        v92 = v454;
        v93 = v457;
        v454 = 0;
        *&v424[96] = v455;
        *&v424[112] = v456;
        LODWORD(v455) = v455 & 0xFFFFFFFE;
        v457 = 0;
        *&v424[88] = v92;
        *&v424[128] = v93;
        v424[136] = v458;
        std::optional<WebKit::WebExtensionTabParameters>::optional[abi:sn200100](&v424[144], v462);
        v431[0] = 1;
        if ((v471 & 1) != 0 && BYTE8(v470) == 1)
        {
          if (v463[24] == 1)
          {
            v94 = *&v463[16];
            *&v463[16] = 0;
            if (v94)
            {
              if (atomic_fetch_add_explicit(v94, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v94, v88);
              }
            }
          }

          if (v463[8] == 1)
          {
            v95 = *&v462[16];
            *&v462[16] = 0;
            if (v95)
            {
              if (atomic_fetch_add_explicit(v95, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v95, v88);
              }
            }
          }
        }
      }

      else
      {
        v419[0] = 0;
        v431[0] = 0;
      }

      if (v459)
      {
        v287 = v457;
        v457 = 0;
        if (v287 && atomic_fetch_add_explicit(v287, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v287, v88);
        }

        v288 = v454;
        v454 = 0;
        if (v288 && atomic_fetch_add_explicit(v288, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v288, v88);
        }

        v289 = *&v453[24];
        *&v453[24] = 0;
        if (v289 && atomic_fetch_add_explicit(v289, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v289, v88);
        }

        v290 = *&v453[16];
        *&v453[16] = 0;
        if (v290 && atomic_fetch_add_explicit(v290, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v290, v88);
        }

        v291 = *&v451[40];
        *&v451[40] = 0;
        if (v291 && atomic_fetch_add_explicit(v291, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v291, v88);
        }
      }

LABEL_525:
      if (v449)
      {
        WebKit::WebExtensionMenuItemParameters::~WebExtensionMenuItemParameters(v440, v88);
      }

LABEL_527:
      if (v431[0] & 1) != 0 || (v10 = *v4, v347 = v4[1], *v4 = 0, v4[1] = 0, (v348 = v4[3]) != 0) && v347 && ((*(*v348 + 16))(v348, v10), (v431[0]))
      {
        WebKit::WebExtensionContextProxy::dispatchMenusClickedEvent(this, v419, v422[0], &v422[8], &v424[144]);
        if (v431[0])
        {
          if (BYTE8(v430) == 1)
          {
            if (v426[24] == 1)
            {
              v292 = *&v426[16];
              *&v426[16] = 0;
              if (v292)
              {
                if (atomic_fetch_add_explicit(v292, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v292, v10);
                }
              }
            }

            if (v426[8] == 1)
            {
              v293 = *&v424[160];
              *&v424[160] = 0;
              if (v293)
              {
                if (atomic_fetch_add_explicit(v293, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v293, v10);
                }
              }
            }
          }

          v294 = *&v424[128];
          *&v424[128] = 0;
          if (v294 && atomic_fetch_add_explicit(v294, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v294, v10);
          }

          v295 = *&v424[88];
          *&v424[88] = 0;
          if (v295 && atomic_fetch_add_explicit(v295, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v295, v10);
          }

          v296 = *&v424[48];
          *&v424[48] = 0;
          if (v296 && atomic_fetch_add_explicit(v296, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v296, v10);
          }

          v297 = *&v424[40];
          *&v424[40] = 0;
          if (v297 && atomic_fetch_add_explicit(v297, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v297, v10);
          }

          v298 = *v424;
          *v424 = 0;
          if (v298 && atomic_fetch_add_explicit(v298, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v298, v10);
          }

          WebKit::WebExtensionMenuItemParameters::~WebExtensionMenuItemParameters(v419, v10);
        }
      }

      return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
    case 0x750:
      v159 = IPC::Decoder::decode<WebKit::WebExtensionEventListenerType>(a3);
      if (v159 < 0x100u)
      {
        goto LABEL_762;
      }

      v160 = v159;
      IPC::ArgumentCoder<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::decode<IPC::Decoder>(v4, v462);
      if ((v462[8] & 1) == 0)
      {
        v325 = *v4;
        v326 = v4[1];
        *v4 = 0;
        v4[1] = 0;
        v327 = v4[3];
        if (!v327)
        {
          goto LABEL_762;
        }

        if (!v326)
        {
          goto LABEL_762;
        }

        (*(*v327 + 16))(v327, v325);
        if ((v462[8] & 1) == 0)
        {
          goto LABEL_762;
        }
      }

      IPC::ArgumentCoder<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::decode<IPC::Decoder>(v4, v419);
      if ((v419[8] & 1) == 0)
      {
        v328 = *v4;
        v329 = v4[1];
        *v4 = 0;
        v4[1] = 0;
        v330 = v4[3];
        if (!v330 || !v329 || ((*(*v330 + 16))(v330, v328), (v419[8] & 1) == 0))
        {
          if ((v462[8] & 1) != 0 && *v462)
          {
            WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*v462, v328);
          }

          goto LABEL_762;
        }
      }

      if ((v462[8] & 1) == 0)
      {
        goto LABEL_582;
      }

      v161 = *v419;
      *v419 = *v462;
      *v462 = v161;
      WebKit::WebExtensionContextProxy::dispatchPermissionsEvent(this, v160, v419, v462);
      if (*v462)
      {
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*v462, v10);
      }

      if (*v419)
      {
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*v419, v10);
      }

      return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
    case 0x751:
      v72 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v73 & 1) == 0)
      {
        goto LABEL_762;
      }

      WebKit::WebExtensionContextProxy::dispatchPortDisconnectEvent(this, v72);
      return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
    case 0x752:
      IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a3, v462);
      if ((v462[16] & 1) == 0)
      {
        goto LABEL_583;
      }

      goto LABEL_217;
    case 0x753:
      v57 = IPC::Decoder::decode<WebKit::WebExtensionContentWorldType>(a3);
      if (v57 & 0x100) != 0 && (v58 = v57, v59 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v4), (v60))
      {
        v61 = v59;
        IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(v4, v440);
        if (v440[1] & 1) != 0 || (v398 = *v4, v399 = v4[1], *v4 = 0, v4[1] = 0, (v400 = v4[3]) != 0) && v399 && ((*(*v400 + 16))(v400, v398), (v440[1]))
        {
          IPC::Decoder::decode<std::optional<WebKit::WebExtensionMessageTargetParameters>>(v451, v4);
          if ((v453[0] & 1) != 0 && (IPC::Decoder::decode<WebKit::WebExtensionMessageSenderParameters>(v462, v4), BYTE8(v476) == 1))
          {
            if ((v440[1] & 1) == 0)
            {
              goto LABEL_582;
            }

            v419[0] = v58;
            v63 = v440[0];
            v440[0] = 0;
            *&v419[8] = v61;
            *&v419[16] = v63;
            *&v419[32] = *v451;
            *&v419[48] = *&v451[16];
            *v420 = *&v451[32];
            *&v420[16] = v452;
            std::__tuple_leaf<3ul,WebKit::WebExtensionMessageSenderParameters,false>::__tuple_leaf[abi:sn200100]<WebKit::WebExtensionMessageSenderParameters,0>(&v420[32], v462);
            v426[24] = 1;
            if (BYTE8(v476))
            {
              v64 = *&v473[16];
              *&v473[16] = 0;
              if (v64 && atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v64, v62);
              }

              if (BYTE8(v471) == 1)
              {
                if (v464 == 1)
                {
                  v65 = *&v463[32];
                  *&v463[32] = 0;
                  if (v65)
                  {
                    if (atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v65, v62);
                    }
                  }
                }

                if (v463[24] == 1)
                {
                  v66 = *&v462[32];
                  *&v462[32] = 0;
                  if (v66)
                  {
                    if (atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v66, v62);
                    }
                  }
                }
              }

              if (v462[8] == 1)
              {
                v67 = *v462;
                *v462 = 0;
                if (v67)
                {
                  if (atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v67, v62);
                  }
                }
              }
            }
          }

          else
          {
            v419[0] = 0;
            v426[24] = 0;
          }

          if (v440[1])
          {
            v248 = v440[0];
            v440[0] = 0;
            if (v248)
            {
              if (atomic_fetch_add_explicit(v248, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v248, v62);
              }
            }
          }
        }

        else
        {
          v419[0] = 0;
          v426[24] = 0;
        }

        if (v426[24])
        {
          goto LABEL_332;
        }
      }

      else
      {
        v419[0] = 0;
        v426[24] = 0;
      }

      v10 = *v4;
      v319 = v4[1];
      *v4 = 0;
      v4[1] = 0;
      v320 = v4[3];
      if (!v320)
      {
        goto LABEL_341;
      }

      if (!v319)
      {
        goto LABEL_341;
      }

      (*(*v320 + 16))(v320, v10);
      if ((v426[24] & 1) == 0)
      {
        goto LABEL_341;
      }

LABEL_332:
      v249 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
      if ((v10 & 1) == 0)
      {
        goto LABEL_341;
      }

      v4 = v249;
      while (1)
      {
        v250 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v251 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v251, v250 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v251 == v250)
        {
          goto LABEL_338;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_338:
      v252 = WTF::fastMalloc(v250, 0x18);
      *v252 = &unk_1F10F4608;
      v252[1] = v4;
      v252[2] = a2;
      *v462 = v252;
      if ((v426[24] & 1) == 0)
      {
        goto LABEL_582;
      }

      WebKit::WebExtensionContextProxy::dispatchRuntimeConnectEvent(this, v419[0], *&v419[8], &v419[16], &v419[32], &v420[32], v462);
      v253 = *v462;
      *v462 = 0;
      if (v253)
      {
        (*(*v253 + 8))(v253);
      }

LABEL_341:
      if (v426[24] == 1)
      {
        v254 = *&v424[160];
        *&v424[160] = 0;
        if (v254 && atomic_fetch_add_explicit(v254, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v254, v10);
        }

        if (v424[120] == 1)
        {
          if (v424[16] == 1)
          {
            v255 = *&v424[8];
            *&v424[8] = 0;
            if (v255)
            {
              if (atomic_fetch_add_explicit(v255, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v255, v10);
              }
            }
          }

          if (v424[0] == 1)
          {
            v256 = *&v422[8];
            *&v422[8] = 0;
            if (v256)
            {
              if (atomic_fetch_add_explicit(v256, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v256, v10);
              }
            }
          }
        }

        if (LOBYTE(v421[0]) == 1)
        {
          v257 = *&v420[32];
          *&v420[32] = 0;
          if (v257)
          {
            if (atomic_fetch_add_explicit(v257, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v257, v10);
            }
          }
        }

LABEL_494:
        v85 = *&v419[16];
        *&v419[16] = 0;
        if (v85)
        {
          goto LABEL_506;
        }
      }

      return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
    case 0x754:
      v69 = *(a3 + 1);
      v70 = v4[2];
      if (v69 <= &v70[-*v4])
      {
        *v4 = 0;
        v4[1] = 0;
        v409 = v4[3];
        if (v409)
        {
          if (v69)
          {
            (*(*v409 + 16))(v409);
            v69 = v4[1];
          }
        }

        else
        {
          v69 = 0;
        }
      }

      else
      {
        v4[2] = (v70 + 1);
        if (v70)
        {
          v71 = *v70;
          if (v71 < 4)
          {
            IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(v4, v419);
            if (v419[8] & 1) != 0 || (v401 = *v4, v402 = v4[1], *v4 = 0, v4[1] = 0, (v403 = v4[3]) != 0) && v402 && ((*(*v403 + 16))(v403, v401), (v419[8]))
            {
              WebKit::WebExtensionContextProxy::dispatchRuntimeInstalledEvent(this, v71, v419);
              goto LABEL_505;
            }

            goto LABEL_762;
          }

LABEL_761:
          *v4 = 0;
          v4[1] = 0;
          v411 = v4[3];
          if (v411)
          {
            goto LABEL_794;
          }

LABEL_762:
          v10 = *v4;
          v407 = v4[1];
          *v4 = 0;
          v4[1] = 0;
          v408 = v4[3];
          if (v408)
          {
LABEL_764:
            if (v407)
            {
              (*(*v408 + 16))(v408, v10);
            }
          }

          return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
        }
      }

LABEL_759:
      *v4 = 0;
      v4[1] = 0;
      v410 = v4[3];
      if (v410)
      {
        if (v69)
        {
          (*(*v410 + 16))(v410);
          v69 = v4[1];
        }
      }

      else
      {
        v69 = 0;
      }

      goto LABEL_761;
    case 0x755:
      v145 = IPC::Decoder::decode<WebKit::WebExtensionContentWorldType>(a3);
      if ((v145 & 0x100) != 0)
      {
        v146 = v145;
        IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(v4, v440);
        if (v440[1] & 1) != 0 || (v395 = *v4, v396 = v4[1], *v4 = 0, v4[1] = 0, (v397 = v4[3]) != 0) && v396 && ((*(*v397 + 16))(v397, v395), (v440[1]))
        {
          IPC::Decoder::decode<std::optional<WebKit::WebExtensionMessageTargetParameters>>(v451, v4);
          if ((v453[0] & 1) != 0 && (IPC::Decoder::decode<WebKit::WebExtensionMessageSenderParameters>(v462, v4), BYTE8(v476) == 1))
          {
            if ((v440[1] & 1) == 0)
            {
              goto LABEL_582;
            }

            v419[0] = v146;
            v148 = v440[0];
            v440[0] = 0;
            *&v419[8] = v148;
            *&v419[16] = *v451;
            *&v419[32] = *&v451[16];
            *&v419[48] = *&v451[32];
            *v420 = v452;
            std::__tuple_leaf<3ul,WebKit::WebExtensionMessageSenderParameters,false>::__tuple_leaf[abi:sn200100]<WebKit::WebExtensionMessageSenderParameters,0>(&v420[16], v462);
            v426[8] = 1;
            if (BYTE8(v476))
            {
              v149 = *&v473[16];
              *&v473[16] = 0;
              if (v149 && atomic_fetch_add_explicit(v149, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v149, v147);
              }

              if (BYTE8(v471) == 1)
              {
                if (v464 == 1)
                {
                  v150 = *&v463[32];
                  *&v463[32] = 0;
                  if (v150)
                  {
                    if (atomic_fetch_add_explicit(v150, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v150, v147);
                    }
                  }
                }

                if (v463[24] == 1)
                {
                  v151 = *&v462[32];
                  *&v462[32] = 0;
                  if (v151)
                  {
                    if (atomic_fetch_add_explicit(v151, 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v151, v147);
                    }
                  }
                }
              }

              if (v462[8] == 1)
              {
                v152 = *v462;
                *v462 = 0;
                if (v152)
                {
                  if (atomic_fetch_add_explicit(v152, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v152, v147);
                  }
                }
              }
            }
          }

          else
          {
            v419[0] = 0;
            v426[8] = 0;
          }

          if (v440[1])
          {
            v238 = v440[0];
            v440[0] = 0;
            if (v238)
            {
              if (atomic_fetch_add_explicit(v238, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v238, v147);
              }
            }
          }
        }

        else
        {
          v419[0] = 0;
          v426[8] = 0;
        }

        if (v426[8])
        {
          goto LABEL_298;
        }
      }

      else
      {
        v419[0] = 0;
        v426[8] = 0;
      }

      v10 = *v4;
      v341 = v4[1];
      *v4 = 0;
      v4[1] = 0;
      v342 = v4[3];
      if (!v342)
      {
        goto LABEL_307;
      }

      if (!v341)
      {
        goto LABEL_307;
      }

      (*(*v342 + 16))(v342, v10);
      if ((v426[8] & 1) == 0)
      {
        goto LABEL_307;
      }

LABEL_298:
      v239 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
      if ((v10 & 1) == 0)
      {
        goto LABEL_307;
      }

      v4 = v239;
      while (1)
      {
        v240 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v241 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v241, v240 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v241 == v240)
        {
          goto LABEL_304;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_304:
      v242 = WTF::fastMalloc(v240, 0x18);
      *v242 = &unk_1F10F45E0;
      v242[1] = v4;
      v242[2] = a2;
      *v462 = v242;
      if ((v426[8] & 1) == 0)
      {
        goto LABEL_582;
      }

      WebKit::WebExtensionContextProxy::dispatchRuntimeMessageEvent(this, v419[0], &v419[8], &v419[16], &v420[16], v462);
      v243 = *v462;
      *v462 = 0;
      if (v243)
      {
        (*(*v243 + 8))(v243);
      }

LABEL_307:
      if (v426[8] == 1)
      {
        v244 = *&v424[144];
        *&v424[144] = 0;
        if (v244 && atomic_fetch_add_explicit(v244, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v244, v10);
        }

        if (v424[104] == 1)
        {
          if (v424[0] == 1)
          {
            v245 = *&v423[16];
            *&v423[16] = 0;
            if (v245)
            {
              if (atomic_fetch_add_explicit(v245, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v245, v10);
              }
            }
          }

          if (v423[8] == 1)
          {
            v246 = v421[1];
            v421[1] = 0;
            if (v246)
            {
              if (atomic_fetch_add_explicit(v246, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v246, v10);
              }
            }
          }
        }

        if (v420[24] == 1)
        {
          v247 = *&v420[16];
          *&v420[16] = 0;
          if (v247)
          {
            if (atomic_fetch_add_explicit(v247, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v247, v10);
            }
          }
        }

        v85 = *&v419[8];
        *&v419[8] = 0;
        if (v85)
        {
          goto LABEL_506;
        }
      }

      return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
    case 0x756:
      WebKit::WebExtensionContextProxy::dispatchRuntimeStartupEvent(this, v6);
      return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
    case 0x757:
      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, v462);
      if ((v462[8] & 1) == 0)
      {
        v384 = *v4;
        v385 = v4[1];
        *v4 = 0;
        v4[1] = 0;
        v386 = v4[3];
        if (!v386)
        {
          goto LABEL_762;
        }

        if (!v385)
        {
          goto LABEL_762;
        }

        (*(*v386 + 16))(v386, v384);
        if ((v462[8] & 1) == 0)
        {
          goto LABEL_762;
        }
      }

      v80 = IPC::Decoder::decode<WebKit::WebExtensionDataType>(v4);
      v82 = v80;
      if (v80 > 0xFFu && (v83 = IPC::Decoder::decode<WebKit::WebExtensionContentWorldType>(v4), (v83 & 0x100) != 0))
      {
        if ((v462[8] & 1) == 0)
        {
          goto LABEL_582;
        }

        LOBYTE(v7) = v83;
        v285 = *v462;
        *v462 = 0;
        *v419 = v285;
        v419[8] = v82;
        v419[9] = v83;
        v84 = 1;
      }

      else
      {
        v84 = 0;
        v419[0] = 0;
      }

      v419[16] = v84;
      if (v462[8])
      {
        v286 = *v462;
        *v462 = 0;
        if (v286)
        {
          if (atomic_fetch_add_explicit(v286, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v286, v81);
          }
        }
      }

      if ((v84 & 1) == 0)
      {
        goto LABEL_762;
      }

      WebKit::WebExtensionContextProxy::dispatchStorageChangedEvent(this, v419, v82, v7);
LABEL_504:
      if (v419[16])
      {
        goto LABEL_505;
      }

      return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
    case 0x758:
      v34 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v35 & 1) == 0)
      {
        goto LABEL_762;
      }

      v36 = v34;
      v37 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v4);
      if ((v38 & 1) == 0)
      {
        goto LABEL_762;
      }

      v39 = v37;
      v40 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v4);
      if ((v41 & 1) == 0)
      {
        goto LABEL_762;
      }

      WebKit::WebExtensionContextProxy::dispatchTabsActivatedEvent(this, v36, v39, v40);
      return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
    case 0x759:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>>(v419, a3);
      if (v419[24] == 1)
      {
        WebKit::WebExtensionContextProxy::dispatchTabsAttachedEvent(this, *v419, *&v419[8], *&v419[16]);
      }

      return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
    case 0x75A:
      IPC::Decoder::decode<WebKit::WebExtensionTabParameters>(a3, v419);
      if (v424[8] == 1)
      {
        std::__tuple_leaf<1ul,WebKit::WebExtensionTabParameters,false>::__tuple_leaf[abi:sn200100]<WebKit::WebExtensionTabParameters,0>(v462, v419);
        BYTE8(v470) = 1;
        if (v424[8])
        {
          if (v420[8] == 1)
          {
            v154 = *v420;
            *v420 = 0;
            if (v154)
            {
              if (atomic_fetch_add_explicit(v154, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v154, v153);
              }
            }
          }

          if (v419[56] == 1)
          {
            v155 = *&v419[16];
            *&v419[16] = 0;
            if (v155)
            {
              if (atomic_fetch_add_explicit(v155, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v155, v153);
              }
            }
          }
        }
      }

      else
      {
        v462[0] = 0;
        BYTE8(v470) = 0;
      }

      v258 = BYTE8(v470);
      if ((BYTE8(v470) & 1) == 0)
      {
        v10 = *v4;
        v343 = v4[1];
        *v4 = 0;
        v4[1] = 0;
        v344 = v4[3];
        if (!v344)
        {
          return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
        }

        if (!v343)
        {
          return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
        }

        (*(*v344 + 16))(v344, v10);
        v258 = BYTE8(v470);
        if ((BYTE8(v470) & 1) == 0)
        {
          return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
        }
      }

      WebKit::WebExtensionContextProxy::dispatchTabsCreatedEvent(this, v462, v258);
      if ((BYTE8(v470) & 1) == 0)
      {
        return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
      }

LABEL_368:
      if (v463[24] == 1)
      {
        v259 = *&v463[16];
        *&v463[16] = 0;
        if (v259)
        {
          if (atomic_fetch_add_explicit(v259, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v259, v10);
          }
        }
      }

      if (v463[8] == 1)
      {
        v85 = *&v462[16];
        *&v462[16] = 0;
        if (v85)
        {
          goto LABEL_506;
        }
      }

      return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
    case 0x75B:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned long long>>(v419, a3);
      if (v419[24] == 1)
      {
        WebKit::WebExtensionContextProxy::dispatchTabsDetachedEvent(this, *v419, *&v419[8], *&v419[16]);
      }

      return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
    case 0x75C:
      IPC::Decoder::decode<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a3, v462);
      if (v462[16] != 1)
      {
        goto LABEL_762;
      }

      v126 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v4);
      if ((v127 & 1) == 0)
      {
        if (v462[16])
        {
          v265 = *v462;
          if (*v462)
          {
            *v462 = 0;
            *&v462[8] = 0;
            WTF::fastFree(v265, v127);
          }
        }

        goto LABEL_762;
      }

      if ((v462[16] & 1) == 0)
      {
        goto LABEL_582;
      }

      *v419 = *v462;
      *&v419[8] = *&v462[8];
      *&v419[16] = v126;
      v419[24] = 1;
      WebKit::WebExtensionContextProxy::dispatchTabsHighlightedEvent(this, v419, v126);
      if (v419[24])
      {
        v128 = *v419;
        if (*v419)
        {
          *v419 = 0;
          *&v419[8] = 0;
          WTF::fastFree(v128, v10);
        }
      }

      return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
    case 0x75D:
      v133 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v134 & 1) == 0)
      {
        goto LABEL_762;
      }

      v135 = v133;
      v136 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v4);
      if ((v137 & 1) == 0)
      {
        goto LABEL_762;
      }

      v69 = v4[1];
      v138 = ((v4[2] + 7) & 0xFFFFFFFFFFFFFFF8);
      v139 = *v4;
      v140 = v138 - *v4;
      v141 = v69 >= v140;
      v142 = v69 - v140;
      if (!v141 || v142 <= 7)
      {
        goto LABEL_759;
      }

      v4[2] = (v138 + 1);
      if (!v138)
      {
        goto LABEL_761;
      }

      v143 = *v138;
      v144 = ((v138 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v69 < v144 - v139 || v69 - (v144 - v139) <= 7)
      {
        goto LABEL_759;
      }

      v4[2] = (v144 + 1);
      if (!v144)
      {
        goto LABEL_761;
      }

      WebKit::WebExtensionContextProxy::dispatchTabsMovedEvent(this, v135, v136, v143, *v144);
      return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
    case 0x75E:
      v202 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v203 & 1) == 0)
      {
        goto LABEL_762;
      }

      v204 = v202;
      v205 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v4);
      if ((v206 & 1) == 0)
      {
        goto LABEL_762;
      }

      v207 = v4[1];
      v208 = v4[2];
      v209 = *v4;
      if (v207 <= &v208[-*v4])
      {
        *v4 = 0;
        v4[1] = 0;
        v416 = v4[3];
        if (v416)
        {
          if (v207)
          {
            (*(*v416 + 16))(v416);
            v207 = v4[1];
          }
        }

        else
        {
          v207 = 0;
        }
      }

      else
      {
        v4[2] = (v208 + 1);
        if (v208)
        {
          v210 = *v208;
          if (v210 < 2)
          {
            WebKit::WebExtensionContextProxy::dispatchTabsRemovedEvent(this, v204, v205, v210 & 1);
            return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
          }

          goto LABEL_791;
        }
      }

      *v4 = 0;
      v4[1] = 0;
      v417 = v4[3];
      if (v417)
      {
        if (v207)
        {
          (*(*v417 + 16))(v417);
          v209 = *v4;
          v207 = v4[1];
LABEL_791:
          *v4 = 0;
          v4[1] = 0;
          v418 = v4[3];
          if (v418)
          {
            if (v207)
            {
              (*(*v418 + 16))(v418, v209);
              v411 = v4[3];
              v69 = v4[1];
              *v4 = 0;
              v4[1] = 0;
              if (v411)
              {
LABEL_794:
                if (v69)
                {
                  (*(*v411 + 16))(v411);
                }
              }
            }
          }

          goto LABEL_762;
        }
      }

      else
      {
        v207 = 0;
      }

      v209 = 0;
      goto LABEL_791;
    case 0x75F:
      v211 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v212 & 1) == 0)
      {
        goto LABEL_762;
      }

      v213 = v211;
      v214 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v4);
      if ((v216 & 1) == 0)
      {
        goto LABEL_762;
      }

      WebKit::WebExtensionContextProxy::dispatchTabsReplacedEvent(this, v213, v214, v215);
      return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
    case 0x760:
      IPC::Decoder::decode<WebKit::WebExtensionTabParameters>(a3, v451);
      if (v458 == 1)
      {
        IPC::Decoder::decode<WebKit::WebExtensionTabParameters>(v4, v462);
        if (BYTE8(v470) == 1)
        {
          if ((v458 & 1) == 0)
          {
            goto LABEL_582;
          }

          std::__tuple_leaf<1ul,WebKit::WebExtensionTabParameters,false>::__tuple_leaf[abi:sn200100]<WebKit::WebExtensionTabParameters,0>(v419, v451);
          std::__tuple_leaf<1ul,WebKit::WebExtensionTabParameters,false>::__tuple_leaf[abi:sn200100]<WebKit::WebExtensionTabParameters,0>(&v424[8], v462);
          LOBYTE(v425) = 1;
          if (BYTE8(v470))
          {
            if (v463[24] == 1)
            {
              v75 = *&v463[16];
              *&v463[16] = 0;
              if (v75)
              {
                if (atomic_fetch_add_explicit(v75, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v75, v74);
                }
              }
            }

            if (v463[8] == 1)
            {
              v76 = *&v462[16];
              *&v462[16] = 0;
              if (v76)
              {
                if (atomic_fetch_add_explicit(v76, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v76, v74);
                }
              }
            }
          }
        }

        else
        {
          v419[0] = 0;
          LOBYTE(v425) = 0;
        }

        if (v458)
        {
          if (v453[8] == 1)
          {
            v280 = *v453;
            *v453 = 0;
            if (v280)
            {
              if (atomic_fetch_add_explicit(v280, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v280, v74);
              }
            }
          }

          if (BYTE8(v452) == 1)
          {
            v281 = *&v451[16];
            *&v451[16] = 0;
            if (v281)
            {
              if (atomic_fetch_add_explicit(v281, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v281, v74);
              }
            }
          }
        }
      }

      else
      {
        v419[0] = 0;
        LOBYTE(v425) = 0;
      }

      if (v425 & 1) != 0 || (v10 = *v4, v345 = v4[1], *v4 = 0, v4[1] = 0, (v346 = v4[3]) != 0) && v345 && ((*(*v346 + 16))(v346, v10), (v425))
      {
        WebKit::WebExtensionContextProxy::dispatchTabsUpdatedEvent(this, v419, &v424[8], v419);
        if (v425)
        {
          if (v424[80] == 1)
          {
            v282 = *&v424[72];
            *&v424[72] = 0;
            if (v282)
            {
              if (atomic_fetch_add_explicit(v282, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v282, v10);
              }
            }
          }

          if (v424[64] == 1)
          {
            v283 = *&v424[24];
            *&v424[24] = 0;
            if (v283)
            {
              if (atomic_fetch_add_explicit(v283, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v283, v10);
              }
            }
          }

          if (v420[8] == 1)
          {
            v284 = *v420;
            *v420 = 0;
            if (v284)
            {
              if (atomic_fetch_add_explicit(v284, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v284, v10);
              }
            }
          }

          if (v419[56] == 1)
          {
            goto LABEL_494;
          }
        }
      }

      return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
    case 0x761:
      IPC::Decoder::decode<std::tuple<WTF::String,WebKit::WebExtensionContentWorldType>>(v419, a3);
      if (v419[16] != 1)
      {
        return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
      }

      WebKit::WebExtensionContextProxy::dispatchTestFinishedEvent(this, v419, v419[8]);
      goto LABEL_504;
    case 0x762:
      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, v451);
      if ((v451[8] & 1) == 0)
      {
        v390 = *v4;
        v391 = v4[1];
        *v4 = 0;
        v4[1] = 0;
        v392 = v4[3];
        if (!v392)
        {
          goto LABEL_762;
        }

        if (!v391)
        {
          goto LABEL_762;
        }

        (*(*v392 + 16))(v392, v390);
        if ((v451[8] & 1) == 0)
        {
          goto LABEL_762;
        }
      }

      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(v4, v462);
      if (v462[8] & 1) != 0 || (v235 = *v4, v393 = v4[1], *v4 = 0, v4[1] = 0, (v394 = v4[3]) != 0) && v393 && ((*(*v394 + 16))(v394, v235), (v462[8]))
      {
        v234 = IPC::Decoder::decode<WebKit::WebExtensionContentWorldType>(v4);
        if ((v234 & 0x100) != 0)
        {
          if ((v451[8] & 1) == 0 || (v462[8] & 1) == 0)
          {
            goto LABEL_582;
          }

          LOBYTE(a2) = v234;
          v263 = *v451;
          *v451 = 0;
          *v419 = v263;
          *&v419[8] = *v462;
          v419[16] = v234;
          v237 = 1;
          v419[24] = 1;
        }

        else
        {
          v419[0] = 0;
          v419[24] = 0;
          if (v462[8])
          {
            v236 = *v462;
            *v462 = 0;
            if (v236)
            {
              if (atomic_fetch_add_explicit(v236, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v236, v235);
              }
            }
          }

          v237 = 0;
        }
      }

      else
      {
        v237 = 0;
        v419[0] = 0;
        v419[24] = 0;
      }

      if (v451[8])
      {
        v264 = *v451;
        *v451 = 0;
        if (v264)
        {
          if (atomic_fetch_add_explicit(v264, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v264, v235);
          }
        }
      }

      if ((v237 & 1) == 0)
      {
        goto LABEL_762;
      }

      WebKit::WebExtensionContextProxy::dispatchTestMessageEvent(this, v419, &v419[8], a2);
      if ((v419[24] & 1) == 0)
      {
        return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
      }

LABEL_399:
      v262 = *&v419[8];
      *&v419[8] = 0;
      if (v262)
      {
LABEL_400:
        if (atomic_fetch_add_explicit(v262, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v262, v10);
        }
      }

LABEL_505:
      v85 = *v419;
      *v419 = 0;
      if (v85)
      {
        goto LABEL_506;
      }

      return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
    case 0x763:
      IPC::Decoder::decode<std::tuple<WTF::String,WebKit::WebExtensionContentWorldType>>(v419, a3);
      if (v419[16] != 1)
      {
        return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
      }

      WebKit::WebExtensionContextProxy::dispatchTestStartedEvent(this, v419, v419[8]);
      goto LABEL_504;
    case 0x764:
      v217 = IPC::Decoder::decode<WebKit::WebExtensionEventListenerType>(a3);
      if (v217 < 0x100u)
      {
        goto LABEL_762;
      }

      v218 = v217;
      v219 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v4);
      if ((v221 & 1) == 0)
      {
        goto LABEL_762;
      }

      v222 = v219;
      IPC::ArgumentCoder<WebKit::WebExtensionFrameParameters,void>::decode(v4, v462, v220);
      if ((BYTE8(v464) & 1) == 0)
      {
        v361 = *v4;
        v362 = v4[1];
        *v4 = 0;
        v4[1] = 0;
        v363 = v4[3];
        if (!v363)
        {
          goto LABEL_762;
        }

        if (!v362)
        {
          goto LABEL_762;
        }

        (*(*v363 + 16))(v363, v361);
        if ((BYTE8(v464) & 1) == 0)
        {
          goto LABEL_762;
        }
      }

      v223 = IPC::Decoder::decode<WTF::Seconds>(v4);
      v225 = v224;
      if (v224)
      {
        if ((BYTE8(v464) & 1) == 0)
        {
          goto LABEL_582;
        }

        v419[0] = v218;
        *&v419[8] = v222;
        v419[16] = v462[0];
        v419[24] = 0;
        v420[0] = 0;
        if (v463[0] == 1)
        {
          v226 = *&v462[8];
          *&v462[8] = 0;
          *&v419[24] = v226;
          *&v419[32] = *&v462[16];
          *&v419[48] = *&v462[32];
          *&v462[16] &= ~1u;
          v420[0] = 1;
        }

        *&v420[8] = *&v463[8];
        *&v420[24] = *&v463[24];
        v421[0] = v464;
        v421[1] = v223;
        v3 = *&v223;
        v422[8] = 1;
        if ((v463[0] & 1) == 0)
        {
          goto LABEL_465;
        }
      }

      else
      {
        v419[0] = 0;
        v422[8] = 0;
        if ((BYTE8(v464) & 1) == 0 || (v463[0] & 1) == 0)
        {
          goto LABEL_762;
        }

        v218 = 0;
      }

      v279 = *&v462[8];
      *&v462[8] = 0;
      if (v279 && atomic_fetch_add_explicit(v279, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v279, v224);
      }

      if ((v225 & 1) == 0)
      {
        goto LABEL_762;
      }

LABEL_465:
      WebKit::WebExtensionContextProxy::dispatchWebNavigationEvent(this, v218, v222, &v419[16], v3);
      if ((v422[8] & 1) == 0 || v420[0] != 1)
      {
        return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
      }

      goto LABEL_467;
    case 0x765:
      v227 = IPC::Decoder::decode<WebKit::WebExtensionEventListenerType>(a3);
      if (v227 > 0xFFu && ((v228 = v227, IPC::ArgumentCoder<std::optional<WebKit::WebExtensionWindowParameters>,void>::decode<IPC::Decoder>(v4, v462), (v465 & 1) != 0) || (v351 = *v4, v352 = v4[1], *v4 = 0, v4[1] = 0, (v353 = v4[3]) != 0) && v352 && ((*(*v353 + 16))(v353, v351), (v465 & 1) != 0)))
      {
        v419[0] = v228;
        std::__optional_move_base<WebKit::WebExtensionWindowParameters,false>::__optional_move_base[abi:sn200100](&v419[8], v462);
        LOBYTE(v421[1]) = 1;
        if ((v465 & 1) == 0)
        {
          goto LABEL_275;
        }

        if (BYTE8(v464) != 1)
        {
          goto LABEL_275;
        }

        if ((v462[40] & 1) == 0)
        {
          goto LABEL_275;
        }

        WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v462[24], v229);
        if (v421[1])
        {
          goto LABEL_275;
        }
      }

      else
      {
        v419[0] = 0;
        LOBYTE(v421[1]) = 0;
      }

      v10 = *v4;
      v354 = v4[1];
      *v4 = 0;
      v4[1] = 0;
      v355 = v4[3];
      if (!v355)
      {
        return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
      }

      if (!v354)
      {
        return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
      }

      (*(*v355 + 16))(v355, v10);
      if ((v421[1] & 1) == 0)
      {
        return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
      }

LABEL_275:
      WebKit::WebExtensionContextProxy::dispatchWindowsEvent(this, v419[0], &v419[8]);
      if ((v421[1] & 1) != 0 && LOBYTE(v421[0]) == 1 && v419[48] == 1)
      {
        WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v419[32], v10);
      }

      return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
    case 0x766:
      v162 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v163 & 1) != 0 && (v164 = v162, v165 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v4), (v166))
      {
        v167 = v165;
        IPC::ArgumentCoder<WebCore::ResourceResponse,void>::decode(v4, v462);
        if (v475 & 1) != 0 || (v372 = *v4, v373 = v4[1], *v4 = 0, v4[1] = 0, (v374 = v4[3]) != 0) && v373 && ((*(*v374 + 16))(v374, v372), (v475))
        {
          IPC::Decoder::decode<WebCore::ResourceError>(v4, v440);
          if (BYTE8(v445) == 1)
          {
            IPC::Decoder::decode<WebKit::ResourceLoadInfo>(v4, v451);
            if (v454 == 1)
            {
              if ((v475 & 1) == 0 || (BYTE8(v445) & 1) == 0)
              {
                goto LABEL_582;
              }

              *v419 = v164;
              *&v419[8] = v167;
              v169 = *v462;
              v170 = *&v462[40];
              *v462 = 0;
              *&v419[16] = v169;
              *&v419[24] = *&v462[8];
              *&v419[40] = *&v462[24];
              *&v462[8] &= ~1u;
              *&v462[40] = 0;
              *&v419[56] = v170;
              *v420 = *v463;
              v171 = *&v463[8];
              memset(&v463[8], 0, 32);
              *&v420[8] = v171;
              *&v420[24] = *&v463[24];
              v172 = *(&v464 + 1);
              v421[0] = v464;
              v464 = 0uLL;
              v421[1] = v172;
              v173 = *(&v465 + 1);
              *v422 = v465;
              v465 = 0uLL;
              *&v422[8] = v173;
              v422[16] = 0;
              v423[0] = 0;
              if (v467 == 1)
              {
                v309 = v466;
                v466 = 0;
                *&v422[16] = v309;
                v423[0] = 1;
              }

              *&v423[8] = v468;
              v423[10] = BYTE2(v468);
              *&v424[32] = v471;
              *&v424[48] = v472;
              *&v424[64] = *v473;
              *&v424[75] = *&v473[11];
              *v424 = v469;
              *&v424[16] = v470;
              v174 = *(&v468 + 1);
              v175 = v474;
              *(&v468 + 1) = 0;
              *&v474 = 0;
              *&v423[16] = v174;
              *&v424[96] = v175;
              v424[104] = BYTE8(v474);
              v176 = *v440;
              v440[0] = 0;
              v440[1] = 0;
              *&v424[112] = v176;
              *&v424[128] = v441;
              *&v424[144] = v442;
              LODWORD(v441) = v441 & 0xFFFFFFFE;
              *&v424[160] = v443[0];
              *&v424[172] = WORD2(v443[1]);
              *&v424[168] = v443[1];
              v177 = v444;
              v443[0] = 0;
              v444 = 0;
              *&v424[176] = v177;
              LOBYTE(v425) = v445;
              *&v426[40] = *&v451[32];
              *v427 = v452;
              *&v426[8] = *v451;
              *&v426[24] = *&v451[16];
              v178 = *v453;
              *v453 = 0;
              v428 = *&v453[8];
              *v429 = *&v453[24];
              *&v453[8] &= ~1u;
              *&v427[16] = v178;
              WORD4(v430) = *&v453[56];
              v179 = 1;
              *&v429[16] = *&v453[40];
              *&v430 = *&v453[48];
            }

            else
            {
              v179 = 0;
              v419[0] = 0;
            }

            v431[0] = v179;
            if (BYTE8(v445))
            {
              v313 = v444;
              v444 = 0;
              if (v313)
              {
                CFRelease(v313);
              }

              v314 = v443[0];
              v443[0] = 0;
              if (v314 && atomic_fetch_add_explicit(v314, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v314, v168);
              }

              v315 = v440[1];
              v440[1] = 0;
              if (v315 && atomic_fetch_add_explicit(v315, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v315, v168);
              }

              v316 = v440[0];
              v440[0] = 0;
              if (v316 && atomic_fetch_add_explicit(v316, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v316, v168);
              }
            }
          }

          else
          {
            v419[0] = 0;
            v431[0] = 0;
          }

          if (v475)
          {
            v299 = v474;
            *&v474 = 0;
            if (v299)
            {
              CFRelease(v299);
            }

            WebCore::ResourceResponseBase::~ResourceResponseBase(v462, v168);
          }
        }

        else
        {
          v419[0] = 0;
          v431[0] = 0;
        }

        if (v431[0])
        {
LABEL_561:
          WebKit::WebExtensionContextProxy::resourceLoadDidCompleteWithError(this, *v419, *&v419[8], &v419[16], &v424[112], &v426[8]);
          if ((v431[0] & 1) == 0)
          {
            return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
          }

          v300 = *&v429[16];
          *&v429[16] = 0;
          if (v300 && atomic_fetch_add_explicit(v300, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v300, v10);
          }

          v301 = *&v427[16];
          *&v427[16] = 0;
          if (v301 && atomic_fetch_add_explicit(v301, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v301, v10);
          }

          v302 = *&v424[176];
          *&v424[176] = 0;
          if (v302)
          {
            CFRelease(v302);
          }

          v303 = *&v424[160];
          *&v424[160] = 0;
          if (v303 && atomic_fetch_add_explicit(v303, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v303, v10);
          }

          v304 = *&v424[120];
          *&v424[120] = 0;
          if (v304 && atomic_fetch_add_explicit(v304, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v304, v10);
          }

          v272 = *&v424[112];
          *&v424[112] = 0;
          if (!v272)
          {
            goto LABEL_579;
          }

          goto LABEL_577;
        }
      }

      else
      {
        v419[0] = 0;
        v431[0] = 0;
      }

      v10 = *v4;
      v323 = v4[1];
      *v4 = 0;
      v4[1] = 0;
      v324 = v4[3];
      if (!v324)
      {
        return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
      }

      if (!v323)
      {
        return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
      }

      (*(*v324 + 16))(v324, v10);
      if ((v431[0] & 1) == 0)
      {
        return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
      }

      goto LABEL_561;
    case 0x767:
      v102 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v103 & 1) != 0 && (v104 = v102, v105 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v4), (v106))
      {
        v107 = v105;
        IPC::ArgumentCoder<WebCore::ResourceResponse,void>::decode(v4, v462);
        if (v475 & 1) != 0 || (v369 = *v4, v370 = v4[1], *v4 = 0, v4[1] = 0, (v371 = v4[3]) != 0) && v370 && ((*(*v371 + 16))(v371, v369), (v475))
        {
          IPC::Decoder::decode<WebKit::ResourceLoadInfo>(v4, v440);
          if (v450 == 1)
          {
            IPC::ArgumentCoder<WebCore::ResourceRequest,void>::decode(v4, v451);
            if (v461 & 1) != 0 || (v108 = *v4, v382 = v4[1], *v4 = 0, v4[1] = 0, (v383 = v4[3]) != 0) && v382 && ((*(*v383 + 16))(v383, v108), (v461))
            {
              if ((v475 & 1) == 0 || (v450 & 1) == 0)
              {
                goto LABEL_582;
              }

              *v419 = v104;
              *&v419[8] = v107;
              v109 = *v462;
              v110 = *&v462[40];
              *v462 = 0;
              *&v419[16] = v109;
              *&v419[24] = *&v462[8];
              *&v419[40] = *&v462[24];
              *&v462[8] &= ~1u;
              *&v462[40] = 0;
              *&v419[56] = v110;
              *v420 = *v463;
              v111 = *&v463[8];
              memset(&v463[8], 0, 32);
              *&v420[8] = v111;
              *&v420[24] = *&v463[24];
              v112 = *(&v464 + 1);
              v421[0] = v464;
              v464 = 0uLL;
              v421[1] = v112;
              v113 = *(&v465 + 1);
              *v422 = v465;
              v465 = 0uLL;
              *&v422[8] = v113;
              v422[16] = 0;
              v423[0] = 0;
              if (v467 == 1)
              {
                v308 = v466;
                v466 = 0;
                *&v422[16] = v308;
                v423[0] = 1;
              }

              *&v423[8] = v468;
              v423[10] = BYTE2(v468);
              *&v424[32] = v471;
              *&v424[48] = v472;
              *&v424[64] = *v473;
              *&v424[75] = *&v473[11];
              *v424 = v469;
              *&v424[16] = v470;
              v114 = *(&v468 + 1);
              v115 = v474;
              *(&v468 + 1) = 0;
              *&v474 = 0;
              *&v423[16] = v114;
              *&v424[96] = v115;
              v424[104] = BYTE8(v474);
              *&v424[120] = *v440;
              *&v424[136] = v441;
              *&v424[152] = v442;
              *&v424[168] = *v443;
              v116 = v444;
              v117 = v447;
              v444 = 0;
              *v426 = v445;
              *&v426[16] = v446;
              LODWORD(v445) = v445 & 0xFFFFFFFE;
              v447 = 0;
              v425 = v116;
              *&v426[48] = v449;
              *&v426[32] = v117;
              *&v426[40] = v448;
              v118 = *v451;
              v119 = *&v451[40];
              *v451 = 0;
              *&v427[8] = *&v451[8];
              v428 = *&v451[24];
              *&v451[8] &= ~1u;
              *&v451[40] = 0;
              *v427 = v118;
              *v429 = v119;
              *&v429[8] = v452;
              v430 = *v453;
              LODWORD(v452) = v452 & 0xFFFFFFFE;
              v120 = *&v453[24];
              memset(&v453[24], 0, 40);
              *&v431[8] = v120;
              *v431 = *&v453[16];
              *&v431[24] = *&v453[40];
              *v432 = *&v453[48];
              v121 = v454;
              v454 = 0;
              *&v432[16] = v121;
              *&v120 = v455;
              *&v455 = 0;
              *&v433 = v120;
              BYTE12(v433) = BYTE12(v455);
              DWORD2(v433) = DWORD2(v455);
              v122 = v456;
              v456 = 0uLL;
              v434 = v122;
              v435 = v457;
              v437 = v459;
              v436 = v458;
              v123 = v460;
              v457 = 0;
              v460 = 0;
              v438 = v123;
              v439 = 1;
              if (v461)
              {
                WebCore::ResourceRequest::~ResourceRequest(v451);
              }
            }

            else
            {
              v419[0] = 0;
              v439 = 0;
            }

            if (v450)
            {
              v124 = v447;
              v447 = 0;
              if (v124 && atomic_fetch_add_explicit(v124, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v124, v108);
              }

              v125 = v444;
              v444 = 0;
              if (v125 && atomic_fetch_add_explicit(v125, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v125, v108);
              }
            }
          }

          else
          {
            v419[0] = 0;
            v439 = 0;
          }

          if (v475)
          {
            v270 = v474;
            *&v474 = 0;
            if (v270)
            {
              CFRelease(v270);
            }

            WebCore::ResourceResponseBase::~ResourceResponseBase(v462, v108);
          }
        }

        else
        {
          v419[0] = 0;
          v439 = 0;
        }

        if (v439)
        {
LABEL_432:
          WebKit::WebExtensionContextProxy::resourceLoadDidPerformHTTPRedirection(this, *v419, *&v419[8], &v419[16], &v424[120], v427);
          if ((v439 & 1) == 0)
          {
            return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
          }

          WebCore::ResourceRequest::~ResourceRequest(v427);
LABEL_434:
          v271 = *&v426[32];
          *&v426[32] = 0;
          if (v271 && atomic_fetch_add_explicit(v271, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v271, v10);
          }

          v272 = v425;
          v425 = 0;
          if (!v272)
          {
            goto LABEL_579;
          }

LABEL_577:
          if (atomic_fetch_add_explicit(v272, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v272, v10);
          }

LABEL_579:
          v305 = *&v424[96];
          *&v424[96] = 0;
          if (v305)
          {
            CFRelease(v305);
          }

          WebCore::ResourceResponseBase::~ResourceResponseBase(&v419[16], v10);
          return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
        }
      }

      else
      {
        v419[0] = 0;
        v439 = 0;
      }

      v10 = *v4;
      v321 = v4[1];
      *v4 = 0;
      v4[1] = 0;
      v322 = v4[3];
      if (!v322)
      {
        return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
      }

      if (!v321)
      {
        return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
      }

      (*(*v322 + 16))(v322, v10);
      if ((v439 & 1) == 0)
      {
        return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
      }

      goto LABEL_432;
    case 0x768:
      v180 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v181 & 1) != 0 && (v182 = v180, v183 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v4), (v184) && ((v185 = v183, IPC::ArgumentCoder<WebCore::AuthenticationChallenge,void>::decode(v4, v462), (v489) || (v356 = *v4, v357 = v4[1], *v4 = 0, v4[1] = 0, (v358 = v4[3]) != 0) && v357 && ((*(*v358 + 16))(v358, v356), (v489)))
      {
        IPC::Decoder::decode<WebKit::ResourceLoadInfo>(v4, v451);
        if (v454 == 1)
        {
          if ((v489 & 1) == 0)
          {
            goto LABEL_582;
          }

          *v419 = v182;
          *&v419[8] = v185;
          v419[16] = v462[0];
          v187 = *&v462[8];
          *&v462[8] = 0u;
          *&v419[24] = v187;
          *&v419[40] = *&v462[24];
          *&v419[43] = *&v462[27];
          v188 = *&v462[32];
          *&v462[32] = 0u;
          *&v419[48] = v188;
          *v420 = *v463;
          v420[8] = v463[8];
          v189 = *&v463[16];
          *v463 = 0;
          *&v463[16] = 0;
          *&v420[16] = v189;
          *&v420[24] = *&v463[24];
          v190 = *&v463[32];
          v191 = v466;
          *&v463[32] = 0;
          *&v420[32] = v190;
          *v421 = v464;
          *v422 = v465;
          LODWORD(v464) = v464 & 0xFFFFFFFE;
          v466 = 0;
          *&v422[16] = v191;
          *v423 = v467;
          v192 = v468;
          v468 = 0u;
          *&v423[8] = v192;
          v193 = v469;
          v469 = 0u;
          *v424 = v193;
          v194 = *(&v470 + 1);
          *&v424[16] = v470;
          v470 = 0uLL;
          *&v424[24] = v194;
          v195 = *(&v471 + 1);
          *&v424[32] = v471;
          v471 = 0uLL;
          *&v424[40] = v195;
          v424[48] = 0;
          v424[56] = 0;
          if (BYTE8(v472) == 1)
          {
            v307 = v472;
            *&v472 = 0;
            *&v424[48] = v307;
            v424[56] = 1;
          }

          *&v424[64] = *v473;
          v424[66] = v473[2];
          *&v424[96] = v474;
          *&v424[112] = v475;
          *&v424[128] = v476;
          *&v424[144] = v477[0];
          *&v424[155] = *(v477 + 11);
          *&v424[80] = *&v473[16];
          v196 = *&v473[8];
          v197 = v478;
          *&v473[8] = 0;
          v478 = 0;
          *&v424[72] = v196;
          *&v424[176] = v197;
          LOBYTE(v425) = v479;
          v198 = v480;
          v480 = 0uLL;
          *v426 = v198;
          *&v426[16] = v481;
          *&v426[32] = v482;
          LODWORD(v481) = v481 & 0xFFFFFFFE;
          *&v426[48] = v483;
          *&v427[4] = v485;
          *v427 = v484;
          v199 = v486;
          v483 = 0;
          v486 = 0;
          *&v427[8] = v199;
          v427[16] = v487;
          v200 = v488;
          v488 = 0uLL;
          v428 = v200;
          *v431 = *&v451[32];
          *&v431[16] = v452;
          *&v429[8] = *v451;
          v430 = *&v451[16];
          v201 = *v453;
          *v453 = 0;
          *v432 = v201;
          *&v432[8] = *&v453[8];
          v433 = *&v453[24];
          *&v453[8] &= ~1u;
          v434 = *&v453[40];
          LOWORD(v435) = *&v453[56];
          LOBYTE(v436) = 1;
          if ((v489 & 1) == 0)
          {
            goto LABEL_446;
          }

          *(&v488 + 1) = 0;
        }

        else
        {
          v419[0] = 0;
          LOBYTE(v436) = 0;
          if ((v489 & 1) == 0)
          {
            goto LABEL_673;
          }

          v273 = *(&v488 + 1);
          *(&v488 + 1) = 0;
          if (v273)
          {
            CFRelease(v273);
          }
        }

        v274 = v488;
        *&v488 = 0;
        if (v274)
        {
          CFRelease(v274);
        }

        WebCore::AuthenticationChallengeBase::~AuthenticationChallengeBase(v462, v186);
        if (v436)
        {
          goto LABEL_446;
        }
      }

      else
      {
        v419[0] = 0;
        LOBYTE(v436) = 0;
      }

LABEL_673:
      v10 = *v4;
      v359 = v4[1];
      *v4 = 0;
      v4[1] = 0;
      v360 = v4[3];
      if (!v360)
      {
        return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
      }

      if (!v359)
      {
        return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
      }

      (*(*v360 + 16))(v360, v10);
      if ((v436 & 1) == 0)
      {
        return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
      }

LABEL_446:
      WebKit::WebExtensionContextProxy::resourceLoadDidReceiveChallenge(this, *v419, *&v419[8], &v419[16], &v429[8]);
      if (v436)
      {
        v275 = v434;
        *&v434 = 0;
        if (v275 && atomic_fetch_add_explicit(v275, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v275, v10);
        }

        v276 = *v432;
        *v432 = 0;
        if (v276 && atomic_fetch_add_explicit(v276, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v276, v10);
        }

        v277 = *(&v428 + 1);
        *(&v428 + 1) = 0;
        if (v277)
        {
          CFRelease(v277);
        }

        v278 = v428;
        *&v428 = 0;
        if (v278)
        {
          CFRelease(v278);
        }

        WebCore::AuthenticationChallengeBase::~AuthenticationChallengeBase(&v419[16], v10);
      }

      return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
    case 0x769:
      v42 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v43 & 1) != 0 && (v44 = v42, v45 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v4), (v46) && ((v47 = v45, IPC::ArgumentCoder<WebCore::ResourceResponse,void>::decode(v4, v462), (v475) || (v364 = *v4, v365 = v4[1], *v4 = 0, v4[1] = 0, (v366 = v4[3]) != 0) && v365 && ((*(*v366 + 16))(v366, v364), (v475)))
      {
        IPC::Decoder::decode<WebKit::ResourceLoadInfo>(v4, v451);
        if (v454 == 1)
        {
          if ((v475 & 1) == 0)
          {
            goto LABEL_582;
          }

          *v419 = v44;
          *&v419[8] = v47;
          v49 = *v462;
          v50 = *&v462[40];
          *v462 = 0;
          *&v419[16] = v49;
          *&v419[24] = *&v462[8];
          *&v419[40] = *&v462[24];
          *&v462[8] &= ~1u;
          *&v462[40] = 0;
          *&v419[56] = v50;
          *v420 = *v463;
          v51 = *&v463[8];
          memset(&v463[8], 0, 32);
          *&v420[8] = v51;
          *&v420[24] = *&v463[24];
          v52 = *(&v464 + 1);
          v421[0] = v464;
          v464 = 0uLL;
          v421[1] = v52;
          v53 = *(&v465 + 1);
          *v422 = v465;
          v465 = 0uLL;
          *&v422[8] = v53;
          v422[16] = 0;
          v423[0] = 0;
          if (v467 == 1)
          {
            v306 = v466;
            v466 = 0;
            *&v422[16] = v306;
            v423[0] = 1;
          }

          *&v423[8] = v468;
          v423[10] = BYTE2(v468);
          *&v424[32] = v471;
          *&v424[48] = v472;
          *&v424[64] = *v473;
          *&v424[75] = *&v473[11];
          *v424 = v469;
          *&v424[16] = v470;
          v54 = *(&v468 + 1);
          v55 = v474;
          *(&v468 + 1) = 0;
          *&v474 = 0;
          *&v423[16] = v54;
          *&v424[96] = v55;
          v424[104] = BYTE8(v474);
          *&v424[120] = *v451;
          *&v424[136] = *&v451[16];
          *&v424[152] = *&v451[32];
          *&v424[168] = v452;
          v56 = *v453;
          *v453 = 0;
          *v426 = *&v453[8];
          *&v426[16] = *&v453[24];
          v425 = v56;
          *&v426[48] = *&v453[56];
          *&v426[32] = *&v453[40];
          *&v426[40] = *&v453[48];
          v427[0] = 1;
          if ((v475 & 1) == 0)
          {
            goto LABEL_424;
          }

          *&v474 = 0;
        }

        else
        {
          v419[0] = 0;
          v427[0] = 0;
          if ((v475 & 1) == 0)
          {
            goto LABEL_683;
          }

          v269 = v474;
          *&v474 = 0;
          if (v269)
          {
            CFRelease(v269);
          }
        }

        WebCore::ResourceResponseBase::~ResourceResponseBase(v462, v48);
        if (v427[0])
        {
          goto LABEL_424;
        }
      }

      else
      {
        v419[0] = 0;
        v427[0] = 0;
      }

LABEL_683:
      v10 = *v4;
      v367 = v4[1];
      *v4 = 0;
      v4[1] = 0;
      v368 = v4[3];
      if (!v368)
      {
        return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
      }

      if (!v367)
      {
        return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
      }

      (*(*v368 + 16))(v368, v10);
      if ((v427[0] & 1) == 0)
      {
        return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
      }

LABEL_424:
      WebKit::WebExtensionContextProxy::resourceLoadDidReceiveResponse(this, *v419, *&v419[8], &v419[16], &v424[120]);
      if (v427[0])
      {
        goto LABEL_434;
      }

      return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
    case 0x76A:
      v13 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v14 & 1) != 0 && (v15 = v13, v16 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v4), (v17))
      {
        v18 = v16;
        IPC::ArgumentCoder<WebCore::ResourceRequest,void>::decode(v4, v462);
        if (v472 & 1) != 0 || (v375 = *v4, v376 = v4[1], *v4 = 0, v4[1] = 0, (v377 = v4[3]) != 0) && v376 && ((*(*v377 + 16))(v377, v375), (v472))
        {
          IPC::Decoder::decode<WebKit::ResourceLoadInfo>(v4, v451);
          if (v454 == 1)
          {
            IPC::ArgumentCoder<std::optional<IPC::FormDataReference>,void>::decode<IPC::Decoder>(v4, v440);
            if (v441 & 1) != 0 || (v19 = *v4, v380 = v4[1], *v4 = 0, v4[1] = 0, (v381 = v4[3]) != 0) && v380 && ((*(*v381 + 16))(v381, v19), (v441))
            {
              if ((v472 & 1) == 0 || (v454 & 1) == 0)
              {
LABEL_582:
                while (1)
                {
                  __break(1u);
LABEL_583:
                  v310 = *v4;
                  v311 = v4[1];
                  *v4 = 0;
                  v4[1] = 0;
                  v312 = v4[3];
                  if (!v312)
                  {
                    goto LABEL_762;
                  }

                  if (!v311)
                  {
                    goto LABEL_762;
                  }

                  (*(*v312 + 16))(v312, v310);
                  if ((v462[16] & 1) == 0)
                  {
                    goto LABEL_762;
                  }

LABEL_217:
                  v156 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v4);
                  if ((v157 & 1) == 0)
                  {
                    goto LABEL_762;
                  }

                  v158 = v156;
                  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(v4, v451);
                  if ((v451[8] & 1) == 0)
                  {
                    v404 = *v4;
                    v405 = v4[1];
                    *v4 = 0;
                    v4[1] = 0;
                    v406 = v4[3];
                    if (!v406)
                    {
                      goto LABEL_762;
                    }

                    if (!v405)
                    {
                      goto LABEL_762;
                    }

                    (*(*v406 + 16))(v406, v404);
                    if ((v451[8] & 1) == 0)
                    {
                      goto LABEL_762;
                    }
                  }

                  if (v462[16])
                  {
                    *v419 = *v462;
                    *&v419[16] = v158;
                    *&v419[24] = *v451;
                    v419[32] = 1;
                    WebKit::WebExtensionContextProxy::dispatchPortMessageEvent(this, *v462, v462[8], v158, &v419[24]);
                    if ((v419[32] & 1) == 0)
                    {
                      return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
                    }

LABEL_467:
                    v85 = *&v419[24];
                    *&v419[24] = 0;
                    if (v85)
                    {
LABEL_506:
                      if (atomic_fetch_add_explicit(v85, 0xFFFFFFFE, memory_order_relaxed) == 2)
                      {
                        WTF::StringImpl::destroy(v85, v10);
                      }
                    }

                    return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
                  }
                }
              }

              *v419 = v15;
              *&v419[8] = v18;
              v20 = *v462;
              v21 = *&v462[40];
              *v462 = 0;
              *&v419[16] = v20;
              *&v419[24] = *&v462[8];
              *&v419[40] = *&v462[24];
              *&v462[8] &= ~1u;
              *&v462[40] = 0;
              *&v419[56] = v21;
              *v420 = *v463;
              *&v420[16] = *&v463[16];
              *v463 &= ~1u;
              *&v420[32] = *&v463[32];
              v22 = v464;
              v464 = 0u;
              *v421 = v22;
              v23 = *(&v465 + 1);
              *v422 = v465;
              v465 = 0uLL;
              *&v422[8] = v23;
              v24 = v466;
              v466 = 0;
              *&v422[16] = v24;
              v25 = v467;
              v467 = 0;
              *v423 = v25;
              v26 = v468;
              *&v468 = 0;
              *&v423[8] = v26;
              v423[20] = BYTE12(v468);
              *&v423[16] = DWORD2(v468);
              v27 = v469;
              v469 = 0u;
              *v424 = v27;
              v424[32] = v471;
              *&v424[16] = v470;
              v28 = *(&v471 + 1);
              *&v470 = 0;
              *(&v471 + 1) = 0;
              *&v424[40] = v28;
              *&v424[88] = *&v451[32];
              *&v424[104] = v452;
              *&v424[56] = *v451;
              *&v424[72] = *&v451[16];
              v29 = *v453;
              v30 = *&v453[40];
              *v453 = 0;
              *&v424[128] = *&v453[8];
              *&v424[144] = *&v453[24];
              *&v453[8] &= ~1u;
              *&v453[40] = 0;
              *&v424[120] = v29;
              *&v424[176] = *&v453[56];
              *&v424[160] = v30;
              *&v424[168] = *&v453[48];
              LOBYTE(v425) = 0;
              v426[0] = 0;
              v31 = 1;
              if (LOBYTE(v440[1]) == 1)
              {
                v425 = v440[0];
                v426[0] = 1;
              }
            }

            else
            {
              v31 = 0;
              v419[0] = 0;
            }

            v426[8] = v31;
            if (v454)
            {
              v32 = *&v453[40];
              *&v453[40] = 0;
              if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v32, v19);
              }

              v33 = *v453;
              *v453 = 0;
              if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v33, v19);
              }
            }
          }

          else
          {
            v419[0] = 0;
            v426[8] = 0;
          }

          if (v472)
          {
            WebCore::ResourceRequest::~ResourceRequest(v462);
          }
        }

        else
        {
          v419[0] = 0;
          v426[8] = 0;
        }

        if (v426[8])
        {
LABEL_409:
          WebKit::WebExtensionContextProxy::resourceLoadDidSendRequest(this, *v419, *&v419[8], &v419[16], &v424[56], &v425);
          if (v426[8])
          {
            if (v426[0] == 1)
            {
              v266 = v425;
              v425 = 0;
              if (v266)
              {
                WTF::RefCounted<WebCore::FormData>::deref(v266);
              }
            }

            v267 = *&v424[160];
            *&v424[160] = 0;
            if (v267 && atomic_fetch_add_explicit(v267, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v267, v10);
            }

            v268 = *&v424[120];
            *&v424[120] = 0;
            if (v268 && atomic_fetch_add_explicit(v268, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v268, v10);
            }

            WebCore::ResourceRequest::~ResourceRequest(&v419[16]);
          }

          return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
        }
      }

      else
      {
        v419[0] = 0;
        v426[8] = 0;
      }

      v10 = *v4;
      v317 = v4[1];
      *v4 = 0;
      v4[1] = 0;
      v318 = v4[3];
      if (!v318)
      {
        return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
      }

      if (!v317)
      {
        return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
      }

      (*(*v318 + 16))(v318, v10);
      if ((v426[8] & 1) == 0)
      {
        return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
      }

      goto LABEL_409;
    case 0x76B:
      v11 = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a3);
      if (v10)
      {
        WebKit::WebExtensionContextProxy::setBackgroundPageIdentifier(this, v11);
      }

      return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
    case 0x76C:
      v12 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
      if ((v12 & 0x100) != 0)
      {
        *(this + 128) = v12 & 1;
      }

      return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
    case 0x76D:
      IPC::ArgumentCoder<WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::decode<IPC::Decoder>(a3, v419);
      if (v419[8])
      {
        goto LABEL_5;
      }

      v10 = *v4;
      v331 = v4[1];
      *v4 = 0;
      v4[1] = 0;
      v332 = v4[3];
      if (!v332 || !v331)
      {
LABEL_639:
        *v4 = 0;
        v4[1] = 0;
        return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
      }

      (*(*v332 + 16))(v332, v10);
      if (v419[8])
      {
LABEL_5:
        *v462 = *v419;
        v462[8] = 1;
        WebKit::WebExtensionContextProxy::updateGrantedPermissions(this, v462);
        if ((v462[8] & 1) != 0 && *v462)
        {
          WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*v462, v10);
        }
      }

      else
      {
LABEL_728:
        v10 = *v4;
        v407 = v4[1];
        v408 = v4[3];
        *v4 = 0;
        v4[1] = 0;
        if (v408)
        {
          goto LABEL_764;
        }
      }

      return WTF::RefCounted<WebKit::WebExtensionContextProxy>::deref(v5, v10);
    default:
      v230 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v7 >= 0x107F)
        {
          v231 = 4223;
        }

        else
        {
          v231 = v7;
        }

        v232 = (&IPC::Detail::messageDescriptions)[3 * v231];
        v233 = v4[7];
        *v419 = 136315394;
        *&v419[4] = v232;
        *&v419[12] = 2048;
        *&v419[14] = v233;
        _os_log_error_impl(&dword_19D52D000, v230, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", v419, 0x16u);
      }

      goto LABEL_762;
  }
}

void WebKit::WebExtensionContext::~WebExtensionContext(WebKit::WebExtensionContext *this)
{
  WebKit::WebExtensionContext::~WebExtensionContext(this);

  JUMPOUT(0x19EB14CF0);
}

{
  *this = &unk_1F10F4630;
  *(this + 2) = &unk_1F10F4670;
  v2 = *(this + 108);
  v3 = *(this + 218);
  v4 = *(this + 106);
  v5 = *(this + 107);
  v6 = (v5 - v4);
  if (v5 >= v4)
  {
    v5 = (v3 - v4);
    if (v3 < v4)
    {
      goto LABEL_30;
    }

    if (v6 == -1)
    {
      v6 = (v3 - v4);
    }

    else if (v5 < v6)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (v5 > v3)
    {
      goto LABEL_30;
    }

    WTF::VectorTypeOperations<WebKit::WebExtensionContext::TestMessage>::destruct(*(this + 108), v5);
    v4 = *(this + 106);
    v6 = (v3 - v4);
    if (v3 < v4)
    {
      goto LABEL_30;
    }
  }

  WTF::VectorTypeOperations<WebKit::WebExtensionContext::TestMessage>::destruct((v2 + 16 * v4), v6);
  v8 = *(this + 108);
  if (v8)
  {
    *(this + 108) = 0;
    *(this + 218) = 0;
    WTF::fastFree(v8, v7);
  }

  v2 = *(this + 104);
  v9 = *(this + 210);
  v4 = *(this + 102);
  v5 = *(this + 103);
  v10 = (v5 - v4);
  if (v5 >= v4)
  {
    v5 = (v9 - v4);
    if (v9 < v4)
    {
      goto LABEL_30;
    }

    if (v10 == -1)
    {
      v10 = (v9 - v4);
    }

    else if (v5 < v10)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (v5 > v9)
    {
      goto LABEL_30;
    }

    WTF::VectorTypeOperations<WebKit::WebExtensionContext::TestMessage>::destruct(*(this + 104), *(this + 103));
    v4 = *(this + 102);
    v10 = (v9 - v4);
    if (v9 < v4)
    {
      goto LABEL_30;
    }
  }

  WTF::VectorTypeOperations<WebKit::WebExtensionContext::TestMessage>::destruct((v2 + 16 * v4), v10);
  v12 = *(this + 104);
  if (v12)
  {
    *(this + 104) = 0;
    *(this + 210) = 0;
    WTF::fastFree(v12, v11);
  }

  v2 = *(this + 100);
  v13 = *(this + 202);
  v4 = *(this + 98);
  v5 = *(this + 99);
  v14 = (v5 - v4);
  if (v5 >= v4)
  {
    v5 = (v13 - v4);
    if (v13 >= v4)
    {
      if (v14 == -1)
      {
LABEL_31:
        v14 = v5;
        goto LABEL_32;
      }

      if (v5 >= v14)
      {
        goto LABEL_32;
      }
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v5 > v13)
  {
    goto LABEL_30;
  }

  WTF::VectorTypeOperations<WebKit::WebExtensionContext::TestMessage>::destruct(*(this + 100), *(this + 99));
  v4 = *(this + 98);
  v14 = (v13 - v4);
  if (v13 < v4)
  {
    goto LABEL_30;
  }

LABEL_32:
  WTF::VectorTypeOperations<WebKit::WebExtensionContext::TestMessage>::destruct((v2 + 16 * v4), v14);
  v16 = *(this + 100);
  if (v16)
  {
    *(this + 100) = 0;
    *(this + 202) = 0;
    WTF::fastFree(v16, v15);
  }

  v17 = *(this + 94);
  *(this + 94) = 0;
  if (v17)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebExtensionSQLiteStore,(WTF::DestructionThread)0>::deref((v17 + 8), v15);
  }

  v18 = *(this + 93);
  *(this + 93) = 0;
  if (v18)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebExtensionSQLiteStore,(WTF::DestructionThread)0>::deref((v18 + 8), v15);
  }

  v19 = *(this + 92);
  *(this + 92) = 0;
  if (v19)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebExtensionSQLiteStore,(WTF::DestructionThread)0>::deref((v19 + 8), v15);
  }

  WTF::Vector<WTF::Ref<WebKit::WebExtensionMenuItem,WTF::RawPtrTraits<WebKit::WebExtensionMenuItem>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMenuItem>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 712, v15);
  v21 = *(this + 88);
  if (v21)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::WebExtensionMenuItem,WTF::RawPtrTraits<WebKit::WebExtensionMenuItem>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMenuItem>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::WebExtensionMenuItem,WTF::RawPtrTraits<WebKit::WebExtensionMenuItem>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMenuItem>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WebKit::WebExtensionMenuItem,WTF::RawPtrTraits<WebKit::WebExtensionMenuItem>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMenuItem>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMenuItem,WTF::RawPtrTraits<WebKit::WebExtensionMenuItem>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMenuItem>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v21, v20);
  }

  v22 = *(this + 87);
  if (v22)
  {
    WTF::fastFree((v22 - 16), v20);
  }

  v23 = *(this + 86);
  if (v23)
  {
    WTF::fastFree((v23 - 16), v20);
  }

  v24 = *(this + 85);
  if (v24)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v24, v20);
  }

  v25 = *(this + 84);
  *(this + 84) = 0;
  if (v25)
  {
    CFRelease(v25);
  }

  v26 = *(this + 83);
  *(this + 83) = 0;
  if (v26)
  {
    CFRelease(v26);
  }

  WTF::Vector<std::pair<WTF::URL,WebCore::CharacterRange>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 648, v20);
  v28 = *(this + 80);
  *(this + 80) = 0;
  if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v28, v27);
  }

  WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 616, v27);
  v30 = *(this + 76);
  *(this + 76) = 0;
  if (v30)
  {
    CFRelease(v30);
  }

  v31 = *(this + 74);
  if (v31)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WebKit::WebExtensionAction,WTF::RawPtrTraits<WebKit::WebExtensionAction>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionAction>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WebKit::WebExtensionAction,WTF::RawPtrTraits<WebKit::WebExtensionAction>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionAction>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WebKit::WebExtensionAction,WTF::RawPtrTraits<WebKit::WebExtensionAction>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionAction>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionAction,WTF::RawPtrTraits<WebKit::WebExtensionAction>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionAction>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v31, v29);
  }

  v32 = *(this + 72);
  if (v32)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v32, v29);
  }

  v33 = *(this + 71);
  if (v33)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebExtensionTab,WTF::RawPtrTraits<WebKit::WebExtensionTab>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionTab>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebExtensionTab,WTF::RawPtrTraits<WebKit::WebExtensionTab>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionTab>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebExtensionTab,WTF::RawPtrTraits<WebKit::WebExtensionTab>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionTab>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionTab,WTF::RawPtrTraits<WebKit::WebExtensionTab>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionTab>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v33, v29);
  }

  v34 = *(this + 67);
  if (v34)
  {
    *(this + 67) = 0;
    *(this + 136) = 0;
    WTF::fastFree(v34, v29);
  }

  v35 = *(this + 66);
  if (v35)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebExtensionWindow,WTF::RawPtrTraits<WebKit::WebExtensionWindow>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionWindow>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebExtensionWindow,WTF::RawPtrTraits<WebKit::WebExtensionWindow>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionWindow>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebExtensionWindow,WTF::RawPtrTraits<WebKit::WebExtensionWindow>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionWindow>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionWindow,WTF::RawPtrTraits<WebKit::WebExtensionWindow>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionWindow>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v35, v29);
  }

  v36 = *(this + 65);
  if (v36)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebExtensionMessagePort,WTF::RawPtrTraits<WebKit::WebExtensionMessagePort>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMessagePort>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebExtensionMessagePort,WTF::RawPtrTraits<WebKit::WebExtensionMessagePort>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMessagePort>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebExtensionMessagePort,WTF::RawPtrTraits<WebKit::WebExtensionMessagePort>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMessagePort>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMessagePort,WTF::RawPtrTraits<WebKit::WebExtensionMessagePort>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMessagePort>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v36, v29);
  }

  v37 = *(this + 64);
  if (v37)
  {
    WTF::HashTable<std::pair<WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<std::pair<WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<std::pair<WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<std::pair<WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<std::pair<WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<std::pair<WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Vector<std::pair<WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(v37, v29);
  }

  v38 = *(this + 63);
  if (v38)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashCountedSet<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashCountedSet<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashCountedSet<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashCountedSet<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable( v38,  v29);
  }

  v39 = *(this + 62);
  if (v39)
  {
    WTF::fastFree((v39 - 16), v29);
  }

  v40 = *(this + 61);
  *(this + 61) = 0;
  if (v40)
  {
    CFRelease(*(v40 + 8));
  }

  v41 = *(this + 59);
  if (v41)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WebKit::WebExtensionAction,WTF::RawPtrTraits<WebKit::WebExtensionAction>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionAction>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WebKit::WebExtensionAction,WTF::RawPtrTraits<WebKit::WebExtensionAction>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionAction>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WebKit::WebExtensionAction,WTF::RawPtrTraits<WebKit::WebExtensionAction>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionAction>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionAction,WTF::RawPtrTraits<WebKit::WebExtensionAction>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionAction>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v41, v29);
  }

  v42 = *(this + 57);
  if (v42)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WebKit::WebExtensionAction,WTF::RawPtrTraits<WebKit::WebExtensionAction>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionAction>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WebKit::WebExtensionAction,WTF::RawPtrTraits<WebKit::WebExtensionAction>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionAction>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WebKit::WebExtensionAction,WTF::RawPtrTraits<WebKit::WebExtensionAction>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionAction>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionAction,WTF::RawPtrTraits<WebKit::WebExtensionAction>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionAction>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v42, v29);
  }

  v43 = *(this + 56);
  if (v43)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::WebExtensionAlarm,WTF::RawPtrTraits<WebKit::WebExtensionAlarm>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionAlarm>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::WebExtensionAlarm,WTF::RawPtrTraits<WebKit::WebExtensionAlarm>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionAlarm>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WebKit::WebExtensionAlarm,WTF::RawPtrTraits<WebKit::WebExtensionAlarm>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionAlarm>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionAlarm,WTF::RawPtrTraits<WebKit::WebExtensionAlarm>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionAlarm>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v43, v29);
  }

  WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 432, v29);
  v45 = *(this + 53);
  *(this + 53) = 0;
  if (v45)
  {
    CFRelease(v45);
  }

  v46 = *(this + 52);
  if (v46)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::WebExtensionDynamicScripts::WebExtensionRegisteredScript,WTF::RawPtrTraits<WebKit::WebExtensionDynamicScripts::WebExtensionRegisteredScript>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionDynamicScripts::WebExtensionRegisteredScript>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::WebExtensionDynamicScripts::WebExtensionRegisteredScript,WTF::RawPtrTraits<WebKit::WebExtensionDynamicScripts::WebExtensionRegisteredScript>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionDynamicScripts::WebExtensionRegisteredScript>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WebKit::WebExtensionDynamicScripts::WebExtensionRegisteredScript,WTF::RawPtrTraits<WebKit::WebExtensionDynamicScripts::WebExtensionRegisteredScript>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionDynamicScripts::WebExtensionRegisteredScript>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionDynamicScripts::WebExtensionRegisteredScript,WTF::RawPtrTraits<WebKit::WebExtensionDynamicScripts::WebExtensionRegisteredScript>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionDynamicScripts::WebExtensionRegisteredScript>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v46, v44);
  }

  v47 = *(this + 51);
  if (v47)
  {
    WTF::HashTable<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::KeyValuePair<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::Vector<WTF::Ref<API::UserStyleSheet,WTF::RawPtrTraits<API::UserStyleSheet>,WTF::DefaultRefDerefTraits<API::UserStyleSheet>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::Vector<WTF::Ref<API::UserStyleSheet,WTF::RawPtrTraits<API::UserStyleSheet>,WTF::DefaultRefDerefTraits<API::UserStyleSheet>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashMap<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::Vector<WTF::Ref<API::UserStyleSheet,WTF::RawPtrTraits<API::UserStyleSheet>,WTF::DefaultRefDerefTraits<API::UserStyleSheet>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashTraits<WTF::Vector<WTF::Ref<API::UserStyleSheet,WTF::RawPtrTraits<API::UserStyleSheet>,WTF::DefaultRefDerefTraits<API::UserStyleSheet>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::FastMalloc>::deallocateTable(v47, v44);
  }

  v48 = *(this + 50);
  if (v48)
  {
    WTF::HashTable<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::KeyValuePair<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::Vector<WTF::Ref<API::UserStyleSheet,WTF::RawPtrTraits<API::UserStyleSheet>,WTF::DefaultRefDerefTraits<API::UserStyleSheet>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::Vector<WTF::Ref<API::UserStyleSheet,WTF::RawPtrTraits<API::UserStyleSheet>,WTF::DefaultRefDerefTraits<API::UserStyleSheet>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashMap<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::Vector<WTF::Ref<API::UserStyleSheet,WTF::RawPtrTraits<API::UserStyleSheet>,WTF::DefaultRefDerefTraits<API::UserStyleSheet>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashTraits<WTF::Vector<WTF::Ref<API::UserStyleSheet,WTF::RawPtrTraits<API::UserStyleSheet>,WTF::DefaultRefDerefTraits<API::UserStyleSheet>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::FastMalloc>::deallocateTable(v48, v44);
  }

  v49 = *(this + 47);
  *(this + 47) = 0;
  if (v49)
  {
    (*(*v49 + 8))(v49);
  }

  v50 = *(this + 46);
  *(this + 46) = 0;
  if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v50, v44);
  }

  v51 = *(this + 45);
  *(this + 45) = 0;
  if (v51)
  {
    CFRelease(v51);
  }

  v52 = *(this + 44);
  *(this + 44) = 0;
  if (v52)
  {
    CFRelease(v52);
  }

  v53 = *(this + 43);
  *(this + 43) = 0;
  if (v53)
  {
    WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v53 + 8), v44);
  }

  v54 = *(this + 42);
  *(this + 42) = 0;
  if (v54)
  {
    CFRelease(v54);
  }

  v55 = *(this + 41);
  *(this + 41) = 0;
  if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v55, v44);
  }

  v56 = *(this + 39);
  if (v56)
  {
    WTF::HashTable<std::pair<WebKit::WebExtensionEventListenerType,WebKit::WebExtensionContentWorldType>,WTF::KeyValuePair<std::pair<WebKit::WebExtensionEventListenerType,WebKit::WebExtensionContentWorldType>,WTF::WeakHashCountedSet<WebKit::WebFrameProxy,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WebKit::WebExtensionEventListenerType,WebKit::WebExtensionContentWorldType>,WTF::WeakHashCountedSet<WebKit::WebFrameProxy,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<std::pair<WebKit::WebExtensionEventListenerType,WebKit::WebExtensionContentWorldType>>,WTF::HashMap<std::pair<WebKit::WebExtensionEventListenerType,WebKit::WebExtensionContentWorldType>,WTF::WeakHashCountedSet<WebKit::WebFrameProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<std::pair<WebKit::WebExtensionEventListenerType,WebKit::WebExtensionContentWorldType>>,WTF::HashTraits<std::pair<WebKit::WebExtensionEventListenerType,WebKit::WebExtensionContentWorldType>>,WTF::HashTraits<WTF::WeakHashCountedSet<WebKit::WebFrameProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WebKit::WebExtensionEventListenerType,WebKit::WebExtensionContentWorldType>>,WTF::FastMalloc>::deallocateTable(v56, v44);
  }

  v57 = *(this + 38);
  if (v57)
  {
    WTF::fastFree((v57 - 16), v44);
  }

  WTF::Vector<WTF::Function<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 288, v44);
  v59 = *(this + 33);
  if (v59)
  {
    WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebKit::WebExtensionContext::PermissionState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebKit::WebExtensionContext::PermissionState>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebKit::WebExtensionContext::PermissionState,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebKit::WebExtensionContext::PermissionState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::deallocateTable(v59, v58);
  }

  WTF::ListHashSet<WTF::URL,WTF::DefaultHash<WTF::URL>>::deleteAllNodes(this + 240, v58);
  v61 = *(this + 30);
  if (v61)
  {
    WTF::fastFree((v61 - 16), v60);
  }

  v62 = *(this + 27);
  if (v62)
  {
    WTF::HashTable<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::KeyValuePair<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::WallTime>>,WTF::DefaultHash<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashMap<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::WallTime,WTF::DefaultHash<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::FastMalloc>::deallocateTable(v62, v60);
  }

  v63 = *(this + 26);
  if (v63)
  {
    WTF::HashTable<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::KeyValuePair<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::WallTime>>,WTF::DefaultHash<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashMap<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::WallTime,WTF::DefaultHash<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::FastMalloc>::deallocateTable(v63, v60);
  }

  v64 = *(this + 23);
  if (v64)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v64, v60);
  }

  v65 = *(this + 22);
  if (v65)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v65, v60);
  }

  v66 = *(this + 21);
  *(this + 21) = 0;
  if (v66)
  {
    CFRelease(*(v66 + 8));
  }

  v67 = *(this + 20);
  if (v67)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v67, v60);
  }

  v68 = *(this + 18);
  *(this + 18) = 0;
  if (v68)
  {
    WTF::RefCounted<WebKit::WebExtensionLocalization>::deref(v68, v60);
  }

  v69 = *(this + 16);
  *(this + 16) = 0;
  if (v69 && atomic_fetch_add_explicit(v69, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v69, v60);
  }

  v70 = *(this + 11);
  *(this + 11) = 0;
  if (v70 && atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v70, v60);
  }

  v71 = *(this + 10);
  *(this + 10) = 0;
  if (v71 && atomic_fetch_add(v71, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v71);
    WTF::fastFree(v71, v60);
  }

  v72 = *(this + 9);
  *(this + 9) = 0;
  if (v72)
  {
    CFRelease(*(v72 + 8));
  }

  v73 = *(this + 8);
  *(this + 8) = 0;
  if (v73)
  {
    CFRelease(v73);
  }

  v74 = *(this + 7);
  *(this + 7) = 0;
  if (v74)
  {
    CFRelease(v74);
  }

  v75 = *(this + 6);
  *(this + 6) = 0;
  if (v75 && atomic_fetch_add_explicit(v75, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v75, v60);
  }

  *(this + 2) = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 3, v60);
}

void non-virtual thunk toWebKit::WebExtensionContext::~WebExtensionContext(WebKit::WebExtensionContext *this)
{
  WebKit::WebExtensionContext::~WebExtensionContext((this - 16));
}

{
  WebKit::WebExtensionContext::~WebExtensionContext((this - 16));

  JUMPOUT(0x19EB14CF0);
}

WTF::StringImpl *WTF::VectorTypeOperations<WebKit::WebExtensionContext::TestMessage>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (a2)
  {
    v2 = 16 * a2;
    v3 = (result + 8);
    do
    {
      v4 = *v3;
      *v3 = 0;
      if (v4)
      {
        CFRelease(v4);
      }

      result = *(v3 - 1);
      *(v3 - 1) = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      v3 += 2;
      v2 -= 16;
    }

    while (v2);
  }

  return result;
}

atomic_ullong *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::WebExtensionSQLiteStore,(WTF::DestructionThread)0>::deref(atomic_ullong *result, void *a2)
{
  do
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::WebExtensionSQLiteStore,(WTF::DestructionThread)0>(*result, a2);
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, (v2 - 2), memory_order_relaxed, memory_order_relaxed);
  }

  while (v3 != v2);
  if (v2 == 3)
  {
    return (*(*(result - 1) + 8))();
  }

  return result;
}

uint64_t WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::WebExtensionSQLiteStore,(WTF::DestructionThread)0>(atomic_uchar *this, void *a2)
{
  v3 = 0;
  atomic_compare_exchange_strong_explicit(this, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x19EB01E30](this, a2);
  }

  v4 = *(this + 1) - 1;
  *(this + 1) = v4;
  if (v4)
  {
    result = 0;
  }

  else
  {
    result = *(this + 3);
    ++*(this + 2);
    *(this + 3) = 0;
  }

  v6 = 1;
  atomic_compare_exchange_strong_explicit(this, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 == 1)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v10 = v4;
    v11 = result;
    WTF::Lock::unlockSlow(this);
    result = v11;
    if (v10)
    {
      return result;
    }
  }

  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v7 = 0;
  v8 = 1;
  atomic_compare_exchange_strong_explicit(this, &v7, 1u, memory_order_acquire, memory_order_acquire);
  if (v7)
  {
    result = MEMORY[0x19EB01E30](this);
    v8 = 1;
  }

  v9 = *(this + 2) - 1;
  *(this + 2) = v9;
  atomic_compare_exchange_strong_explicit(this, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 == 1)
  {
    if (v9)
    {
      return result;
    }
  }

  else
  {
    v12 = v9;
    result = WTF::Lock::unlockSlow(this);
    if (v12)
    {
      return result;
    }
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Vector<WTF::Ref<WebKit::WebExtensionMenuItem,WTF::RawPtrTraits<WebKit::WebExtensionMenuItem>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMenuItem>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  v4 = *a1;
  if (v3)
  {
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6)
      {
        WTF::RefCounted<WebKit::WebExtensionMenuItem>::deref((v6 + 8));
      }

      v4 = (v4 + 8);
      v5 -= 8;
    }

    while (v5);
    v4 = *a1;
  }

  if (v4)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

_DWORD *WTF::RefCounted<WebKit::WebExtensionMenuItem>::deref(_DWORD *result, void *a2)
{
  if (*result == 1)
  {
    WebKit::WebExtensionMenuItem::~WebExtensionMenuItem((result - 2), a2);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

void WebKit::WebExtensionMenuItem::~WebExtensionMenuItem(WebKit::WebExtensionMenuItem *this, void *a2)
{
  WTF::Vector<WTF::Ref<WebKit::WebExtensionMenuItem,WTF::RawPtrTraits<WebKit::WebExtensionMenuItem>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMenuItem>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 144, a2);
  v4 = *(this + 17);
  *(this + 17) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, v3);
  }

  v5 = *(this + 15);
  if (v5)
  {
    WTF::HashTable<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::FastMalloc>::deallocateTable(v5, v3);
  }

  v6 = *(this + 14);
  if (v6)
  {
    WTF::HashTable<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::FastMalloc>::deallocateTable(v6, v3);
  }

  v7 = *(this + 12);
  *(this + 12) = 0;
  if (v7)
  {
    if (*v7 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v7;
    }
  }

  v8 = *(this + 11);
  *(this + 11) = 0;
  if (v8)
  {
    if (*v8 == 1)
    {
      WTF::JSONImpl::Value::operator delete();
    }

    else
    {
      --*v8;
    }
  }

  v9 = *(this + 8);
  if (v9)
  {
    *(this + 8) = 0;
    *(this + 18) = 0;
    WTF::fastFree(v9, v3);
  }

  v10 = *(this + 7);
  *(this + 7) = 0;
  if (v10)
  {
    WTF::RefCounted<WebCore::Icon>::deref(v10);
  }

  v11 = *(this + 6);
  *(this + 6) = 0;
  if (v11)
  {
    CFRelease(*(v11 + 8));
  }

  v12 = *(this + 5);
  *(this + 5) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v3);
  }

  v13 = *(this + 4);
  *(this + 4) = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v3);
  }

  v14 = *(this + 2);
  *(this + 2) = 0;
  if (v14 && atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14);
    WTF::fastFree(v14, v3);
  }

  if (*(this + 2) == 1)
  {

    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this, v3);
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t WTF::HashTable<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::FastMalloc>::deallocateTable(uint64_t *a1, void *a2)
{
  v3 = *(a1 - 1);
  if (v3)
  {
    v4 = a1;
    do
    {
      v5 = *v4;
      if (*v4 != -1)
      {
        *v4 = 0;
        if (v5)
        {
          CFRelease(*(v5 + 8));
        }
      }

      ++v4;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 2), a2);
}

WebCore::Icon *WTF::RefCounted<WebCore::Icon>::deref(WebCore::Icon *result)
{
  if (*result == 1)
  {
    WebCore::Icon::~Icon(result);

    return WTF::fastFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::WebExtensionMenuItem,WTF::RawPtrTraits<WebKit::WebExtensionMenuItem>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMenuItem>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::WebExtensionMenuItem,WTF::RawPtrTraits<WebKit::WebExtensionMenuItem>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMenuItem>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WebKit::WebExtensionMenuItem,WTF::RawPtrTraits<WebKit::WebExtensionMenuItem>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMenuItem>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMenuItem,WTF::RawPtrTraits<WebKit::WebExtensionMenuItem>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMenuItem>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1;
    do
    {
      v5 = *v4;
      if (*v4 != -1)
      {
        v6 = *(v4 + 8);
        *(v4 + 8) = 0;
        if (v6)
        {
          WTF::RefCounted<WebKit::WebExtensionMenuItem>::deref((v6 + 8), a2);
          v5 = *v4;
        }

        *v4 = 0;
        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }
      }

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WebKit::WebExtensionAction,WTF::RawPtrTraits<WebKit::WebExtensionAction>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionAction>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WebKit::WebExtensionAction,WTF::RawPtrTraits<WebKit::WebExtensionAction>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionAction>>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WebKit::WebExtensionAction,WTF::RawPtrTraits<WebKit::WebExtensionAction>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionAction>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionAction,WTF::RawPtrTraits<WebKit::WebExtensionAction>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionAction>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1;
    do
    {
      v5 = *v4;
      if (*v4 != -1)
      {
        v6 = *(v4 + 8);
        *(v4 + 8) = 0;
        if (v6)
        {
          CFRelease(*(v6 + 8));
          v5 = *v4;
        }

        *v4 = 0;
        if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v5);
          WTF::fastFree(v5, a2);
        }
      }

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(unsigned int **a1, void *a2)
{
  v3 = *(a1 - 1);
  if (v3)
  {
    v4 = a1;
    do
    {
      v5 = *v4;
      if (*v4 != -1)
      {
        *v4 = 0;
        if (v5)
        {
          if (atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v5);
            WTF::fastFree(v5, a2);
          }
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 2), a2);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebExtensionTab,WTF::RawPtrTraits<WebKit::WebExtensionTab>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionTab>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebExtensionTab,WTF::RawPtrTraits<WebKit::WebExtensionTab>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionTab>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebExtensionTab,WTF::RawPtrTraits<WebKit::WebExtensionTab>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionTab>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionTab,WTF::RawPtrTraits<WebKit::WebExtensionTab>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionTab>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          WTF::RefCounted<WebKit::WebExtensionTab>::deref(v5 + 8);
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::RefCounted<WebKit::WebExtensionTab>::deref(uint64_t result)
{
  v1 = result;
  if (*result == 1)
  {
    v2 = *(result + 32);
    *(result + 32) = 0;
    if (v2)
    {
      CFRelease(*(v2 + 8));
    }

    objc_destroyWeak((v1 + 24));
    v4 = *(v1 + 16);
    *(v1 + 16) = 0;
    if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v4);
      WTF::fastFree(v4, v3);
    }

    if (*v1 == 1)
    {
      v5 = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory((v1 - 8), v3);

      return bmalloc::api::tzoneFree(v5, v6);
    }

    else
    {
      result = 191;
      __break(0xC471u);
    }
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebExtensionWindow,WTF::RawPtrTraits<WebKit::WebExtensionWindow>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionWindow>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebExtensionWindow,WTF::RawPtrTraits<WebKit::WebExtensionWindow>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionWindow>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebExtensionWindow,WTF::RawPtrTraits<WebKit::WebExtensionWindow>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionWindow>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionWindow,WTF::RawPtrTraits<WebKit::WebExtensionWindow>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionWindow>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          WTF::RefCounted<WebKit::WebExtensionWindow>::deref(v5 + 8);
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::RefCounted<WebKit::WebExtensionWindow>::deref(uint64_t result)
{
  v1 = result;
  if (*result == 1)
  {
    objc_destroyWeak((result + 24));
    v3 = *(v1 + 16);
    *(v1 + 16) = 0;
    if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);
      WTF::fastFree(v3, v2);
    }

    if (*v1 == 1)
    {
      v4 = WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory((v1 - 8), v2);

      return bmalloc::api::tzoneFree(v4, v5);
    }

    else
    {
      result = 191;
      __break(0xC471u);
    }
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebExtensionMessagePort,WTF::RawPtrTraits<WebKit::WebExtensionMessagePort>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMessagePort>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebExtensionMessagePort,WTF::RawPtrTraits<WebKit::WebExtensionMessagePort>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMessagePort>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::WebExtensionMessagePort,WTF::RawPtrTraits<WebKit::WebExtensionMessagePort>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMessagePort>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMessagePort,WTF::RawPtrTraits<WebKit::WebExtensionMessagePort>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMessagePort>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          CFRelease(*(v5 + 8));
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<std::pair<WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePair<std::pair<WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<std::pair<WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<std::pair<WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<std::pair<WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashMap<std::pair<WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Vector<std::pair<WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<std::pair<WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::pair<WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Vector<std::pair<WTF::String,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1 + 16;
    do
    {
      if (*(v4 - 16) != 254)
      {
        v4 = WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, a2);
      }

      v4 += 32;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashCountedSet<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashCountedSet<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashCountedSet<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::HashCountedSet<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::DefaultHash<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<std::tuple<WebKit::WebExtensionContentWorldType,WebKit::WebExtensionContentWorldType,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionPortChannelIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1 && *v4)
      {
        WTF::fastFree((*v4 - 16), a2);
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::WebExtensionAlarm,WTF::RawPtrTraits<WebKit::WebExtensionAlarm>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionAlarm>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::WebExtensionAlarm,WTF::RawPtrTraits<WebKit::WebExtensionAlarm>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionAlarm>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WebKit::WebExtensionAlarm,WTF::RawPtrTraits<WebKit::WebExtensionAlarm>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionAlarm>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionAlarm,WTF::RawPtrTraits<WebKit::WebExtensionAlarm>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionAlarm>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(WTF::StringImpl **a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 1);
  if (v3)
  {
    v4 = a1;
    do
    {
      v5 = *v4;
      if (*v4 != -1)
      {
        v6 = v4[1];
        v4[1] = 0;
        if (v6)
        {
          WTF::RefCounted<WebKit::WebExtensionAlarm>::deref(v6, a2);
          v5 = *v4;
        }

        *v4 = 0;
        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 2), a2);
}

uint64_t WTF::RefCounted<WebKit::WebExtensionAlarm>::deref(uint64_t this, WTF::StringImpl *a2)
{
  v2 = this;
  if (*this == 1)
  {
    v3 = *(this + 48);
    *(v2 + 6) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3, a2);
    }

    v4 = *(v2 + 5);
    *(v2 + 5) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4, a2);
    }

    v5 = *(v2 + 1);
    *(v2 + 1) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    if (*v2 == 1)
    {

      return bmalloc::api::tzoneFree(v2, a2);
    }

    else
    {
      this = 191;
      __break(0xC471u);
    }
  }

  else
  {
    --*this;
  }

  return this;
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::WebExtensionDynamicScripts::WebExtensionRegisteredScript,WTF::RawPtrTraits<WebKit::WebExtensionDynamicScripts::WebExtensionRegisteredScript>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionDynamicScripts::WebExtensionRegisteredScript>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::WebExtensionDynamicScripts::WebExtensionRegisteredScript,WTF::RawPtrTraits<WebKit::WebExtensionDynamicScripts::WebExtensionRegisteredScript>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionDynamicScripts::WebExtensionRegisteredScript>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WebKit::WebExtensionDynamicScripts::WebExtensionRegisteredScript,WTF::RawPtrTraits<WebKit::WebExtensionDynamicScripts::WebExtensionRegisteredScript>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionDynamicScripts::WebExtensionRegisteredScript>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionDynamicScripts::WebExtensionRegisteredScript,WTF::RawPtrTraits<WebKit::WebExtensionDynamicScripts::WebExtensionRegisteredScript>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionDynamicScripts::WebExtensionRegisteredScript>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1;
    do
    {
      v5 = *v4;
      if (*v4 != -1)
      {
        v6 = *(v4 + 8);
        *(v4 + 8) = 0;
        if (v6)
        {
          WTF::RefCounted<WebKit::WebExtensionDynamicScripts::WebExtensionRegisteredScript>::deref(v6, a2);
          v5 = *v4;
        }

        *v4 = 0;
        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }
      }

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

WebKit::WebExtensionDynamicScripts::WebExtensionRegisteredScript *WTF::RefCounted<WebKit::WebExtensionDynamicScripts::WebExtensionRegisteredScript>::deref(WebKit::WebExtensionDynamicScripts::WebExtensionRegisteredScript *result, void *a2)
{
  if (*result == 1)
  {
    WebKit::WebExtensionDynamicScripts::WebExtensionRegisteredScript::~WebExtensionRegisteredScript(result, a2);

    return bmalloc::api::tzoneFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

void WebKit::WebExtensionDynamicScripts::WebExtensionRegisteredScript::~WebExtensionRegisteredScript(WebKit::WebExtensionDynamicScripts::WebExtensionRegisteredScript *this, void *a2)
{
  v3 = *(this + 32);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::Ref<API::UserStyleSheet,WTF::RawPtrTraits<API::UserStyleSheet>,WTF::DefaultRefDerefTraits<API::UserStyleSheet>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::Ref<API::UserStyleSheet,WTF::RawPtrTraits<API::UserStyleSheet>,WTF::DefaultRefDerefTraits<API::UserStyleSheet>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::Ref<API::UserStyleSheet,WTF::RawPtrTraits<API::UserStyleSheet>,WTF::DefaultRefDerefTraits<API::UserStyleSheet>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::Ref<API::UserStyleSheet,WTF::RawPtrTraits<API::UserStyleSheet>,WTF::DefaultRefDerefTraits<API::UserStyleSheet>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 31);
  if (v4)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::Ref<API::UserStyleSheet,WTF::RawPtrTraits<API::UserStyleSheet>,WTF::DefaultRefDerefTraits<API::UserStyleSheet>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::Ref<API::UserStyleSheet,WTF::RawPtrTraits<API::UserStyleSheet>,WTF::DefaultRefDerefTraits<API::UserStyleSheet>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::Ref<API::UserStyleSheet,WTF::RawPtrTraits<API::UserStyleSheet>,WTF::DefaultRefDerefTraits<API::UserStyleSheet>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::Ref<API::UserStyleSheet,WTF::RawPtrTraits<API::UserStyleSheet>,WTF::DefaultRefDerefTraits<API::UserStyleSheet>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 232, a2);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 216, v5);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 200, v6);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 184, v7);
  v9 = *(this + 21);
  *(this + 21) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = *(this + 19);
  if (v10)
  {
    WTF::HashTable<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::FastMalloc>::deallocateTable(v10, v8);
  }

  v11 = *(this + 18);
  if (v11)
  {
    WTF::HashTable<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::FastMalloc>::deallocateTable(v11, v8);
  }

  if (*(this + 120) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 104, v8);
  }

  if (*(this + 96) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 80, v8);
  }

  v12 = *(this + 8);
  *(this + 8) = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v8);
  }

  if (*(this + 56) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 40, v8);
  }

  if (*(this + 32) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 16, v8);
  }

  v13 = *(this + 1);
  *(this + 1) = 0;
  if (v13 && atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v13);
    WTF::fastFree(v13, v8);
  }

  if (*this != 1)
  {
    __break(0xC471u);
  }
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::Ref<API::UserStyleSheet,WTF::RawPtrTraits<API::UserStyleSheet>,WTF::DefaultRefDerefTraits<API::UserStyleSheet>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Vector<WTF::Ref<API::UserStyleSheet,WTF::RawPtrTraits<API::UserStyleSheet>,WTF::DefaultRefDerefTraits<API::UserStyleSheet>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Vector<WTF::Ref<API::UserStyleSheet,WTF::RawPtrTraits<API::UserStyleSheet>,WTF::DefaultRefDerefTraits<API::UserStyleSheet>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Vector<WTF::Ref<API::UserStyleSheet,WTF::RawPtrTraits<API::UserStyleSheet>,WTF::DefaultRefDerefTraits<API::UserStyleSheet>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1 + 8;
    do
    {
      if (*(v4 - 8) != -1)
      {
        WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, a2);
        v5 = *(v4 - 8);
        *(v4 - 8) = 0;
        if (v5)
        {
          if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v5, a2);
          }
        }
      }

      v4 += 24;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::KeyValuePair<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::Vector<WTF::Ref<API::UserStyleSheet,WTF::RawPtrTraits<API::UserStyleSheet>,WTF::DefaultRefDerefTraits<API::UserStyleSheet>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::Vector<WTF::Ref<API::UserStyleSheet,WTF::RawPtrTraits<API::UserStyleSheet>,WTF::DefaultRefDerefTraits<API::UserStyleSheet>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashMap<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::Vector<WTF::Ref<API::UserStyleSheet,WTF::RawPtrTraits<API::UserStyleSheet>,WTF::DefaultRefDerefTraits<API::UserStyleSheet>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashTraits<WTF::Vector<WTF::Ref<API::UserStyleSheet,WTF::RawPtrTraits<API::UserStyleSheet>,WTF::DefaultRefDerefTraits<API::UserStyleSheet>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1 + 8;
    do
    {
      if (*(v4 - 8) != -1)
      {
        WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, a2);
        v5 = *(v4 - 8);
        *(v4 - 8) = 0;
        if (v5)
        {
          CFRelease(*(v5 + 8));
        }
      }

      v4 += 24;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<std::pair<WebKit::WebExtensionEventListenerType,WebKit::WebExtensionContentWorldType>,WTF::KeyValuePair<std::pair<WebKit::WebExtensionEventListenerType,WebKit::WebExtensionContentWorldType>,WTF::WeakHashCountedSet<WebKit::WebFrameProxy,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WebKit::WebExtensionEventListenerType,WebKit::WebExtensionContentWorldType>,WTF::WeakHashCountedSet<WebKit::WebFrameProxy,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<std::pair<WebKit::WebExtensionEventListenerType,WebKit::WebExtensionContentWorldType>>,WTF::HashMap<std::pair<WebKit::WebExtensionEventListenerType,WebKit::WebExtensionContentWorldType>,WTF::WeakHashCountedSet<WebKit::WebFrameProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<std::pair<WebKit::WebExtensionEventListenerType,WebKit::WebExtensionContentWorldType>>,WTF::HashTraits<std::pair<WebKit::WebExtensionEventListenerType,WebKit::WebExtensionContentWorldType>>,WTF::HashTraits<WTF::WeakHashCountedSet<WebKit::WebFrameProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WebKit::WebExtensionEventListenerType,WebKit::WebExtensionContentWorldType>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 8) != 254 && *v4)
      {
        WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashMap<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(*v4, a2);
      }

      v4 += 3;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebKit::WebExtensionContext::PermissionState>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebKit::WebExtensionContext::PermissionState>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebKit::WebExtensionContext::PermissionState,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebKit::WebExtensionContext::PermissionState>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::deallocateTable(WTF::StringImpl **a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 1);
  if (v3)
  {
    v4 = a1;
    do
    {
      v5 = *v4;
      if (*v4 != -1)
      {
        *v4 = 0;
        if (v5)
        {
          if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v5, a2);
          }
        }
      }

      v4 += 6;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 2), a2);
}

uint64_t WTF::ListHashSet<WTF::URL,WTF::DefaultHash<WTF::URL>>::deleteAllNodes(uint64_t result, void *a2)
{
  for (i = *(result + 8); i; result = WTF::fastFree(v3, a2))
  {
    v3 = i;
    i = *(i + 6);
    v4 = *v3;
    *v3 = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }
  }

  return result;
}

uint64_t WTF::HashTable<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::KeyValuePair<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::WallTime>>,WTF::DefaultHash<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashMap<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::WallTime,WTF::DefaultHash<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::FastMalloc>::deallocateTable(uint64_t *a1, void *a2)
{
  v3 = *(a1 - 1);
  if (v3)
  {
    v4 = a1;
    do
    {
      v5 = *v4;
      if (*v4 != -1)
      {
        *v4 = 0;
        if (v5)
        {
          CFRelease(*(v5 + 8));
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 2), a2);
}

uint64_t WTF::RefCounted<WebKit::WebExtensionLocalization>::deref(uint64_t this, WTF::StringImpl *a2)
{
  v2 = this;
  if (*this == 1)
  {
    v3 = *(this + 32);
    *(v2 + 4) = 0;
    if (v3)
    {
      if (*v3 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v3;
      }
    }

    v4 = *(v2 + 3);
    *(v2 + 3) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    v5 = *(v2 + 2);
    *(v2 + 2) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *(v2 + 1);
    *(v2 + 1) = 0;
    if (v6)
    {
      (*(*v6 + 120))(v6, a2);
    }

    if (*v2 == 1)
    {

      return WTF::fastFree(v2, a2);
    }

    else
    {
      this = 191;
      __break(0xC471u);
    }
  }

  else
  {
    --*this;
  }

  return this;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::Vector<unsigned int,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::VectorArgumentCoder<true,unsigned int,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, v6);
  if (v7 & 1) != 0 || (result = IPC::Decoder::markInvalid(a1), (v7))
  {
    *a2 = v6[0];
    *(a2 + 8) = v6[1];
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a2 = 0;
  }

  *(a2 + 16) = v5;
  return result;
}

uint64_t std::__tuple_leaf<1ul,WebKit::FrameInfoData,false>::__tuple_leaf[abi:sn200100]<WebKit::FrameInfoData,0>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  WTF::URL::URL(a1 + 8, (a2 + 8));
  WTF::URL::URL(a1 + 48, (a2 + 48));
  *(a1 + 88) = *(a2 + 88);
  v4 = *(a2 + 96);
  *(a2 + 96) = 0;
  *(a1 + 96) = v4;
  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 104, (a2 + 104));
  *(a1 + 128) = 0;
  *(a1 + 120) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 120, (a2 + 120));
  *(a1 + 144) = 0;
  *(a1 + 136) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 136, (a2 + 136));
  v5 = *(a2 + 152);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 152) = v5;
  v6 = *(a2 + 160);
  *(a2 + 160) = 0;
  *(a1 + 160) = v6;
  v7 = *(a2 + 168);
  *(a2 + 168) = 0;
  *(a1 + 168) = v7;
  v8 = *(a2 + 176);
  *(a2 + 176) = 0;
  *(a1 + 176) = v8;
  v9 = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 184) = v9;
  v10 = *(a2 + 200);
  *(a2 + 200) = 0;
  *(a1 + 200) = v10;
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((a1 + 208), a2 + 208);
  v11 = *(a2 + 240);
  *(a2 + 240) = 0;
  *(a1 + 240) = v11;
  v12 = *(a2 + 248);
  v13 = *(a2 + 264);
  v14 = *(a2 + 280);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 264) = v13;
  *(a1 + 280) = v14;
  *(a1 + 248) = v12;
  v15 = *(a2 + 304);
  *(a2 + 304) = 0;
  *(a1 + 304) = v15;
  v16 = *(a2 + 312);
  v17 = *(a2 + 328);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 312) = v16;
  *(a1 + 328) = v17;
  return a1;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages32WebAuthenticatorCoordinatorProxy14MakeCredentialENS2_10ConnectionEN6WebKit32WebAuthenticatorCoordinatorProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS8_13FrameInfoDataEONSB_34PublicKeyCredentialCreationOptionsENSB_20MediationRequirementEONS_17CompletionHandlerIFvRKNSB_25AuthenticatorResponseDataENSB_23AuthenticatorAttachmentERKNSB_13ExceptionDataEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_SP_SS_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F32A8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages32WebAuthenticatorCoordinatorProxy14MakeCredentialENS2_10ConnectionEN6WebKit32WebAuthenticatorCoordinatorProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS8_13FrameInfoDataEONSB_34PublicKeyCredentialCreationOptionsENSB_20MediationRequirementEONS_17CompletionHandlerIFvRKNSB_25AuthenticatorResponseDataENSB_23AuthenticatorAttachmentERKNSB_13ExceptionDataEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_SP_SS_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F32A8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages32WebAuthenticatorCoordinatorProxy14MakeCredentialENS2_10ConnectionEN6WebKit32WebAuthenticatorCoordinatorProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS8_13FrameInfoDataEONSB_34PublicKeyCredentialCreationOptionsENSB_20MediationRequirementEONS_17CompletionHandlerIFvRKNSB_25AuthenticatorResponseDataENSB_23AuthenticatorAttachmentERKNSB_13ExceptionDataEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_SP_SS_EE4callESO_SP_SS_(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = IPC::Encoder::operator new(0x238, a2);
  *v9 = 3557;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v8;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v14 = v9;
  IPC::ArgumentCoder<WebCore::AuthenticatorResponseData,void>::encode(v9, a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v9, a3);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v9, *a4);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v9, (a4 + 8));
  IPC::Connection::sendMessageImpl(v7, &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v10);
    return bmalloc::api::tzoneFree(v12, v13);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages32WebAuthenticatorCoordinatorProxy12GetAssertionENS2_10ConnectionEN6WebKit32WebAuthenticatorCoordinatorProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS8_13FrameInfoDataEONSB_33PublicKeyCredentialRequestOptionsENSB_20MediationRequirementENSt3__18optionalINSB_18SecurityOriginDataEEEONS_17CompletionHandlerIFvRKNSB_25AuthenticatorResponseDataENSB_23AuthenticatorAttachmentERKNSB_13ExceptionDataEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_ST_SW_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F32D0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages32WebAuthenticatorCoordinatorProxy12GetAssertionENS2_10ConnectionEN6WebKit32WebAuthenticatorCoordinatorProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS8_13FrameInfoDataEONSB_33PublicKeyCredentialRequestOptionsENSB_20MediationRequirementENSt3__18optionalINSB_18SecurityOriginDataEEEONS_17CompletionHandlerIFvRKNSB_25AuthenticatorResponseDataENSB_23AuthenticatorAttachmentERKNSB_13ExceptionDataEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_ST_SW_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F32D0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages32WebAuthenticatorCoordinatorProxy12GetAssertionENS2_10ConnectionEN6WebKit32WebAuthenticatorCoordinatorProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore19FrameIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS8_13FrameInfoDataEONSB_33PublicKeyCredentialRequestOptionsENSB_20MediationRequirementENSt3__18optionalINSB_18SecurityOriginDataEEEONS_17CompletionHandlerIFvRKNSB_25AuthenticatorResponseDataENSB_23AuthenticatorAttachmentERKNSB_13ExceptionDataEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_ST_SW_EE4callESS_ST_SW_(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = IPC::Encoder::operator new(0x238, a2);
  *v9 = 3554;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v8;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v14 = v9;
  IPC::ArgumentCoder<WebCore::AuthenticatorResponseData,void>::encode(v9, a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v9, a3);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v9, *a4);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v9, (a4 + 8));
  IPC::Connection::sendMessageImpl(v7, &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v10);
    return bmalloc::api::tzoneFree(v12, v13);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages32WebAuthenticatorCoordinatorProxy31isConditionalMediationAvailableENS2_10ConnectionEN6WebKit32WebAuthenticatorCoordinatorProxyES9_FvRKN7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F32F8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages32WebAuthenticatorCoordinatorProxy31isConditionalMediationAvailableENS2_10ConnectionEN6WebKit32WebAuthenticatorCoordinatorProxyES9_FvRKN7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F32F8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages32WebAuthenticatorCoordinatorProxy31isConditionalMediationAvailableENS2_10ConnectionEN6WebKit32WebAuthenticatorCoordinatorProxyES9_FvRKN7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3561;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::Encoder::operator<<<BOOL>(v4, &v9);
  IPC::Connection::sendMessageImpl(v2, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages32WebAuthenticatorCoordinatorProxy45IsUserVerifyingPlatformAuthenticatorAvailableENS2_10ConnectionEN6WebKit32WebAuthenticatorCoordinatorProxyES9_FvRKN7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3320;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages32WebAuthenticatorCoordinatorProxy45IsUserVerifyingPlatformAuthenticatorAvailableENS2_10ConnectionEN6WebKit32WebAuthenticatorCoordinatorProxyES9_FvRKN7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3320;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages32WebAuthenticatorCoordinatorProxy45IsUserVerifyingPlatformAuthenticatorAvailableENS2_10ConnectionEN6WebKit32WebAuthenticatorCoordinatorProxyES9_FvRKN7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJbEE4callEb(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3556;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v10 = v4;
  IPC::Encoder::operator<<<BOOL>(v4, &v9);
  IPC::Connection::sendMessageImpl(v2, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages32WebAuthenticatorCoordinatorProxy21GetClientCapabilitiesENS2_10ConnectionEN6WebKit32WebAuthenticatorCoordinatorProxyES9_FvRKN7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvONS_6VectorINS_12KeyValuePairINS_6StringEbEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3348;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages32WebAuthenticatorCoordinatorProxy21GetClientCapabilitiesENS2_10ConnectionEN6WebKit32WebAuthenticatorCoordinatorProxyES9_FvRKN7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvONS_6VectorINS_12KeyValuePairINS_6StringEbEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3348;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages32WebAuthenticatorCoordinatorProxy21GetClientCapabilitiesENS2_10ConnectionEN6WebKit32WebAuthenticatorCoordinatorProxyES9_FvRKN7WebCore18SecurityOriginDataEONS_17CompletionHandlerIFvONS_6VectorINS_12KeyValuePairINS_6StringEbEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EE4callESM_(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3555;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v13 = v5;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, a2[3]);
  v6 = a2[3];
  if (v6)
  {
    v7 = *a2;
    v8 = v7 + 16 * v6;
    do
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, v7);
      IPC::Encoder::operator<<<BOOL>(v5, (v7 + 8));
      v7 += 16;
    }

    while (v7 != v8);
  }

  IPC::Connection::sendMessageImpl(v3, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages32WebAuthenticatorCoordinatorProxy23SignalUnknownCredentialENS2_10ConnectionEN6WebKit32WebAuthenticatorCoordinatorProxyES9_FvRKN7WebCore18SecurityOriginDataEONSA_24UnknownCredentialOptionsEONS_17CompletionHandlerIFvNSt3__18optionalINSA_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3370;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages32WebAuthenticatorCoordinatorProxy23SignalUnknownCredentialENS2_10ConnectionEN6WebKit32WebAuthenticatorCoordinatorProxyES9_FvRKN7WebCore18SecurityOriginDataEONSA_24UnknownCredentialOptionsEONS_17CompletionHandlerIFvNSt3__18optionalINSA_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3370;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages32WebAuthenticatorCoordinatorProxy23SignalUnknownCredentialENS2_10ConnectionEN6WebKit32WebAuthenticatorCoordinatorProxyES9_FvRKN7WebCore18SecurityOriginDataEONSA_24UnknownCredentialOptionsEONS_17CompletionHandlerIFvNSt3__18optionalINSA_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EE4callESK_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3560;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<WebCore::Exception>,void>::encode<IPC::Encoder,std::optional<WebCore::Exception>>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages32WebAuthenticatorCoordinatorProxy28SignalAllAcceptedCredentialsENS2_10ConnectionEN6WebKit32WebAuthenticatorCoordinatorProxyES9_FvRKN7WebCore18SecurityOriginDataEONSA_29AllAcceptedCredentialsOptionsEONS_17CompletionHandlerIFvNSt3__18optionalINSA_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3398;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages32WebAuthenticatorCoordinatorProxy28SignalAllAcceptedCredentialsENS2_10ConnectionEN6WebKit32WebAuthenticatorCoordinatorProxyES9_FvRKN7WebCore18SecurityOriginDataEONSA_29AllAcceptedCredentialsOptionsEONS_17CompletionHandlerIFvNSt3__18optionalINSA_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3398;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages32WebAuthenticatorCoordinatorProxy28SignalAllAcceptedCredentialsENS2_10ConnectionEN6WebKit32WebAuthenticatorCoordinatorProxyES9_FvRKN7WebCore18SecurityOriginDataEONSA_29AllAcceptedCredentialsOptionsEONS_17CompletionHandlerIFvNSt3__18optionalINSA_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EE4callESK_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3558;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<WebCore::Exception>,void>::encode<IPC::Encoder,std::optional<WebCore::Exception>>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages32WebAuthenticatorCoordinatorProxy24SignalCurrentUserDetailsENS2_10ConnectionEN6WebKit32WebAuthenticatorCoordinatorProxyES9_FvRKN7WebCore18SecurityOriginDataEONSA_25CurrentUserDetailsOptionsEONS_17CompletionHandlerIFvNSt3__18optionalINSA_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F33C0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages32WebAuthenticatorCoordinatorProxy24SignalCurrentUserDetailsENS2_10ConnectionEN6WebKit32WebAuthenticatorCoordinatorProxyES9_FvRKN7WebCore18SecurityOriginDataEONSA_25CurrentUserDetailsOptionsEONS_17CompletionHandlerIFvNSt3__18optionalINSA_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F33C0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages32WebAuthenticatorCoordinatorProxy24SignalCurrentUserDetailsENS2_10ConnectionEN6WebKit32WebAuthenticatorCoordinatorProxyES9_FvRKN7WebCore18SecurityOriginDataEONSA_25CurrentUserDetailsOptionsEONS_17CompletionHandlerIFvNSt3__18optionalINSA_13ExceptionDataEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSK_EE4callESK_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3559;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<WebCore::Exception>,void>::encode<IPC::Encoder,std::optional<WebCore::Exception>>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages32WebAuthenticatorCoordinatorProxy6CancelENS2_10ConnectionEN6WebKit32WebAuthenticatorCoordinatorProxyES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F33E8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages32WebAuthenticatorCoordinatorProxy6CancelENS2_10ConnectionEN6WebKit32WebAuthenticatorCoordinatorProxyES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F33E8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages32WebAuthenticatorCoordinatorProxy6CancelENS2_10ConnectionEN6WebKit32WebAuthenticatorCoordinatorProxyES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3553;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy26EvaluateJavaScriptFunctionENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEERKNS_6StringENS_6VectorISL_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEbbNSH_IdEEONS_17CompletionHandlerIFvOSL_SU_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSU_SU_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3410;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy26EvaluateJavaScriptFunctionENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEERKNS_6StringENS_6VectorISL_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEbbNSH_IdEEONS_17CompletionHandlerIFvOSL_SU_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSU_SU_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3410;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy26EvaluateJavaScriptFunctionENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEERKNS_6StringENS_6VectorISL_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEbbNSH_IdEEONS_17CompletionHandlerIFvOSL_SU_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSU_SU_EE4callESU_SU_(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 3564;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v6;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v12 = v7;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v7, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v7, a3);
  IPC::Connection::sendMessageImpl(v5, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy28ResolveChildFrameWithOrdinalENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEEjONS_17CompletionHandlerIFvNSH_INS_6StringEEESK_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_SK_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3438;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy28ResolveChildFrameWithOrdinalENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEEjONS_17CompletionHandlerIFvNSH_INS_6StringEEESK_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_SK_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3438;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy28ResolveChildFrameWithOrdinalENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEEjONS_17CompletionHandlerIFvNSH_INS_6StringEEESK_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_SK_EE4callESN_SK_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 3571;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v6;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v13 = v7;
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(v7, a2);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v7, v12);
  IPC::Connection::sendMessageImpl(v5, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

IPC::Decoder *IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v5)
  {
    v6 = v4;
    IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a2, &v17);
    if ((v18 & 1) == 0)
    {
      goto LABEL_8;
    }

    while (1)
    {
      result = IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v19);
      if ((v20 & 1) == 0)
      {
        v14 = *a2;
        v15 = *(a2 + 1);
        *a2 = 0;
        *(a2 + 1) = 0;
        v16 = *(a2 + 3);
        if (!v16)
        {
          break;
        }

        if (!v15)
        {
          break;
        }

        result = (*(*v16 + 16))(v16, v14);
        if ((v20 & 1) == 0)
        {
          break;
        }
      }

      if (v18)
      {
        *a1 = v6;
        *(a1 + 8) = v17;
        *(a1 + 24) = v19;
        *(a1 + 32) = 1;
        return result;
      }

      __break(1u);
LABEL_8:
      v8 = *a2;
      v9 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v10 = *(a2 + 3);
      if (v10)
      {
        if (v9)
        {
          (*(*v10 + 16))(v10, v8);
          if (v18)
          {
            continue;
          }
        }
      }

      break;
    }
  }

  *a1 = 0;
  *(a1 + 32) = 0;
  v11 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = *(*result + 16);

    return v13();
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy31ResolveChildFrameWithNodeHandleENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEERKNS_6StringEONS_17CompletionHandlerIFvNSH_ISL_EESK_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_SK_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3460;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy31ResolveChildFrameWithNodeHandleENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEERKNS_6StringEONS_17CompletionHandlerIFvNSH_ISL_EESK_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_SK_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3460;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy31ResolveChildFrameWithNodeHandleENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEERKNS_6StringEONS_17CompletionHandlerIFvNSH_ISL_EESK_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_SK_EE4callESP_SK_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 3570;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v6;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v13 = v7;
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(v7, a2);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v7, v12);
  IPC::Connection::sendMessageImpl(v5, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy25ResolveChildFrameWithNameENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEERKNS_6StringEONS_17CompletionHandlerIFvNSH_ISL_EESK_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_SK_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3488;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy25ResolveChildFrameWithNameENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEERKNS_6StringEONS_17CompletionHandlerIFvNSH_ISL_EESK_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_SK_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3488;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy25ResolveChildFrameWithNameENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEERKNS_6StringEONS_17CompletionHandlerIFvNSH_ISL_EESK_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_SK_EE4callESP_SK_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 3569;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v6;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v13 = v7;
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(v7, a2);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v7, v12);
  IPC::Connection::sendMessageImpl(v5, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

IPC::Decoder *IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v5 & 1) != 0 && ((v6 = v4, result = IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a2, &v14), (v15) || (v8 = *a2, v9 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v10 = *(a2 + 3)) != 0) && v9 && (result = (*(*v10 + 16))(v10, v8), (v15)))
  {
    *a1 = v6;
    *(a1 + 8) = v14;
    *(a1 + 24) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
    v11 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v13 = *(*result + 16);

      return v13();
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy18ResolveParentFrameENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEEONS_17CompletionHandlerIFvNSH_INS_6StringEEESK_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_SK_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F34B0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy18ResolveParentFrameENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEEONS_17CompletionHandlerIFvNSH_INS_6StringEEESK_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_SK_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F34B0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy18ResolveParentFrameENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEEONS_17CompletionHandlerIFvNSH_INS_6StringEEESK_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_SK_EE4callESN_SK_(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12[0] = a3;
  v12[1] = a4;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 3572;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v6;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v13 = v7;
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(v7, a2);
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v7, v12);
  IPC::Connection::sendMessageImpl(v5, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy10FocusFrameENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSA_INSB_19FrameIdentifierTypeESE_yEEONS_17CompletionHandlerIFvNSt3__18optionalINS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F34D8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy10FocusFrameENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSA_INSB_19FrameIdentifierTypeESE_yEEONS_17CompletionHandlerIFvNSt3__18optionalINS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F34D8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy10FocusFrameENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSA_INSB_19FrameIdentifierTypeESE_yEEONS_17CompletionHandlerIFvNSt3__18optionalINS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EE4callESM_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3565;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy20ComputeElementLayoutENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEENS_6StringEbNS8_16CoordinateSystemEONS_17CompletionHandlerIFvNSH_ISL_EENSB_9FloatRectENSH_INSB_8IntPointEEEbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_SP_SR_bEED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3500;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy20ComputeElementLayoutENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEENS_6StringEbNS8_16CoordinateSystemEONS_17CompletionHandlerIFvNSH_ISL_EENSB_9FloatRectENSH_INSB_8IntPointEEEbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_SP_SR_bEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3500;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy20ComputeElementLayoutENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEENS_6StringEbNS8_16CoordinateSystemEONS_17CompletionHandlerIFvNSH_ISL_EENSB_9FloatRectENSH_INSB_8IntPointEEEbEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_SP_SR_bEE4callESO_SP_SR_b(uint64_t a1, void *a2, uint64_t a3, char a4, char a5, float a6, float a7, float a8, float a9)
{
  v20[0] = a6;
  v20[1] = a7;
  v20[2] = a8;
  v20[3] = a9;
  v19 = a5;
  v13 = *(a1 + 8);
  v12 = *(a1 + 16);
  v14 = IPC::Encoder::operator new(0x238, a2);
  *v14 = 3562;
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 1) = v13;
  *(v14 + 68) = 0;
  *(v14 + 70) = 0;
  *(v14 + 69) = 0;
  IPC::Encoder::encodeHeader(v14);
  v21 = v14;
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(v14, a2);
  IPC::ArgumentCoder<WebCore::FloatRect,void>::encode(v14, v20);
  if (a4)
  {
    v22 = 1;
    IPC::Encoder::operator<<<BOOL>(v14, &v22);
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v14, a3);
    IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v14, SHIDWORD(a3));
  }

  else
  {
    v22 = 0;
    IPC::Encoder::operator<<<BOOL>(v14, &v22);
  }

  IPC::Encoder::operator<<<BOOL>(v14, &v19);
  IPC::Connection::sendMessageImpl(v12, &v21, 0, 0);
  result = v21;
  v21 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v15);
    return bmalloc::api::tzoneFree(v17, v18);
  }

  return result;
}

WTF::StringImpl *IPC::callMemberFunction<WebKit::WebAutomationSessionProxy,WebKit::WebAutomationSessionProxy,void ()(WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,WTF::CompletionHandler<void ()(std::optional<WTF::String>,std::optional<WTF::String>)> &&),std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String>,void ()(std::optional<WTF::String>,std::optional<WTF::String>)>(uint64_t a1, void (*a2)(void *, uint64_t, uint64_t, uint64_t, WTF::StringImpl **, uint64_t), uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v7 = a2;
  v8 = (a1 + (a3 >> 1));
  if (a3)
  {
    v7 = *(*v8 + a2);
  }

  v15[1] = v5;
  v15[2] = v6;
  v9 = *a4;
  v10 = a4[1];
  v11 = a4[2];
  v12 = a4[3];
  a4[3] = 0;
  v15[0] = v12;
  v7(v8, v9, v10, v11, v15, a5);
  result = v15[0];
  v15[0] = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v13);
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy15GetComputedRoleENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEENS_6StringEONS_17CompletionHandlerIFvNSH_ISL_EESN_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_SN_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3528;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy15GetComputedRoleENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEENS_6StringEONS_17CompletionHandlerIFvNSH_ISL_EESN_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_SN_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3528;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy15GetComputedRoleENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEENS_6StringEONS_17CompletionHandlerIFvNSH_ISL_EESN_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_SN_EE4callESN_SN_(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 3567;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v6;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v12 = v7;
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(v7, a2);
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(v7, a3);
  IPC::Connection::sendMessageImpl(v5, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy16GetComputedLabelENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEENS_6StringEONS_17CompletionHandlerIFvNSH_ISL_EESN_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_SN_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3550;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy16GetComputedLabelENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEENS_6StringEONS_17CompletionHandlerIFvNSH_ISL_EESN_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_SN_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3550;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy16GetComputedLabelENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEENS_6StringEONS_17CompletionHandlerIFvNSH_ISL_EESN_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_SN_EE4callESN_SN_(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 3566;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v6;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v12 = v7;
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(v7, a2);
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(v7, a3);
  IPC::Connection::sendMessageImpl(v5, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

WTF::StringImpl *IPC::callMemberFunction<WebKit::WebAutomationSessionProxy,WebKit::WebAutomationSessionProxy,void ()(WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,WTF::CompletionHandler<void ()(std::optional<WTF::String>)> &&),std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String>,void ()(std::optional<WTF::String>)>(uint64_t a1, void (*a2)(void *, uint64_t, uint64_t, uint64_t, WTF::StringImpl **, uint64_t), uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v7 = a2;
  v8 = (a1 + (a3 >> 1));
  if (a3)
  {
    v7 = *(*v8 + a2);
  }

  v15[1] = v5;
  v15[2] = v6;
  v9 = *a4;
  v10 = a4[1];
  v11 = a4[2];
  v12 = a4[3];
  a4[3] = 0;
  v15[0] = v12;
  v7(v8, v9, v10, v11, v15, a5);
  result = v15[0];
  v15[0] = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v13);
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy19SelectOptionElementENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEENS_6StringEONS_17CompletionHandlerIFvNSH_ISL_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3578;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy19SelectOptionElementENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEENS_6StringEONS_17CompletionHandlerIFvNSH_ISL_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3578;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy19SelectOptionElementENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEENS_6StringEONS_17CompletionHandlerIFvNSH_ISL_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EE4callESN_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3573;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy26SetFilesForInputFileUploadENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEENS_6StringEONS_6VectorISL_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvNSH_ISL_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F35A0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy26SetFilesForInputFileUploadENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEENS_6StringEONS_6VectorISL_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvNSH_ISL_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F35A0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy26SetFilesForInputFileUploadENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEENS_6StringEONS_6VectorISL_Lm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvNSH_ISL_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EE4callESS_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3574;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

IPC::Decoder *IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String,BOOL,BOOL>>(uint64_t a1, unsigned __int8 **a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v5)
  {
    v6 = v4;
    IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a2, &v31);
    if ((v32 & 1) == 0)
    {
      goto LABEL_20;
    }

    while (1)
    {
      result = IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v33);
      if ((v34 & 1) == 0)
      {
        v22 = *a2;
        v23 = a2[1];
        *a2 = 0;
        a2[1] = 0;
        v24 = a2[3];
        if (!v24)
        {
          goto LABEL_21;
        }

        if (!v23)
        {
          goto LABEL_21;
        }

        result = (*(*v24 + 16))(v24, v22);
        if ((v34 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      v8 = a2[1];
      v9 = a2[2];
      v10 = *a2;
      if (v8 <= v9 - *a2)
      {
        break;
      }

      v11 = v9 + 1;
      a2[2] = v9 + 1;
      if (!v9)
      {
        goto LABEL_38;
      }

      v12 = *v9;
      if (v12 >= 2)
      {
        goto LABEL_46;
      }

      if (v8 <= v11 - v10)
      {
        v27 = 0;
        v28 = 0;
        *a2 = 0;
        a2[1] = 0;
        v29 = a2[3];
        if (v29)
        {
          (*(*v29 + 16))(v29);
          v28 = *a2;
          v27 = a2[1];
        }

LABEL_43:
        *a2 = 0;
        a2[1] = 0;
        v30 = a2[3];
        if (v30 && v27)
        {
          (*(*v30 + 16))(v30, v28, v27);
LABEL_53:
          v10 = *a2;
          v8 = a2[1];
LABEL_46:
          *a2 = 0;
          a2[1] = 0;
          result = a2[3];
          if (result && v8)
          {
            result = (*(*result + 16))(result, v10);
          }

          v15 = 0;
          *a1 = 0;
          goto LABEL_12;
        }

LABEL_44:
        v8 = 0;
        goto LABEL_45;
      }

      a2[2] = v9 + 2;
      if (v9 == -1)
      {
        v27 = v8;
        v28 = v10;
        goto LABEL_43;
      }

      v13 = *v11;
      if (v13 >= 2)
      {
        goto LABEL_46;
      }

      if (v32)
      {
        *a1 = v6;
        *(a1 + 8) = v31;
        v14 = v33;
        v33 = 0;
        *(a1 + 24) = v14;
        *(a1 + 32) = v12;
        *(a1 + 33) = v13;
        v15 = 1;
LABEL_12:
        *(a1 + 40) = v15;
        if ((v34 & 1) == 0 || (result = v33, v33 = 0, !result) || atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) != 2)
        {
          if ((v15 & 1) == 0)
          {
            goto LABEL_22;
          }

          return result;
        }

        result = WTF::StringImpl::destroy(result, v10);
        if (v15)
        {
          return result;
        }

        goto LABEL_22;
      }

      __break(1u);
LABEL_20:
      v16 = *a2;
      v17 = a2[1];
      *a2 = 0;
      a2[1] = 0;
      v18 = a2[3];
      if (v18)
      {
        if (v17)
        {
          (*(*v18 + 16))(v18, v16);
          if (v32)
          {
            continue;
          }
        }
      }

      goto LABEL_21;
    }

    *a2 = 0;
    a2[1] = 0;
    v25 = a2[3];
    if (v25)
    {
      if (v8)
      {
        (*(*v25 + 16))(v25);
        v8 = a2[1];
      }
    }

    else
    {
      v8 = 0;
    }

LABEL_38:
    *a2 = 0;
    a2[1] = 0;
    v26 = a2[3];
    if (!v26)
    {
      goto LABEL_44;
    }

    if (v8)
    {
      (*(*v26 + 16))(v26);
      goto LABEL_53;
    }

LABEL_45:
    v10 = 0;
    goto LABEL_46;
  }

LABEL_21:
  *a1 = 0;
  *(a1 + 40) = 0;
LABEL_22:
  v19 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  result = a2[3];
  if (result)
  {
    v20 = v19 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    v21 = *(*result + 16);

    return v21();
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy14TakeScreenshotENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEENS_6StringEbbONS_17CompletionHandlerIFvONSH_INSB_21ShareableBitmapHandleEEEOSL_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_SQ_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F35C8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy14TakeScreenshotENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEENS_6StringEbbONS_17CompletionHandlerIFvONSH_INSB_21ShareableBitmapHandleEEEOSL_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_SQ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F35C8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy14TakeScreenshotENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEENS_6StringEbbONS_17CompletionHandlerIFvONSH_INSB_21ShareableBitmapHandleEEEOSL_EEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_SQ_EE4callESP_SQ_(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 3576;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v6;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v12 = v7;
  IPC::ArgumentCoder<std::optional<WebCore::ShareableBitmapHandle>,void>::encode<IPC::Encoder,std::optional<WebCore::ShareableBitmapHandle>>(v7, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v7, a3);
  IPC::Connection::sendMessageImpl(v5, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy25SnapshotRectForScreenshotENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEENS_6StringEbbONS_17CompletionHandlerIFvNSH_ISL_EEONSB_7IntRectEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_SP_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F35F0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy25SnapshotRectForScreenshotENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEENS_6StringEbbONS_17CompletionHandlerIFvNSH_ISL_EEONSB_7IntRectEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_SP_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F35F0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy25SnapshotRectForScreenshotENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEENS_6StringEbbONS_17CompletionHandlerIFvNSH_ISL_EEONSB_7IntRectEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_SP_EE4callESN_SP_(uint64_t a1, void *a2, int *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 3575;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v6;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v12 = v7;
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(v7, a2);
  IPC::ArgumentCoder<WebCore::IntRect,void>::encode(v7, a3);
  IPC::Connection::sendMessageImpl(v5, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy18GetCookiesForFrameENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEEONS_17CompletionHandlerIFvNSH_INS_6StringEEENS_6VectorINSB_6CookieELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_SS_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3618;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy18GetCookiesForFrameENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEEONS_17CompletionHandlerIFvNSH_INS_6StringEEENS_6VectorINSB_6CookieELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_SS_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3618;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy18GetCookiesForFrameENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEEONS_17CompletionHandlerIFvNSH_INS_6StringEEENS_6VectorINSB_6CookieELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_SS_EE4callESN_SS_(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 3568;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = v6;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v12 = v7;
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(v7, a2);
  IPC::VectorArgumentCoder<false,WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v7, a3);
  IPC::Connection::sendMessageImpl(v5, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v8);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy12DeleteCookieENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEENS_6StringEONS_17CompletionHandlerIFvNSH_ISL_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3640;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy12DeleteCookieENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEENS_6StringEONS_17CompletionHandlerIFvNSH_ISL_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3640;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages25WebAutomationSessionProxy12DeleteCookieENS2_10ConnectionEN6WebKit25WebAutomationSessionProxyES9_FvNS_23ObjectIdentifierGenericIN7WebCore18PageIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INSB_19FrameIdentifierTypeESE_yEEEENS_6StringEONS_17CompletionHandlerIFvNSH_ISL_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSN_EE4callESN_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3563;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages16WebCookieManager23GetHostnamesWithCookiesENS2_10ConnectionEN6WebKit16WebCookieManagerES9_FvN3PAL9SessionIDEONS_17CompletionHandlerIFvONS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3668;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages16WebCookieManager23GetHostnamesWithCookiesENS2_10ConnectionEN6WebKit16WebCookieManagerES9_FvN3PAL9SessionIDEONS_17CompletionHandlerIFvONS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3668;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages16WebCookieManager23GetHostnamesWithCookiesENS2_10ConnectionEN6WebKit16WebCookieManagerES9_FvN3PAL9SessionIDEONS_17CompletionHandlerIFvONS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EE4callESI_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3585;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages16WebCookieManager25DeleteCookiesForHostnamesENS2_10ConnectionEN6WebKit16WebCookieManagerES9_FvN3PAL9SessionIDERKNS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3690;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages16WebCookieManager25DeleteCookiesForHostnamesENS2_10ConnectionEN6WebKit16WebCookieManagerES9_FvN3PAL9SessionIDERKNS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3690;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages16WebCookieManager25DeleteCookiesForHostnamesENS2_10ConnectionEN6WebKit16WebCookieManagerES9_FvN3PAL9SessionIDERKNS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3581;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages16WebCookieManager16DeleteAllCookiesENS2_10ConnectionEN6WebKit16WebCookieManagerES9_FvN3PAL9SessionIDEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F36B8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages16WebCookieManager16DeleteAllCookiesENS2_10ConnectionEN6WebKit16WebCookieManagerES9_FvN3PAL9SessionIDEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F36B8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages16WebCookieManager16DeleteAllCookiesENS2_10ConnectionEN6WebKit16WebCookieManagerES9_FvN3PAL9SessionIDEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3579;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>@<X0>(IPC::Decoder *a1@<X0>, char *a2@<X8>, __n128 a3@<Q1>, __n128 a4@<Q0>)
{
  result = IPC::VectorArgumentCoder<false,WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2, a3, a4);
  if ((a2[16] & 1) == 0)
  {
    v7 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v7 != 0)
    {
      v9 = *(*result + 16);

      return v9();
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages16WebCookieManager9SetCookieENS2_10ConnectionEN6WebKit16WebCookieManagerES9_FvN3PAL9SessionIDERKNS_6VectorIN7WebCore6CookieELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEyONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F36E0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages16WebCookieManager9SetCookieENS2_10ConnectionEN6WebKit16WebCookieManagerES9_FvN3PAL9SessionIDERKNS_6VectorIN7WebCore6CookieELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEyONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F36E0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages16WebCookieManager9SetCookieENS2_10ConnectionEN6WebKit16WebCookieManagerES9_FvN3PAL9SessionIDERKNS_6VectorIN7WebCore6CookieELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEyONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3586;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages16WebCookieManager10SetCookiesENS2_10ConnectionEN6WebKit16WebCookieManagerES9_FvN3PAL9SessionIDERKNS_6VectorIN7WebCore6CookieELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEERKNS_3URLESM_ONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3708;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages16WebCookieManager10SetCookiesENS2_10ConnectionEN6WebKit16WebCookieManagerES9_FvN3PAL9SessionIDERKNS_6VectorIN7WebCore6CookieELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEERKNS_3URLESM_ONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3708;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages16WebCookieManager10SetCookiesENS2_10ConnectionEN6WebKit16WebCookieManagerES9_FvN3PAL9SessionIDERKNS_6VectorIN7WebCore6CookieELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEERKNS_3URLESM_ONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3587;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages16WebCookieManager13GetAllCookiesENS2_10ConnectionEN6WebKit16WebCookieManagerES9_FvN3PAL9SessionIDEONS_17CompletionHandlerIFvONS_6VectorIN7WebCore6CookieELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3730;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages16WebCookieManager13GetAllCookiesENS2_10ConnectionEN6WebKit16WebCookieManagerES9_FvN3PAL9SessionIDEONS_17CompletionHandlerIFvONS_6VectorIN7WebCore6CookieELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3730;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages16WebCookieManager13GetAllCookiesENS2_10ConnectionEN6WebKit16WebCookieManagerES9_FvN3PAL9SessionIDEONS_17CompletionHandlerIFvONS_6VectorIN7WebCore6CookieELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSJ_EE4callESJ_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3582;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::VectorArgumentCoder<false,WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages16WebCookieManager10GetCookiesENS2_10ConnectionEN6WebKit16WebCookieManagerES9_FvN3PAL9SessionIDERKNS_3URLEONS_17CompletionHandlerIFvONS_6VectorIN7WebCore6CookieELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3758;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages16WebCookieManager10GetCookiesENS2_10ConnectionEN6WebKit16WebCookieManagerES9_FvN3PAL9SessionIDERKNS_3URLEONS_17CompletionHandlerIFvONS_6VectorIN7WebCore6CookieELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3758;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages16WebCookieManager10GetCookiesENS2_10ConnectionEN6WebKit16WebCookieManagerES9_FvN3PAL9SessionIDERKNS_3URLEONS_17CompletionHandlerIFvONS_6VectorIN7WebCore6CookieELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EE4callESM_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3583;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::VectorArgumentCoder<false,WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages16WebCookieManager12DeleteCookieENS2_10ConnectionEN6WebKit16WebCookieManagerES9_FvN3PAL9SessionIDERKN7WebCore6CookieEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3780;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages16WebCookieManager12DeleteCookieENS2_10ConnectionEN6WebKit16WebCookieManagerES9_FvN3PAL9SessionIDERKN7WebCore6CookieEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3780;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages16WebCookieManager12DeleteCookieENS2_10ConnectionEN6WebKit16WebCookieManagerES9_FvN3PAL9SessionIDERKN7WebCore6CookieEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3580;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages16WebCookieManager29DeleteAllCookiesModifiedSinceENS2_10ConnectionEN6WebKit16WebCookieManagerES9_FvN3PAL9SessionIDENS_8WallTimeEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F37A8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages16WebCookieManager29DeleteAllCookiesModifiedSinceENS2_10ConnectionEN6WebKit16WebCookieManagerES9_FvN3PAL9SessionIDENS_8WallTimeEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F37A8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages16WebCookieManager29DeleteAllCookiesModifiedSinceENS2_10ConnectionEN6WebKit16WebCookieManagerES9_FvN3PAL9SessionIDENS_8WallTimeEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3578;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages16WebCookieManager25SetHTTPCookieAcceptPolicyENS2_10ConnectionEN6WebKit16WebCookieManagerES9_FvN3PAL9SessionIDEN7WebCore22HTTPCookieAcceptPolicyEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F37D0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages16WebCookieManager25SetHTTPCookieAcceptPolicyENS2_10ConnectionEN6WebKit16WebCookieManagerES9_FvN3PAL9SessionIDEN7WebCore22HTTPCookieAcceptPolicyEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F37D0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages16WebCookieManager25SetHTTPCookieAcceptPolicyENS2_10ConnectionEN6WebKit16WebCookieManagerES9_FvN3PAL9SessionIDEN7WebCore22HTTPCookieAcceptPolicyEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3588;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages16WebCookieManager25GetHTTPCookieAcceptPolicyENS2_10ConnectionEN6WebKit16WebCookieManagerES9_FvN3PAL9SessionIDEONS_17CompletionHandlerIFvN7WebCore22HTTPCookieAcceptPolicyEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSE_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F37F8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages16WebCookieManager25GetHTTPCookieAcceptPolicyENS2_10ConnectionEN6WebKit16WebCookieManagerES9_FvN3PAL9SessionIDEONS_17CompletionHandlerIFvN7WebCore22HTTPCookieAcceptPolicyEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSE_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F37F8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages16WebCookieManager25GetHTTPCookieAcceptPolicyENS2_10ConnectionEN6WebKit16WebCookieManagerES9_FvN3PAL9SessionIDEONS_17CompletionHandlerIFvN7WebCore22HTTPCookieAcceptPolicyEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSE_EE4callESE_(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3584;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v5, v2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

uint64_t *IPC::Decoder::decode<std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(uint64_t a1, uint64_t *a2)
{
  IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2, &v9);
  if ((v10 & 1) != 0 && (result = IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2, &v11), v12 == 1))
  {
    if (v10)
    {
      v5 = v11;
      *a1 = v9;
      *(a1 + 16) = v5;
      *(a1 + 32) = 1;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 32) = 0;
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
      v8 = *(*result + 16);

      return v8();
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext14ActionGetTitleENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericINS8_32WebExtensionWindowIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSB_INSC_INS8_29WebExtensionTabIdentifierTypeESF_yEEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6StringESP_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3820;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext14ActionGetTitleENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericINS8_32WebExtensionWindowIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSB_INSC_INS8_29WebExtensionTabIdentifierTypeESF_yEEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6StringESP_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3820;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext14ActionGetTitleENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericINS8_32WebExtensionWindowIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSB_INSC_INS8_29WebExtensionTabIdentifierTypeESF_yEEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6StringESP_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EE4callESR_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3594;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::String,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::String,WTF::String>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, uint64_t a2)
{
  if (!*(a2 + 8))
  {
    v6 = 1;
    v4 = IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (!*(a2 + 8))
    {
      return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
    }

LABEL_5:
    mpark::throw_bad_variant_access(v4);
  }

  v7 = 0;
  v4 = IPC::Encoder::operator<<<BOOL>(a1, &v7);
  if (*(a2 + 8) != 1)
  {
    goto LABEL_5;
  }

  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
}

IPC::Decoder *IPC::Decoder::decode<std::tuple<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::String>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2, &v12);
  if (v13 & 1) != 0 && (IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2, &v14), (v15))
  {
    result = IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v16);
    if ((v17 & 1) == 0)
    {
      goto LABEL_9;
    }

    while ((v13 & 1) == 0 || (v15 & 1) == 0)
    {
      __break(1u);
LABEL_9:
      v6 = *a2;
      v7 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v8 = *(a2 + 3);
      if (v8)
      {
        if (v7)
        {
          result = (*(*v8 + 16))(v8, v6);
          if (v17)
          {
            continue;
          }
        }
      }

      goto LABEL_10;
    }

    v5 = v14;
    *a1 = v12;
    *(a1 + 16) = v5;
    *(a1 + 32) = v16;
    *(a1 + 40) = 1;
  }

  else
  {
LABEL_10:
    *a1 = 0;
    *(a1 + 40) = 0;
    v9 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      v11 = *(*result + 16);

      return v11();
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext14ActionSetTitleENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericINS8_32WebExtensionWindowIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSB_INSC_INS8_29WebExtensionTabIdentifierTypeESF_yEEEERKNS_6StringEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSL_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3848;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext14ActionSetTitleENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericINS8_32WebExtensionWindowIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSB_INSC_INS8_29WebExtensionTabIdentifierTypeESF_yEEEERKNS_6StringEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSL_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3848;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext14ActionSetTitleENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericINS8_32WebExtensionWindowIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSB_INSC_INS8_29WebExtensionTabIdentifierTypeESF_yEEEERKNS_6StringEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSL_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EE4callEST_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3600;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    v6 = 0;
    result = IPC::Encoder::operator<<<BOOL>(a1, &v6);
    if (*(a2 + 8))
    {
      return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v5 = 1;
    return IPC::Encoder::operator<<<BOOL>(a1, &v5);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext13ActionSetIconENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericINS8_32WebExtensionWindowIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSB_INSC_INS8_29WebExtensionTabIdentifierTypeESF_yEEEERKNS_6StringEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSL_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3870;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext13ActionSetIconENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericINS8_32WebExtensionWindowIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSB_INSC_INS8_29WebExtensionTabIdentifierTypeESF_yEEEERKNS_6StringEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSL_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3870;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext13ActionSetIconENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericINS8_32WebExtensionWindowIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSB_INSC_INS8_29WebExtensionTabIdentifierTypeESF_yEEEERKNS_6StringEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSL_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EE4callEST_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3598;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext14ActionGetPopupENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericINS8_32WebExtensionWindowIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSB_INSC_INS8_29WebExtensionTabIdentifierTypeESF_yEEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6StringESP_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3898;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext14ActionGetPopupENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericINS8_32WebExtensionWindowIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSB_INSC_INS8_29WebExtensionTabIdentifierTypeESF_yEEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6StringESP_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3898;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext14ActionGetPopupENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericINS8_32WebExtensionWindowIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSB_INSC_INS8_29WebExtensionTabIdentifierTypeESF_yEEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6StringESP_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EE4callESR_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3593;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::String,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext14ActionSetPopupENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericINS8_32WebExtensionWindowIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSB_INSC_INS8_29WebExtensionTabIdentifierTypeESF_yEEEERKNS_6StringEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSL_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F38C0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext14ActionSetPopupENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericINS8_32WebExtensionWindowIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSB_INSC_INS8_29WebExtensionTabIdentifierTypeESF_yEEEERKNS_6StringEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSL_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F38C0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext14ActionSetPopupENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericINS8_32WebExtensionWindowIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSB_INSC_INS8_29WebExtensionTabIdentifierTypeESF_yEEEERKNS_6StringEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSL_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EE4callEST_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3599;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext15ActionOpenPopupENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_32WebExtensionWindowIdentifierTypeESD_yEEEENSG_INSA_INS8_29WebExtensionTabIdentifierTypeESD_yEEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F38E8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext15ActionOpenPopupENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_32WebExtensionWindowIdentifierTypeESD_yEEEENSG_INSA_INS8_29WebExtensionTabIdentifierTypeESD_yEEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F38E8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext15ActionOpenPopupENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_26WebPageProxyIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEENSt3__18optionalINSA_INS8_32WebExtensionWindowIdentifierTypeESD_yEEEENSG_INSA_INS8_29WebExtensionTabIdentifierTypeESD_yEEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EE4callEST_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3595;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext18ActionGetBadgeTextENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericINS8_32WebExtensionWindowIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSB_INSC_INS8_29WebExtensionTabIdentifierTypeESF_yEEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6StringESP_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3910;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext18ActionGetBadgeTextENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericINS8_32WebExtensionWindowIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSB_INSC_INS8_29WebExtensionTabIdentifierTypeESF_yEEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6StringESP_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3910;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext18ActionGetBadgeTextENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericINS8_32WebExtensionWindowIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSB_INSC_INS8_29WebExtensionTabIdentifierTypeESF_yEEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6StringESP_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EE4callESR_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3591;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::String,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext18ActionSetBadgeTextENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericINS8_32WebExtensionWindowIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSB_INSC_INS8_29WebExtensionTabIdentifierTypeESF_yEEEERKNS_6StringEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSL_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3938;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext18ActionSetBadgeTextENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericINS8_32WebExtensionWindowIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSB_INSC_INS8_29WebExtensionTabIdentifierTypeESF_yEEEERKNS_6StringEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSL_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3938;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext18ActionSetBadgeTextENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericINS8_32WebExtensionWindowIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSB_INSC_INS8_29WebExtensionTabIdentifierTypeESF_yEEEERKNS_6StringEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSL_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJST_EE4callEST_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3596;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext16ActionGetEnabledENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericINS8_32WebExtensionWindowIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSB_INSC_INS8_29WebExtensionTabIdentifierTypeESF_yEEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIbNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3960;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext16ActionGetEnabledENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericINS8_32WebExtensionWindowIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSB_INSC_INS8_29WebExtensionTabIdentifierTypeESF_yEEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIbNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3960;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext16ActionGetEnabledENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericINS8_32WebExtensionWindowIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSB_INSC_INS8_29WebExtensionTabIdentifierTypeESF_yEEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIbNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSR_EE4callESR_(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3592;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v11 = v5;
  if (a2[8])
  {
    v13 = 0;
    v6 = IPC::Encoder::operator<<<BOOL>(v5, &v13);
    if (a2[8] == 1)
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, a2);
      goto LABEL_6;
    }

LABEL_9:
    mpark::throw_bad_variant_access(v6);
  }

  v12 = 1;
  v6 = IPC::Encoder::operator<<<BOOL>(v5, &v12);
  if (a2[8])
  {
    goto LABEL_9;
  }

  IPC::Encoder::operator<<<BOOL>(v5, a2);
LABEL_6:
  IPC::Connection::sendMessageImpl(v3, &v11, 0, 0);
  result = v11;
  v11 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v9, v10);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext16ActionSetEnabledENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericINS8_29WebExtensionTabIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEbONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3988;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext16ActionSetEnabledENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericINS8_29WebExtensionTabIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEbONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3988;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext16ActionSetEnabledENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericINS8_29WebExtensionTabIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEEbONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSO_EE4callESO_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3597;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext9AlarmsGetENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6StringEONS_17CompletionHandlerIFvONSt3__18optionalINS8_27WebExtensionAlarmParametersEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F39B0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext9AlarmsGetENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6StringEONS_17CompletionHandlerIFvONSt3__18optionalINS8_27WebExtensionAlarmParametersEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F39B0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext9AlarmsGetENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6StringEONS_17CompletionHandlerIFvONSt3__18optionalINS8_27WebExtensionAlarmParametersEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSI_EE4callESI_(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3604;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v12 = v5;
  if (a2[32])
  {
    v13 = 1;
    IPC::Encoder::operator<<<BOOL>(v5, &v13);
    if ((a2[32] & 1) == 0)
    {
      v10 = std::__throw_bad_optional_access[abi:sn200100]();
      return _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext11AlarmsClearENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6StringEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(v10, v11);
    }

    IPC::ArgumentCoder<WebKit::WebExtensionAlarmParameters,void>::encode(v5, a2);
  }

  else
  {
    v14 = 0;
    IPC::Encoder::operator<<<BOOL>(v5, &v14);
  }

  IPC::Connection::sendMessageImpl(v3, &v12, 0, 0);
  result = v12;
  v12 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext11AlarmsClearENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6StringEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F39D8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext11AlarmsClearENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6StringEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F39D8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext11AlarmsClearENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6StringEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3602;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext12AlarmsGetAllENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_17CompletionHandlerIFvONS_6VectorINS8_27WebExtensionAlarmParametersELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3A00;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext12AlarmsGetAllENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_17CompletionHandlerIFvONS_6VectorINS8_27WebExtensionAlarmParametersELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3A00;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext12AlarmsGetAllENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_17CompletionHandlerIFvONS_6VectorINS8_27WebExtensionAlarmParametersELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EE4callESG_(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3603;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v13 = v5;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, a2[3]);
  v6 = a2[3];
  if (v6)
  {
    v7 = *a2;
    v8 = 32 * v6;
    do
    {
      IPC::ArgumentCoder<WebKit::WebExtensionAlarmParameters,void>::encode(v5, v7);
      v7 += 32;
      v8 -= 32;
    }

    while (v8);
  }

  IPC::Connection::sendMessageImpl(v3, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext14AlarmsClearAllENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3A28;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext14AlarmsClearAllENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3A28;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext14AlarmsClearAllENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3601;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext14CommandsGetAllENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_17CompletionHandlerIFvNS_6VectorINS8_29WebExtensionCommandParametersELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSF_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3A50;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext14CommandsGetAllENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_17CompletionHandlerIFvNS_6VectorINS8_29WebExtensionCommandParametersELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSF_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3A50;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext14CommandsGetAllENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_17CompletionHandlerIFvNS_6VectorINS8_29WebExtensionCommandParametersELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSF_EE4callESF_(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3605;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v13 = v5;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, a2[3]);
  v6 = a2[3];
  if (v6)
  {
    v7 = *a2;
    v8 = 24 * v6;
    do
    {
      IPC::ArgumentCoder<WebKit::WebExtensionCommandParameters,void>::encode(v5, v7);
      v7 += 3;
      v8 -= 24;
    }

    while (v8);
  }

  IPC::Connection::sendMessageImpl(v3, &v13, 0, 0);
  result = v13;
  v13 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

void IPC::Decoder::decode<std::tuple<std::optional<PAL::SessionID>,WTF::String,WTF::URL>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::Decoder::decode<std::optional<PAL::SessionID>>(&v18, a2);
  if (v19)
  {
    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v20);
    if ((v21 & 1) == 0)
    {
      v15 = *a2;
      v16 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v17 = *(a2 + 3);
      if (!v17 || !v16 || ((*(*v17 + 16))(v17, v15), (v21 & 1) == 0))
      {
        *a1 = 0;
        *(a1 + 64) = 0;
        goto LABEL_14;
      }
    }

    IPC::ArgumentCoder<WTF::URL,void>::decode(a2, v22);
    if ((v23 & 1) == 0)
    {
      v6 = *a2;
      v13 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v14 = *(a2 + 3);
      if (!v14 || !v13 || ((*(*v14 + 16))(v14, v6), (v23 & 1) == 0))
      {
        *a1 = 0;
        *(a1 + 64) = 0;
LABEL_10:
        if (v21)
        {
          v8 = v20;
          v20 = 0;
          if (v8)
          {
            if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v8, v6);
            }
          }
        }

LABEL_14:
        if (*(a1 + 64))
        {
          return;
        }

        goto LABEL_18;
      }
    }

    if (v19 & 1) != 0 && (v21)
    {
      *a1 = v18;
      v5 = v20;
      v20 = 0;
      *(a1 + 16) = v5;
      v4.n128_f64[0] = WTF::URL::URL(a1 + 24, v22);
      *(a1 + 64) = 1;
      if (v23)
      {
        v7 = v22[0];
        v22[0] = 0;
        if (v7)
        {
          if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v7, v6);
          }
        }
      }

      goto LABEL_10;
    }

    __break(1u);
  }

  *a1 = 0;
  *(a1 + 64) = 0;
LABEL_18:
  v9 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  v10 = *(a2 + 3);
  if (v10)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = *(*v10 + 16);

    v12(v4);
  }
}

IPC::Decoder *IPC::Decoder::decode<std::optional<PAL::SessionID>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::optional<PAL::SessionID>,void>::decode<IPC::Decoder>(a2, a1);
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

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext10CookiesGetENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalIN3PAL9SessionIDEEERKNS_6StringERKNS_3URLEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSB_INS8_28WebExtensionCookieParametersEEESF_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3A78;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext10CookiesGetENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalIN3PAL9SessionIDEEERKNS_6StringERKNS_3URLEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSB_INS8_28WebExtensionCookieParametersEEESF_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3A78;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext10CookiesGetENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalIN3PAL9SessionIDEEERKNS_6StringERKNS_3URLEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSB_INS8_28WebExtensionCookieParametersEEESF_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EE4callESS_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3608;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<std::optional<WebKit::WebExtensionCookieParameters>,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<std::optional<WebKit::WebExtensionCookieParameters>,WTF::String>,void>::encode<IPC::Encoder>(IPC::Encoder *a1, uint64_t a2)
{
  if (*(a2 + 168))
  {
    v9 = 0;
    v4 = IPC::Encoder::operator<<<BOOL>(a1, &v9);
    if (*(a2 + 168) == 1)
    {
      return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
    }

LABEL_10:
    mpark::throw_bad_variant_access(v4);
  }

  v8 = 1;
  v4 = IPC::Encoder::operator<<<BOOL>(a1, &v8);
  if (*(a2 + 168))
  {
    goto LABEL_10;
  }

  if (*(a2 + 160))
  {
    v10 = 1;
    IPC::Encoder::operator<<<BOOL>(a1, &v10);
    if (*(a2 + 160))
    {
      IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(a1, a2);
      return IPC::ArgumentCoder<WebCore::Cookie,void>::encode(a1, a2 + 16);
    }

    else
    {
      v6 = std::__throw_bad_optional_access[abi:sn200100]();
      return _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext13CookiesGetAllENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalIN3PAL9SessionIDEEERKNS_3URLERKNS8_34WebExtensionCookieFilterParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorINS8_28WebExtensionCookieParametersELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSW_EED1Ev(v6, v7);
    }
  }

  else
  {
    v11 = 0;
    return IPC::Encoder::operator<<<BOOL>(a1, &v11);
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext13CookiesGetAllENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalIN3PAL9SessionIDEEERKNS_3URLERKNS8_34WebExtensionCookieFilterParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorINS8_28WebExtensionCookieParametersELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSW_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3AA0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext13CookiesGetAllENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalIN3PAL9SessionIDEEERKNS_3URLERKNS8_34WebExtensionCookieFilterParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorINS8_28WebExtensionCookieParametersELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSW_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3AA0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext13CookiesGetAllENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalIN3PAL9SessionIDEEERKNS_3URLERKNS8_34WebExtensionCookieFilterParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorINS8_28WebExtensionCookieParametersELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSW_EE4callESW_(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3607;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v14 = v5;
  if (*(a2 + 16))
  {
    v16 = 0;
    v6 = IPC::Encoder::operator<<<BOOL>(v5, &v16);
    if (*(a2 + 16) == 1)
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, a2);
      goto LABEL_8;
    }

LABEL_11:
    mpark::throw_bad_variant_access(v6);
  }

  v15 = 1;
  v6 = IPC::Encoder::operator<<<BOOL>(v5, &v15);
  if (*(a2 + 16))
  {
    goto LABEL_11;
  }

  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, a2[3]);
  v7 = a2[3];
  if (v7)
  {
    v8 = *a2;
    v9 = v8 + 160 * v7;
    do
    {
      IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(v5, v8);
      IPC::ArgumentCoder<WebCore::Cookie,void>::encode(v5, v8 + 16);
      v8 += 160;
    }

    while (v8 != v9);
  }

LABEL_8:
  IPC::Connection::sendMessageImpl(v3, &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v10);
    return bmalloc::api::tzoneFree(v12, v13);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext10CookiesSetENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalIN3PAL9SessionIDEEERKNS8_28WebExtensionCookieParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSB_ISF_EENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3AC8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext10CookiesSetENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalIN3PAL9SessionIDEEERKNS8_28WebExtensionCookieParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSB_ISF_EENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3AC8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext10CookiesSetENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalIN3PAL9SessionIDEEERKNS8_28WebExtensionCookieParametersEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSB_ISF_EENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSP_EE4callESP_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3610;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<std::optional<WebKit::WebExtensionCookieParameters>,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext13CookiesRemoveENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalIN3PAL9SessionIDEEERKNS_6StringERKNS_3URLEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSB_INS8_28WebExtensionCookieParametersEEESF_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3AF0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext13CookiesRemoveENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalIN3PAL9SessionIDEEERKNS_6StringERKNS_3URLEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSB_INS8_28WebExtensionCookieParametersEEESF_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3AF0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext13CookiesRemoveENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalIN3PAL9SessionIDEEERKNS_6StringERKNS_3URLEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINSB_INS8_28WebExtensionCookieParametersEEESF_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSS_EE4callESS_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3609;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<std::optional<WebKit::WebExtensionCookieParameters>,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext25CookiesGetAllCookieStoresENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_7HashMapIN3PAL9SessionIDENS_6VectorINS_23ObjectIdentifierGenericINS8_29WebExtensionTabIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_11DefaultHashISG_EENS_10HashTraitsISG_EENSS_ISP_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ESO_EENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJS10_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3B18;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext25CookiesGetAllCookieStoresENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_7HashMapIN3PAL9SessionIDENS_6VectorINS_23ObjectIdentifierGenericINS8_29WebExtensionTabIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_11DefaultHashISG_EENS_10HashTraitsISG_EENSS_ISP_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ESO_EENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJS10_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3B18;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext25CookiesGetAllCookieStoresENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_7HashMapIN3PAL9SessionIDENS_6VectorINS_23ObjectIdentifierGenericINS8_29WebExtensionTabIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_11DefaultHashISG_EENS_10HashTraitsISG_EENSS_ISP_EENS_15HashTableTraitsELNS_17ShouldValidateKeyE1ESO_EENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJS10_EE4callES10_(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3606;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v23 = v5;
  if (a2[8])
  {
    v25 = 0;
    v6 = IPC::Encoder::operator<<<BOOL>(v5, &v25);
    if (a2[8] == 1)
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, a2);
      goto LABEL_29;
    }

LABEL_32:
    mpark::throw_bad_variant_access(v6);
  }

  v24 = 1;
  v6 = IPC::Encoder::operator<<<BOOL>(v5, &v24);
  if (a2[8])
  {
    goto LABEL_32;
  }

  if (*a2)
  {
    v7 = *(*a2 - 12);
  }

  else
  {
    v7 = 0;
  }

  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v5, v7);
  v8 = *a2;
  if (!*a2)
  {
    v10 = 0;
    LODWORD(v9) = 0;
LABEL_18:
    v12 = v10;
    v10 = v8 + 24 * v9;
    if (v8)
    {
      goto LABEL_16;
    }

LABEL_19:
    v14 = 0;
    goto LABEL_22;
  }

  v9 = *(v8 - 4);
  v10 = v8 + 24 * v9;
  if (!*(v8 - 12))
  {
    goto LABEL_18;
  }

  if (!v9)
  {
    v13 = 0;
    v12 = v8;
    goto LABEL_21;
  }

  v11 = 24 * v9;
  v12 = v8;
  while ((*v12 + 1) <= 1)
  {
    v12 += 24;
    v11 -= 24;
    if (!v11)
    {
      v12 = v10;
      break;
    }
  }

  if (!v8)
  {
    goto LABEL_19;
  }

LABEL_16:
  v13 = *(v8 - 4);
LABEL_21:
  v14 = v8 + 24 * v13;
LABEL_22:
  while (v12 != v14)
  {
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, *v12);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, *(v12 + 20));
    v15 = *(v12 + 20);
    if (v15)
    {
      v16 = *(v12 + 8);
      v17 = 8 * v15;
      do
      {
        v18 = *v16++;
        IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, v18);
        v17 -= 8;
      }

      while (v17);
    }

    do
    {
      v12 += 24;
    }

    while (v12 != v10 && (*v12 + 1) <= 1);
  }

LABEL_29:
  IPC::Connection::sendMessageImpl(v3, &v23, 0, 0);
  result = v23;
  v23 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v19);
    return bmalloc::api::tzoneFree(v21, v22);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext39DeclarativeNetRequestGetEnabledRulesetsENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_17CompletionHandlerIFvONS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3B40;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext39DeclarativeNetRequestGetEnabledRulesetsENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_17CompletionHandlerIFvONS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3B40;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext39DeclarativeNetRequestGetEnabledRulesetsENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_17CompletionHandlerIFvONS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EE4callESG_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3613;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

WTF *IPC::ArgumentCoder<std::tuple<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>@<X0>(WTF **a1@<X0>, _BYTE *a3@<X8>)
{
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, v10);
  if (v11 & 1) != 0 || ((v7 = *a1, v8 = a1[1], *a1 = 0, a1[1] = 0, (result = a1[3]) != 0) ? (v9 = v8 == 0) : (v9 = 1), !v9 && (result = (*(*result + 16))(result, v7), (v11)))
  {
    result = IPC::ArgumentCoder<std::tuple<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, v10, a3);
    if (v11)
    {
      return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v10, v6);
    }
  }

  else
  {
    *a3 = 0;
    a3[32] = 0;
  }

  return result;
}

WTF *IPC::ArgumentCoder<std::tuple<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>@<X0>(IPC::Decoder *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, &v12);
  if ((v14 & 1) == 0)
  {
    goto LABEL_7;
  }

  while ((*(a2 + 16) & 1) == 0)
  {
    __break(1u);
LABEL_7:
    v9 = *a1;
    v10 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      result = (*(*result + 16))(result, v9);
      if (v14)
      {
        continue;
      }
    }

    *a3 = 0;
    *(a3 + 32) = 0;
    return result;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  result = WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a3, a2);
  *(a3 + 16) = v12;
  v8 = v13;
  v12 = 0;
  v13 = 0;
  *(a3 + 24) = v8;
  *(a3 + 32) = 1;
  if (v14)
  {
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v12, v7);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext42DeclarativeNetRequestUpdateEnabledRulesetsENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEESG_ONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSB_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3B68;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext42DeclarativeNetRequestUpdateEnabledRulesetsENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEESG_ONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSB_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3B68;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext42DeclarativeNetRequestUpdateEnabledRulesetsENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvRKNS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEESG_ONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSB_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EE4callESM_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3618;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext50DeclarativeNetRequestDisplayActionCountAsBadgeTextENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvbONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3B90;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext50DeclarativeNetRequestDisplayActionCountAsBadgeTextENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvbONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3B90;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext50DeclarativeNetRequestDisplayActionCountAsBadgeTextENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvbONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSG_EE4callESG_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3611;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext41DeclarativeNetRequestIncrementActionCountENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_29WebExtensionTabIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEdONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3BB8;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext41DeclarativeNetRequestIncrementActionCountENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_29WebExtensionTabIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEdONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3BB8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext41DeclarativeNetRequestIncrementActionCountENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNS_23ObjectIdentifierGenericINS8_29WebExtensionTabIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEdONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvNS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EE4callESL_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3616;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext36DeclarativeNetRequestGetMatchedRulesENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericINS8_29WebExtensionTabIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSB_INS_8WallTimeEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorINS8_33WebExtensionMatchedRuleParametersELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSV_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3BE0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext36DeclarativeNetRequestGetMatchedRulesENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericINS8_29WebExtensionTabIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSB_INS_8WallTimeEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorINS8_33WebExtensionMatchedRuleParametersELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSV_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3BE0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext36DeclarativeNetRequestGetMatchedRulesENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvNSt3__18optionalINS_23ObjectIdentifierGenericINS8_29WebExtensionTabIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEEENSB_INS_8WallTimeEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6VectorINS8_33WebExtensionMatchedRuleParametersELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_6StringEEEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSV_EE4callESV_(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3614;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v14 = v5;
  if (*(a2 + 16))
  {
    v16 = 0;
    v6 = IPC::Encoder::operator<<<BOOL>(v5, &v16);
    if (*(a2 + 16) == 1)
    {
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v5, a2);
      goto LABEL_8;
    }

LABEL_11:
    mpark::throw_bad_variant_access(v6);
  }

  v15 = 1;
  v6 = IPC::Encoder::operator<<<BOOL>(v5, &v15);
  if (*(a2 + 16))
  {
    goto LABEL_11;
  }

  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v5, *(a2 + 3));
  v7 = *(a2 + 3);
  if (v7)
  {
    v8 = *a2;
    v9 = 56 * v7;
    do
    {
      IPC::ArgumentCoder<WebKit::WebExtensionMatchedRuleParameters,void>::encode(v5, v8);
      v8 += 56;
      v9 -= 56;
    }

    while (v9);
  }

LABEL_8:
  IPC::Connection::sendMessageImpl(v3, &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v10);
    return bmalloc::api::tzoneFree(v12, v13);
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(uint64_t a1, IPC::Decoder *a2)
{
  result = IPC::Decoder::decode<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2, v8);
  if (v9 == 1)
  {
    *a1 = v8[0];
    *(a1 + 8) = v8[1];
    *(a1 + 16) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 16) = 0;
    v5 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext36DeclarativeNetRequestGetDynamicRulesENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_6VectorIdLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6StringESJ_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3C08;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext36DeclarativeNetRequestGetDynamicRulesENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_6VectorIdLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6StringESJ_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3C08;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext36DeclarativeNetRequestGetDynamicRulesENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_6VectorIdLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6StringESJ_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EE4callESL_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3612;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::String,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WTF::String,WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(uint64_t a1, IPC::Decoder *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v15);
  if ((v16 & 1) == 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    result = IPC::Decoder::decode<WTF::Vector<double,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2, v17);
    if (v18 != 1)
    {
      break;
    }

    if (v16)
    {
      v6 = v17[0];
      *a1 = v15;
      *(a1 + 8) = v6;
      *(a1 + 16) = v17[1];
      *(a1 + 24) = 1;
      return result;
    }

    __break(1u);
LABEL_16:
    v11 = *a2;
    v12 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v13 = *(a2 + 3);
    if (v13)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (!v14)
    {
      (*(*v13 + 16))(v13, v11);
      if (v16)
      {
        continue;
      }
    }

    *a1 = 0;
    *(a1 + 24) = 0;
    goto LABEL_9;
  }

  *a1 = 0;
  v7 = v16;
  *(a1 + 24) = 0;
  if (v7)
  {
    v8 = v15;
    v15 = 0;
    if (v8)
    {
      if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, v5);
      }
    }
  }

LABEL_9:
  v9 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result && v9)
  {
    v10 = *(*result + 16);

    return v10();
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext39DeclarativeNetRequestUpdateDynamicRulesENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_6StringEONS_6VectorIdLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSA_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3C30;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext39DeclarativeNetRequestUpdateDynamicRulesENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_6StringEONS_6VectorIdLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSA_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3C30;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext39DeclarativeNetRequestUpdateDynamicRulesENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_6StringEONS_6VectorIdLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSA_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EE4callESM_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3617;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext36DeclarativeNetRequestGetSessionRulesENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_6VectorIdLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6StringESJ_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3C58;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext36DeclarativeNetRequestGetSessionRulesENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_6VectorIdLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6StringESJ_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3C58;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext36DeclarativeNetRequestGetSessionRulesENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_6VectorIdLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedINS_6StringESJ_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSL_EE4callESL_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3615;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::String,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext39DeclarativeNetRequestUpdateSessionRulesENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_6StringEONS_6VectorIdLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSA_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED1Ev(void *a1, unint64_t a2)
{
  *a1 = &unk_1F10F3C80;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext39DeclarativeNetRequestUpdateSessionRulesENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_6StringEONS_6VectorIdLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSA_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F3C80;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages19WebExtensionContext39DeclarativeNetRequestUpdateSessionRulesENS2_10ConnectionEN6WebKit19WebExtensionContextES9_FvONS_6StringEONS_6VectorIdLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIvSA_EEEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJSM_EE4callESM_(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = IPC::Encoder::operator new(0x238, a2);
  *v5 = 3619;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = v4;
  *(v5 + 68) = 0;
  *(v5 + 70) = 0;
  *(v5 + 69) = 0;
  IPC::Encoder::encodeHeader(v5);
  v10 = v5;
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<void,WTF::String>,void>::encode<IPC::Encoder>(v5, a2);
  IPC::Connection::sendMessageImpl(v3, &v10, 0, 0);
  result = v10;
  v10 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v6);
    return bmalloc::api::tzoneFree(v8, v9);
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebKit::WebExtensionEventListenerType>(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v12 = a1;
    v6 = a1[3];
    if (v6)
    {
      if (v1)
      {
        (*(*v6 + 16))(v6);
        v3 = *v12;
        v1 = v12[1];
        goto LABEL_8;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
LABEL_8:
    a1 = v12;
    *v12 = 0;
    v12[1] = 0;
    v7 = v12[3];
    if (v7 && v1)
    {
      (*(*v7 + 16))(v7, v3);
      a1 = v12;
    }

    goto LABEL_9;
  }

  a1[2] = v2 + 1;
  if (!v2)
  {
    v12 = a1;
    goto LABEL_8;
  }

  v4 = *v2;
  if (v4 < 0x3D)
  {
    v5 = 1;
    return v4 | (v5 << 8);
  }

LABEL_9:
  v8 = *a1;
  v9 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v10 = a1[3];
  if (v10 && v9)
  {
    (*(*v10 + 16))(v10, v8);
  }

  v5 = 0;
  v4 = 0;
  return v4 | (v5 << 8);
}