void WebKit::RemoteDisplayListRecorder::didReceiveStreamMessage(atomic_uint *this, IPC::StreamServerConnection *a2, unsigned __int8 **a3, __n128 a4)
{
  v229 = *MEMORY[0x1E69E9840];
  atomic_fetch_add(this + 2, 1u);
  v8 = *(a3 + 25);
  switch(*(a3 + 25))
  {
    case 0x417:
      v206 = IPC::Decoder::decode<std::tuple<float>>(a3);
      if ((v206 & 0x100000000) != 0)
      {
        WebKit::RemoteDisplayListRecorder::applyDeviceScaleFactor(this, *&v206);
      }

      goto LABEL_146;
    case 0x418:
      WebKit::RemoteDisplayListRecorder::applyFillPattern(this);
      goto LABEL_146;
    case 0x419:
      WebKit::RemoteDisplayListRecorder::applyStrokePattern(this);
      goto LABEL_146;
    case 0x41A:
      buf.m_rect.m_location = IPC::Decoder::decode<std::tuple<WebCore::IntSize>>(a3);
      LOBYTE(buf.m_rect.m_size.m_width) = v207;
      if (v207)
      {
        WebKit::RemoteDisplayListRecorder::beginPage(this, &buf);
      }

      goto LABEL_146;
    case 0x41B:
      v172 = IPC::Decoder::decode<std::tuple<float>>(a3);
      if ((v172 & 0x100000000) == 0)
      {
        goto LABEL_146;
      }

      v173 = *&v172;
      v174 = *(*(**(this + 3) + 16))(*(this + 3));
      (*(v174 + 616))(v173);
      goto LABEL_147;
    case 0x41C:
      if ((IPC::Decoder::decode<std::tuple<WebCore::CompositeMode>>(a3) & 0xFFFFFF) >= 0x10000)
      {
        WebKit::RemoteDisplayListRecorder::beginTransparencyLayerWithCompositeMode(this);
      }

      goto LABEL_146;
    case 0x41D:
      IPC::ArgumentCoder<std::tuple<WebCore::FloatRect>,void>::decode<IPC::Decoder>(a3, &buf);
      if (LOBYTE(buf.m_radii.m_topLeft.m_width) & 1) != 0 || (IPC::Decoder::markInvalid(a3), (LOBYTE(buf.m_radii.m_topLeft.m_width)))
      {
        WebKit::RemoteDisplayListRecorder::clearRect(this, &buf.m_rect);
      }

      goto LABEL_146;
    case 0x41E:
      IPC::ArgumentCoder<std::tuple<WebCore::FloatRect>,void>::decode<IPC::Decoder>(a3, &buf);
      if (LOBYTE(buf.m_radii.m_topLeft.m_width) & 1) != 0 || (IPC::Decoder::markInvalid(a3), (LOBYTE(buf.m_radii.m_topLeft.m_width)))
      {
        WebKit::RemoteDisplayListRecorder::clip(this, &buf.m_rect);
      }

      goto LABEL_146;
    case 0x41F:
      IPC::ArgumentCoder<std::tuple<WebCore::FloatRect>,void>::decode<IPC::Decoder>(a3, &buf);
      if (LOBYTE(buf.m_radii.m_topLeft.m_width) & 1) != 0 || (IPC::Decoder::markInvalid(a3), (LOBYTE(buf.m_radii.m_topLeft.m_width)))
      {
        WebKit::RemoteDisplayListRecorder::clipOut(this, &buf.m_rect);
      }

      goto LABEL_146;
    case 0x420:
      IPC::ArgumentCoder<std::tuple<WebCore::FloatRoundedRect>,void>::decode<IPC::Decoder>(&buf, a3);
      if ((v226 & 1) == 0)
      {
        goto LABEL_424;
      }

      WebKit::RemoteDisplayListRecorder::clipOutRoundedRect(this, &buf);
      goto LABEL_146;
    case 0x421:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::ClipOutToPath,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::Path const&)>(a3, this);
      goto LABEL_146;
    case 0x422:
      IPC::ArgumentCoder<WebCore::Path,void>::decode(a3, &v221, a2);
      if ((v224 & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
        LOBYTE(buf.m_rect.m_location.m_x) = 0;
        v228 = 0;
        goto LABEL_161;
      }

      v94 = IPC::Decoder::decode<WebCore::WindRule>(a3);
      LOBYTE(buf.m_rect.m_location.m_x) = 0;
      if ((v94 & 0x100) != 0)
      {
        BYTE8(v226) = -1;
        v95 = v223;
        if (v223 == 2)
        {
          m_location = v221.m_rect.m_location;
          v221.m_rect.m_location = 0;
          buf.m_rect.m_location = m_location;
        }

        else if (v223)
        {
          if (v223 != 1)
          {
            goto LABEL_155;
          }

          buf = v221;
          *&v226 = v222;
        }

        BYTE8(v226) = v223;
LABEL_155:
        LOBYTE(v227.m_colorAndFlags) = v94;
        v97 = 1;
        goto LABEL_156;
      }

      v97 = 0;
      v95 = v223;
LABEL_156:
      v228 = v97;
      if (v95 >= 2 && v95 != 255)
      {
        v98 = v221.m_rect.m_location;
        v221.m_rect.m_location = 0;
        if (v98)
        {
          if (atomic_fetch_add(v98 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v98 + 2);
            (*(*v98 + 8))(v98);
          }
        }
      }

LABEL_161:
      if ((v228 & 1) == 0)
      {
        goto LABEL_424;
      }

      WebKit::RemoteDisplayListRecorder::clipPath(this);
      if ((v228 & 1) == 0)
      {
        goto LABEL_146;
      }

LABEL_33:
      if (BYTE8(v226) < 2u)
      {
        goto LABEL_146;
      }

      if (BYTE8(v226) == 255)
      {
        goto LABEL_146;
      }

      v33 = buf.m_rect.m_location;
      buf.m_rect.m_location = 0;
      if (!v33)
      {
        goto LABEL_146;
      }

      goto LABEL_46;
    case 0x423:
      IPC::ArgumentCoder<std::tuple<WebCore::FloatRoundedRect>,void>::decode<IPC::Decoder>(&buf, a3);
      if ((v226 & 1) == 0)
      {
        goto LABEL_424;
      }

      WebKit::RemoteDisplayListRecorder::clipRoundedRect(this, &buf);
      goto LABEL_146;
    case 0x424:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::ClipToImageBuffer,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect const&)>(a3, this);
      goto LABEL_146;
    case 0x425:
      IPC::ArgumentCoder<WebCore::AffineTransform,void>::decode(a3, &buf);
      if ((v226 & 1) == 0)
      {
        goto LABEL_423;
      }

      v221 = buf;
      LOBYTE(v222) = 1;
      v35 = *(*(**(this + 3) + 16))(*(this + 3));
      (*(v35 + 680))();
      if (!this)
      {
        return;
      }

      goto LABEL_147;
    case 0x426:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawControlPart,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WTF::Ref<WebCore::ControlPart,WTF::RawPtrTraits<WebCore::ControlPart>,WTF::DefaultRefDerefTraits<WebCore::ControlPart>> &&,WebCore::FloatRoundedRect const&,float,WebCore::ControlStyle const&)>(a3, this, a4);
      goto LABEL_146;
    case 0x427:
      v63 = a3[1];
      v64 = (a3[2] + 7) & 0xFFFFFFFFFFFFFFF8;
      v65 = *a3;
      v66 = v64 - *a3;
      v47 = v63 >= v66;
      v67 = &v63[-v66];
      if (!v47 || v67 <= 7)
      {
        goto LABEL_435;
      }

      a3[2] = (v64 + 8);
      if (!v64)
      {
        goto LABEL_436;
      }

      if (!v65)
      {
        goto LABEL_423;
      }

      v69 = *v64;
      if ((*v64 - 1) >= 0xFFFFFFFFFFFFFFFELL)
      {
        goto LABEL_423;
      }

      v70 = (v64 + 15) & 0xFFFFFFFFFFFFFFF8;
      v71 = v70 - v65;
      v47 = v63 >= v71;
      v72 = &v63[-v71];
      if (!v47 || v72 <= 7)
      {
LABEL_435:
        IPC::Decoder::markInvalid(a3);
LABEL_436:
        IPC::Decoder::markInvalid(a3);
        if (!*a3)
        {
          goto LABEL_423;
        }

        goto LABEL_437;
      }

      a3[2] = (v70 + 8);
      if (!v70)
      {
        goto LABEL_436;
      }

      if ((*v70 - 1) >= 0xFFFFFFFFFFFFFFFELL)
      {
        goto LABEL_423;
      }

      WebKit::RemoteDisplayListRecorder::drawDecomposedGlyphs(this, v69, *v70);
      if (this)
      {
        goto LABEL_147;
      }

      return;
    case 0x428:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawDotsForDocumentMarker,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::FloatRect const&,WebCore::DocumentMarkerLineStyle const&)>(a3, this);
      goto LABEL_146;
    case 0x429:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawEllipse,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::FloatRect const&)>(a3, this);
      goto LABEL_146;
    case 0x42A:
      IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a3, &v221);
      if ((LOBYTE(v221.m_radii.m_topLeft.m_width) & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
        if ((LOBYTE(v221.m_radii.m_topLeft.m_width) & 1) == 0)
        {
          goto LABEL_424;
        }
      }

      IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(a3, &v217);
      if ((v218 & 1) == 0)
      {
        goto LABEL_423;
      }

      IPC::ArgumentCoder<WebCore::Filter,void>::decode(a3, &v219);
      if (v220 != 1)
      {
        goto LABEL_423;
      }

      if ((LOBYTE(v221.m_radii.m_topLeft.m_width) & 1) == 0)
      {
        goto LABEL_437;
      }

      buf.m_rect = v221.m_rect;
      *&buf.m_radii.m_topLeft.m_width = v217;
      v177 = v219;
      v219 = 0;
      buf.m_radii.m_bottomLeft = v177;
      LOBYTE(buf.m_radii.m_bottomRight.m_width) = 1;
      WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(&v219, v176);
      WebKit::RemoteDisplayListRecorder::drawFilteredImageBuffer(this, *&buf.m_rect.m_location, SLOBYTE(buf.m_rect.m_size.m_width), &buf.m_radii, &buf.m_radii.m_bottomLeft);
      if (LOBYTE(buf.m_radii.m_bottomRight.m_width))
      {
        WTF::Ref<WebCore::FEBlend,WTF::RawPtrTraits<WebCore::FEBlend>,WTF::DefaultRefDerefTraits<WebCore::FEBlend>>::~Ref(&buf.m_radii.m_bottomLeft, v178);
      }

      goto LABEL_146;
    case 0x42B:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawFocusRingPath,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::Path const&,float,WebCore::Color const&)>(a3, this);
      goto LABEL_146;
    case 0x42C:
      IPC::VectorArgumentCoder<false,WebCore::FloatRect,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a3, &v221);
      if ((LOBYTE(v221.m_radii.m_topLeft.m_width) & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
        if ((LOBYTE(v221.m_radii.m_topLeft.m_width) & 1) == 0)
        {
          goto LABEL_424;
        }
      }

      v187 = a3[1];
      v188 = (a3[2] + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v189 = *a3;
      v190 = v188 - *a3;
      v47 = v187 >= v190;
      v191 = &v187[-v190];
      if (!v47 || v191 <= 3)
      {
        goto LABEL_488;
      }

      a3[2] = (v188 + 4);
      if (!v188)
      {
        goto LABEL_489;
      }

      v4 = *v188;
      v193 = (v188 + 7) & 0xFFFFFFFFFFFFFFFCLL;
      v194 = v193 - v189;
      v47 = v187 >= v194;
      v195 = &v187[-v194];
      if (!v47 || v195 <= 3)
      {
LABEL_488:
        IPC::Decoder::markInvalid(a3);
        goto LABEL_489;
      }

      a3[2] = (v193 + 4);
      if (!v193)
      {
LABEL_489:
        IPC::Decoder::markInvalid(a3);
        v201 = 0;
        LOBYTE(buf.m_rect.m_location.m_x) = 0;
        LOBYTE(buf.m_radii.m_bottomLeft.m_width) = 0;
        goto LABEL_372;
      }

      v5 = *v193;
      IPC::ArgumentCoder<WebCore::Color,void>::decode(a3, &v217);
      if (LOBYTE(v217.m_size.m_width) & 1) != 0 || (IPC::Decoder::markInvalid(a3), (LOBYTE(v217.m_size.m_width)))
      {
        if ((LOBYTE(v221.m_radii.m_topLeft.m_width) & 1) == 0)
        {
          goto LABEL_437;
        }

        v198 = v221.m_rect.m_location;
        v221.m_rect.m_location = 0;
        buf.m_rect.m_location = v198;
        m_size = v221.m_rect.m_size;
        v221.m_rect.m_size.m_height = 0.0;
        buf.m_rect.m_size = m_size;
        buf.m_radii.m_topLeft.m_width = v4;
        buf.m_radii.m_topLeft.m_height = v5;
        buf.m_radii.m_topRight = v217.m_location;
        v200 = 1;
        v201 = 1;
      }

      else
      {
        v200 = 0;
        v201 = 0;
        LOBYTE(buf.m_rect.m_location.m_x) = 0;
      }

      LOBYTE(buf.m_radii.m_bottomLeft.m_width) = v200;
LABEL_372:
      if (LOBYTE(v221.m_radii.m_topLeft.m_width))
      {
        v202 = v221.m_rect.m_location;
        if (v221.m_rect.m_location)
        {
          v221.m_rect.m_location = 0;
          v221.m_rect.m_size.m_width = 0.0;
          WTF::fastFree(v202, v197);
        }
      }

      if (v201)
      {
        WebKit::RemoteDisplayListRecorder::drawFocusRingRects(this, v4, v5);
        if (LOBYTE(buf.m_radii.m_bottomLeft.m_width))
        {
          if ((*&buf.m_radii.m_topRight & 0x8000000000000) != 0)
          {
            v212 = (*&buf.m_radii.m_topRight & 0xFFFFFFFFFFFFLL);
            if (atomic_fetch_add((*&buf.m_radii.m_topRight & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v212);
              WTF::fastFree(v212, v90);
            }
          }

          v92 = buf.m_rect.m_location;
          if (buf.m_rect.m_location)
          {
            buf.m_rect.m_location = 0;
            buf.m_rect.m_size.m_width = 0.0;
            goto LABEL_307;
          }
        }
      }

      else
      {
LABEL_424:
        IPC::Decoder::markInvalid(a3);
      }

      goto LABEL_146;
    case 0x42D:
      v115 = a3[1];
      v116 = (a3[2] + 7) & 0xFFFFFFFFFFFFFFF8;
      v117 = *a3;
      v118 = v116 - *a3;
      v47 = v115 >= v118;
      v119 = &v115[-v118];
      if (!v47 || v119 <= 7)
      {
        goto LABEL_435;
      }

      a3[2] = (v116 + 8);
      if (!v116)
      {
        goto LABEL_436;
      }

      if (!v117)
      {
        goto LABEL_423;
      }

      v121 = *v116;
      if ((*v116 - 1) >= 0xFFFFFFFFFFFFFFFELL)
      {
        goto LABEL_423;
      }

      IPC::ArgumentCoder<IPC::ArrayReferenceTuple<unsigned short,WebCore::FloatSize>,void>::decode<IPC::Decoder>(a3, &buf);
      if ((LOBYTE(buf.m_radii.m_topRight.m_width) & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
        if ((LOBYTE(buf.m_radii.m_topRight.m_width) & 1) == 0)
        {
          goto LABEL_424;
        }
      }

      v122 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a3);
      if ((v123 & 1) == 0)
      {
        goto LABEL_423;
      }

      v124 = v122;
      v125 = IPC::Decoder::decode<WebCore::FontSmoothingMode>(a3);
      if ((v125 & 0x100) == 0)
      {
        goto LABEL_424;
      }

      if ((LOBYTE(buf.m_radii.m_topRight.m_width) & 1) == 0)
      {
        goto LABEL_437;
      }

      v221.m_rect = buf.m_rect;
      v221.m_radii.m_topLeft = buf.m_radii.m_topLeft;
      WebKit::RemoteDisplayListRecorder::drawGlyphs(this, v121, &v221, v125, *&v124, *(&v124 + 1));
      goto LABEL_146;
    case 0x42E:
      IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect,WebCore::FloatRect,WebCore::ImagePaintingOptions>,void>::decode<IPC::Decoder>(&buf, a3);
      if ((BYTE8(v226) & 1) == 0)
      {
        goto LABEL_424;
      }

      WebKit::RemoteDisplayListRecorder::drawImageBuffer(this, *&buf.m_rect.m_location);
      goto LABEL_146;
    case 0x42F:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawLine,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::FloatPoint const&,WebCore::FloatPoint const&)>(a3, this);
      goto LABEL_146;
    case 0x430:
      v142 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a3);
      if ((v143 & 1) == 0)
      {
        goto LABEL_423;
      }

      v144 = a3[1];
      v145 = (a3[2] + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v146 = *a3;
      v147 = v145 - *a3;
      v47 = v144 >= v147;
      v148 = &v144[-v147];
      if (!v47 || v148 < 4)
      {
        goto LABEL_422;
      }

      a3[2] = (v145 + 4);
      if (!v145)
      {
        goto LABEL_423;
      }

      v150 = *v145;
      v151 = (v145 + 11) & 0xFFFFFFFFFFFFFFF8;
      if (v144 < v151 - v146 || &v144[-(v151 - v146)] < 8)
      {
        goto LABEL_421;
      }

      v153 = (v151 + 8);
      a3[2] = (v151 + 8);
      if (!v151)
      {
        goto LABEL_422;
      }

      v154 = v142;
      v155 = *v151;
      if (*v151)
      {
        if (v155 >> 61)
        {
          goto LABEL_423;
        }

        v156 = (v151 + 11) & 0xFFFFFFFFFFFFFFF8;
        v157 = 8 * v155;
        if (v144 < v156 - v146 || &v144[-(v156 - v146)] < v157)
        {
          goto LABEL_422;
        }

        v153 = (v157 + v156);
        a3[2] = v153;
        if (!v156)
        {
          goto LABEL_423;
        }
      }

      else
      {
        v156 = 0;
      }

      if (v144 <= &v153[-v146])
      {
        goto LABEL_421;
      }

      v159 = v153 + 1;
      a3[2] = v153 + 1;
      if (!v153)
      {
        goto LABEL_422;
      }

      v160 = *v153;
      if (v160 > 1)
      {
        goto LABEL_423;
      }

      if (v144 <= &v159[-v146])
      {
        goto LABEL_421;
      }

      a3[2] = v153 + 2;
      if (v153 == -1)
      {
        goto LABEL_422;
      }

      v161 = *v159;
      if (v161 > 1)
      {
        goto LABEL_423;
      }

      v162 = IPC::Decoder::decode<WebCore::StrokeStyle>(a3);
      if (v162 < 0x100u)
      {
        goto LABEL_424;
      }

      buf.m_rect.m_location = v154;
      buf.m_rect.m_size.m_width = v150;
      buf.m_radii.m_topLeft = v156;
      buf.m_radii.m_topRight = v155;
      LOBYTE(buf.m_radii.m_bottomLeft.m_width) = v160;
      BYTE1(buf.m_radii.m_bottomLeft.m_width) = v161;
      BYTE2(buf.m_radii.m_bottomLeft.m_width) = v162;
      LOBYTE(buf.m_radii.m_bottomRight.m_width) = 1;
      WebKit::RemoteDisplayListRecorder::drawLinesForText(this, &buf, v156, v155, v160 & 1, v161 & 1, v162, v150);
      goto LABEL_146;
    case 0x431:
      IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect,WebCore::FloatRect,WebCore::ImagePaintingOptions>,void>::decode<IPC::Decoder>(&buf, a3);
      if ((BYTE8(v226) & 1) == 0)
      {
        goto LABEL_424;
      }

      WebKit::RemoteDisplayListRecorder::drawNativeImage(this, *&buf.m_rect.m_location, &buf.m_rect.m_size, &buf.m_radii.m_topRight, *&buf.m_radii.m_bottomRight, v226);
      goto LABEL_146;
    case 0x432:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawPath,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::Path const&)>(a3, this);
      goto LABEL_146;
    case 0x433:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawPatternImageBuffer,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect const&,WebCore::FloatRect const&,WebCore::AffineTransform const&,WebCore::FloatPoint const&,WebCore::FloatSize const&,WebCore::ImagePaintingOptions)>(a3, this);
      goto LABEL_146;
    case 0x434:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawPatternNativeImage,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect const&,WebCore::FloatRect const&,WebCore::AffineTransform const&,WebCore::FloatPoint const&,WebCore::FloatSize const&,WebCore::ImagePaintingOptions)>(a3, this);
      goto LABEL_146;
    case 0x435:
      IPC::ArgumentCoder<std::tuple<WebCore::FloatRect,float>,void>::decode<IPC::Decoder>(&buf, a3);
      if ((LOBYTE(buf.m_radii.m_topLeft.m_height) & 1) == 0)
      {
        goto LABEL_424;
      }

      WebKit::RemoteDisplayListRecorder::drawRect(this, &buf.m_rect, buf.m_radii.m_topLeft.m_width);
      goto LABEL_146;
    case 0x436:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawSystemImage,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WTF::Ref<WebCore::SystemImage,WTF::RawPtrTraits<WebCore::SystemImage>,WTF::DefaultRefDerefTraits<WebCore::SystemImage>> &&,WebCore::FloatRect const&)>(a3, this);
      goto LABEL_146;
    case 0x437:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawVideoFrame,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebKit::SharedVideoFrame &&,WebCore::FloatRect const&,WebKit::SharedVideoFrame &&::ImageOrientation,BOOL)>(a3, this);
      goto LABEL_146;
    case 0x438:
      WebKit::RemoteDisplayListRecorder::endPage(this);
      goto LABEL_146;
    case 0x439:
      v171 = *(*(**(this + 3) + 16))(*(this + 3), a2);
      (*(v171 + 632))();
      goto LABEL_147;
    case 0x43A:
      IPC::ArgumentCoder<WebCore::PathArc,void>::decode(a3, &buf);
      if ((LOBYTE(buf.m_radii.m_topRight.m_width) & 1) == 0)
      {
        goto LABEL_423;
      }

      v221.m_rect = buf.m_rect;
      v221.m_radii.m_topLeft = buf.m_radii.m_topLeft;
      LOBYTE(v221.m_radii.m_topRight.m_width) = 1;
      WebKit::RemoteDisplayListRecorder::fillArc(this, &v221);
      goto LABEL_146;
    case 0x43B:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::FillBezierCurve,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::PathDataBezierCurve const&)>(a3, this);
      goto LABEL_146;
    case 0x43C:
      IPC::ArgumentCoder<std::tuple<WebCore::PathClosedArc>,void>::decode<IPC::Decoder>(&buf, a3);
      if ((LOBYTE(buf.m_radii.m_topRight.m_width) & 1) == 0)
      {
        goto LABEL_424;
      }

      WebKit::RemoteDisplayListRecorder::fillClosedArc(this, &buf);
      goto LABEL_146;
    case 0x43D:
      IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(a3, &v221);
      if ((LOBYTE(v221.m_radii.m_topLeft.m_width) & 1) == 0)
      {
        goto LABEL_423;
      }

      IPC::ArgumentCoder<WebCore::Color,void>::decode(a3, &v217);
      if (LOBYTE(v217.m_size.m_width))
      {
        goto LABEL_175;
      }

      goto LABEL_438;
    case 0x43E:
      IPC::ArgumentCoder<std::tuple<WebCore::FloatRect>,void>::decode<IPC::Decoder>(a3, &buf);
      if (LOBYTE(buf.m_radii.m_topLeft.m_width) & 1) != 0 || (IPC::Decoder::markInvalid(a3), (LOBYTE(buf.m_radii.m_topLeft.m_width)))
      {
        WebKit::RemoteDisplayListRecorder::fillEllipse(this, &buf.m_rect);
      }

      goto LABEL_146;
    case 0x43F:
      IPC::ArgumentCoder<std::tuple<WebCore::PathDataLine>,void>::decode<IPC::Decoder>(&buf, a3);
      if ((LOBYTE(buf.m_radii.m_topLeft.m_width) & 1) == 0)
      {
        goto LABEL_424;
      }

      WebKit::RemoteDisplayListRecorder::fillLine(this, &buf);
      goto LABEL_146;
    case 0x440:
      IPC::ArgumentCoder<WebCore::Path,void>::decode(a3, &buf, a2);
      if (LOBYTE(v227.m_colorAndFlags) != 1)
      {
        goto LABEL_423;
      }

      LOBYTE(v221.m_rect.m_location.m_x) = 0;
      v223 = -1;
      if (BYTE8(v226) == 2)
      {
        v221.m_rect.m_location = buf.m_rect.m_location;
LABEL_62:
        v223 = BYTE8(v226);
        goto LABEL_63;
      }

      if (!BYTE8(v226))
      {
        goto LABEL_62;
      }

      if (BYTE8(v226) == 1)
      {
        v221 = buf;
        v222 = v226;
        goto LABEL_62;
      }

LABEL_63:
      v224 = 1;
      v41 = (*(**(this + 3) + 16))(*(this + 3));
      (*(*v41 + 184))(v41, &v221);
      goto LABEL_42;
    case 0x441:
      IPC::ArgumentCoder<std::tuple<WebCore::PathSegment>,void>::decode<IPC::Decoder>(&buf, a3);
      if ((BYTE8(v226) & 1) == 0)
      {
        goto LABEL_424;
      }

      WebKit::RemoteDisplayListRecorder::fillPathSegment(this, &buf);
      goto LABEL_146;
    case 0x442:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::FillQuadCurve,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::PathDataQuadCurve const&)>(a3, this);
      goto LABEL_146;
    case 0x443:
      IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(a3, &v221);
      if ((LOBYTE(v221.m_radii.m_topLeft.m_width) & 1) == 0)
      {
        goto LABEL_423;
      }

      v93 = IPC::Decoder::decode<WebCore::LockHistory>(a3);
      if (v93 <= 0xFFu)
      {
        goto LABEL_424;
      }

      buf.m_rect = v221.m_rect;
      LOBYTE(buf.m_radii.m_topLeft.m_width) = v93;
      LOBYTE(buf.m_radii.m_topLeft.m_height) = 1;
      WebKit::RemoteDisplayListRecorder::fillRect(this);
      goto LABEL_146;
    case 0x444:
      IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(a3, &v221);
      if ((LOBYTE(v221.m_radii.m_topLeft.m_width) & 1) == 0)
      {
        goto LABEL_423;
      }

      IPC::ArgumentCoder<WebCore::Color,void>::decode(a3, &v217);
      if ((LOBYTE(v217.m_size.m_width) & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
        if ((LOBYTE(v217.m_size.m_width) & 1) == 0)
        {
          goto LABEL_424;
        }
      }

      buf.m_rect = v221.m_rect;
      buf.m_radii.m_topLeft = v217.m_location;
      LOBYTE(buf.m_radii.m_topRight.m_width) = 1;
      WebKit::RemoteDisplayListRecorder::fillRectWithColor(this, &buf.m_rect, &buf.m_radii);
      if ((LOBYTE(buf.m_radii.m_topRight.m_width) & 1) == 0)
      {
        goto LABEL_146;
      }

      goto LABEL_186;
    case 0x445:
      IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(a3, &v221);
      if ((LOBYTE(v221.m_radii.m_topLeft.m_width) & 1) == 0)
      {
        goto LABEL_423;
      }

      IPC::ArgumentCoder<WebCore::Gradient,void>::decode(a3, &v217);
      if ((LOBYTE(v217.m_size.m_width) & 1) == 0)
      {
        goto LABEL_423;
      }

      buf.m_rect = v221.m_rect;
      v180 = v217.m_location;
      v217.m_location = 0;
      buf.m_radii.m_topLeft = v180;
      WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v217, v179);
      LOBYTE(buf.m_radii.m_topRight.m_width) = 1;
      WebKit::RemoteDisplayListRecorder::fillRectWithGradient(this);
      if ((LOBYTE(buf.m_radii.m_topRight.m_width) & 1) == 0)
      {
        goto LABEL_146;
      }

      p_m_radii = &buf.m_radii;
      goto LABEL_239;
    case 0x446:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::FillRectWithGradientAndSpaceTransform,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::FloatRect const&,WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>> &&,WebCore::AffineTransform const&,WebCore::RequiresClipToRect)>(a3, this);
      goto LABEL_146;
    case 0x447:
      IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(a3, &v217);
      if ((v218 & 1) == 0)
      {
        goto LABEL_423;
      }

      IPC::ArgumentCoder<WebCore::FloatRoundedRect,void>::decode(a3, &v221);
      if ((v222 & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
        if ((v222 & 1) == 0)
        {
          goto LABEL_424;
        }
      }

      IPC::ArgumentCoder<WebCore::Color,void>::decode(a3, &v219);
      if ((v220 & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
        if ((v220 & 1) == 0)
        {
          goto LABEL_424;
        }
      }

      if ((v222 & 1) == 0)
      {
        goto LABEL_437;
      }

      buf.m_rect = v217;
      buf.m_radii = *&v221.m_rect.m_location.m_x;
      v226 = *&v221.m_radii.m_bottomLeft.m_width;
      v227.m_colorAndFlags = v219;
      v228 = 1;
      WebKit::RemoteDisplayListRecorder::fillRectWithRoundedHole(this, &buf.m_rect, &buf.m_radii, &v227);
      if (v228)
      {
        m_colorAndFlags = v227.m_colorAndFlags;
        if ((v227.m_colorAndFlags & 0x8000000000000) != 0)
        {
          goto LABEL_141;
        }
      }

      goto LABEL_146;
    case 0x448:
      IPC::ArgumentCoder<WebCore::FloatRoundedRect,void>::decode(a3, &v221);
      if ((v222 & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
        if ((v222 & 1) == 0)
        {
          goto LABEL_424;
        }
      }

      IPC::ArgumentCoder<WebCore::Color,void>::decode(a3, &v217);
      if ((LOBYTE(v217.m_size.m_width) & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
        if ((LOBYTE(v217.m_size.m_width) & 1) == 0)
        {
          LOBYTE(buf.m_rect.m_location.m_x) = 0;
          LOBYTE(v227.m_colorAndFlags) = 0;
          goto LABEL_138;
        }
      }

      v88 = a3[2];
      if (a3[1] <= v88 - *a3)
      {
        IPC::Decoder::markInvalid(a3);
        goto LABEL_466;
      }

      a3[2] = v88 + 1;
      if (!v88)
      {
LABEL_466:
        IPC::Decoder::markInvalid(a3);
        goto LABEL_467;
      }

      v89 = *v88;
      if ((v89 - 1) > 0x11)
      {
LABEL_467:
        IPC::Decoder::markInvalid(a3);
        LOBYTE(buf.m_rect.m_location.m_x) = 0;
        LOBYTE(v227.m_colorAndFlags) = 0;
        if ((LOBYTE(v217.m_size.m_width) & 1) != 0 && (*&v217.m_location & 0x8000000000000) != 0)
        {
          v214 = (*&v217.m_location & 0xFFFFFFFFFFFFLL);
          if (atomic_fetch_add((*&v217.m_location & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v214);
            WTF::fastFree(v214, v213);
          }
        }

LABEL_138:
        if ((v227.m_colorAndFlags & 1) == 0)
        {
          goto LABEL_424;
        }

        WebKit::RemoteDisplayListRecorder::fillRoundedRect(this);
        if ((v227.m_colorAndFlags & 1) == 0)
        {
          goto LABEL_146;
        }

        m_colorAndFlags = v226;
        if ((v226 & 0x8000000000000) == 0)
        {
          goto LABEL_146;
        }

        goto LABEL_141;
      }

      if (v222)
      {
        buf = v221;
        *&v226 = v217.m_location;
        BYTE8(v226) = v89;
        LOBYTE(v227.m_colorAndFlags) = 1;
        goto LABEL_138;
      }

LABEL_437:
      __break(1u);
LABEL_438:
      IPC::Decoder::markInvalid(a3);
      if ((LOBYTE(v217.m_size.m_width) & 1) == 0)
      {
        LOBYTE(buf.m_rect.m_location.m_x) = 0;
        LOBYTE(buf.m_radii.m_bottomLeft.m_width) = 0;
        goto LABEL_184;
      }

LABEL_175:
      v101 = a3[1];
      v100 = a3[2];
      v102 = *a3;
      if (v101 <= v100 - *a3)
      {
        goto LABEL_471;
      }

      v103 = v100 + 1;
      a3[2] = v100 + 1;
      if (!v100)
      {
LABEL_472:
        IPC::Decoder::markInvalid(a3);
        goto LABEL_473;
      }

      v104 = *v100;
      if (v104 >= 0xE)
      {
LABEL_473:
        IPC::Decoder::markInvalid(a3);
        v107 = 0;
        LOBYTE(buf.m_rect.m_location.m_x) = 0;
        goto LABEL_182;
      }

      if (v101 <= &v103[-v102])
      {
LABEL_471:
        IPC::Decoder::markInvalid(a3);
        goto LABEL_472;
      }

      a3[2] = v100 + 2;
      if (v100 == -1)
      {
        goto LABEL_472;
      }

      v105 = *v103;
      if ((v105 - 1) >= 0x12)
      {
        goto LABEL_473;
      }

      buf.m_rect = v221.m_rect;
      v106 = v217.m_location;
      v217.m_location = 0;
      buf.m_radii.m_topLeft = v106;
      LOBYTE(buf.m_radii.m_topRight.m_width) = v104;
      BYTE1(buf.m_radii.m_topRight.m_width) = v105;
      v107 = 1;
LABEL_182:
      LOBYTE(buf.m_radii.m_bottomLeft.m_width) = v107;
      if ((LOBYTE(v217.m_size.m_width) & 1) != 0 && (*&v217.m_location & 0x8000000000000) != 0)
      {
        v181 = (*&v217.m_location & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((*&v217.m_location & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v181);
          WTF::fastFree(v181, v99);
        }
      }

LABEL_184:
      if ((LOBYTE(buf.m_radii.m_bottomLeft.m_width) & 1) == 0)
      {
        goto LABEL_424;
      }

      WebKit::RemoteDisplayListRecorder::fillCompositedRect(this);
      if ((LOBYTE(buf.m_radii.m_bottomLeft.m_width) & 1) == 0)
      {
        goto LABEL_146;
      }

LABEL_186:
      m_colorAndFlags = buf.m_radii.m_topLeft;
      if ((*&buf.m_radii.m_topLeft & 0x8000000000000) != 0)
      {
LABEL_141:
        v92 = (m_colorAndFlags & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((m_colorAndFlags & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) != 1)
        {
          goto LABEL_146;
        }

        atomic_store(1u, v92);
        goto LABEL_307;
      }

LABEL_146:
      if (this)
      {
LABEL_147:
        if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, this + 2);
          (*(*this + 8))(this);
        }
      }

      return;
    case 0x449:
      WebKit::RemoteDisplayListRecorder::resetClip(this);
      goto LABEL_146;
    case 0x44A:
      v56 = (*(**(this + 3) + 16))(*(this + 3), a2);
      (*(*v56 + 112))(v56, 1);
      goto LABEL_147;
    case 0x44B:
      v182 = a3[1];
      v183 = (a3[2] + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v184 = v183 - *a3;
      v47 = v182 >= v184;
      v185 = &v182[-v184];
      if (!v47 || v185 <= 3)
      {
        goto LABEL_422;
      }

      a3[2] = (v183 + 4);
      if (!v183)
      {
        goto LABEL_423;
      }

      WebKit::RemoteDisplayListRecorder::rotate(this, *v183);
      goto LABEL_146;
    case 0x44C:
      v55 = (*(**(this + 3) + 16))(*(this + 3), a2);
      (*(*v55 + 104))(v55, 1);
      goto LABEL_147;
    case 0x44D:
      buf.m_rect.m_location = IPC::Decoder::decode<std::tuple<WebCore::FloatSize>>(a3);
      LOBYTE(buf.m_rect.m_size.m_width) = v127;
      if (v127)
      {
        v128 = *(*(**(this + 3) + 16))(*(this + 3));
        (*(v128 + 656))();
      }

      goto LABEL_146;
    case 0x44E:
      v87 = IPC::Decoder::decode<std::tuple<float>>(a3);
      if ((v87 & 0x100000000) != 0)
      {
        WebKit::RemoteDisplayListRecorder::setAlpha(this, *&v87);
      }

      goto LABEL_146;
    case 0x44F:
      IPC::ArgumentCoder<WebCore::AffineTransform,void>::decode(a3, &buf);
      if ((v226 & 1) == 0)
      {
        goto LABEL_423;
      }

      v221 = buf;
      LOBYTE(v222) = 1;
      v57 = *(*(**(this + 3) + 16))(*(this + 3));
      (*(v57 + 688))();
      if (!this)
      {
        return;
      }

      goto LABEL_147;
    case 0x450:
      v133 = IPC::Decoder::decode<std::tuple<WebCore::CompositeMode>>(a3);
      if ((v133 & 0xFFFFFF) < 0x10000)
      {
        goto LABEL_146;
      }

      v134 = v133;
      v135 = (*(**(this + 3) + 16))(*(this + 3));
      WebCore::GraphicsContext::setCompositeMode(v135, v134);
      goto LABEL_147;
    case 0x451:
      v204 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
      if ((v204 & 0x100) != 0)
      {
        WebKit::RemoteDisplayListRecorder::setDrawLuminanceMask(this, v204 & 1);
      }

      goto LABEL_146;
    case 0x452:
      v136 = a3[2];
      if (a3[1] <= v136 - *a3)
      {
        goto LABEL_420;
      }

      a3[2] = v136 + 1;
      if (!v136)
      {
        goto LABEL_421;
      }

      v137 = *v136;
      if (v137 >= 2)
      {
        goto LABEL_422;
      }

      if (v137)
      {
        IPC::ArgumentCoder<WebCore::GraphicsDropShadow,void>::decode(a3, &buf);
        if ((LOBYTE(buf.m_radii.m_bottomLeft.m_width) & 1) == 0)
        {
          IPC::Decoder::markInvalid(a3);
          if ((LOBYTE(buf.m_radii.m_bottomLeft.m_width) & 1) == 0)
          {
            goto LABEL_423;
          }
        }

        *(&v221.m_rect.m_location.m_y + 3) = buf.m_rect.m_size.m_width;
        v221.m_rect.m_location = *(&buf.m_rect.m_location + 1);
        buf.m_rect.m_size.m_width = *(&v221.m_rect.m_location.m_y + 3);
        LOBYTE(buf.m_radii.m_bottomLeft.m_width) = 1;
      }

      else
      {
        LOBYTE(buf.m_rect.m_location.m_x) = 0;
        LOBYTE(buf.m_radii.m_bottomLeft.m_width) = 0;
      }

      WebKit::RemoteDisplayListRecorder::setDropShadow(this, &buf);
      if (LOBYTE(buf.m_radii.m_bottomLeft.m_width) == 1)
      {
        goto LABEL_186;
      }

      goto LABEL_146;
    case 0x453:
      IPC::ArgumentCoder<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::AffineTransform>,void>::decode<IPC::Decoder>(&buf, a3);
      if ((BYTE8(v226) & 1) == 0)
      {
        goto LABEL_424;
      }

      WebKit::RemoteDisplayListRecorder::setFillCachedGradient(this, *&buf.m_rect.m_location, &buf.m_rect.m_size);
      if (!this)
      {
        return;
      }

      goto LABEL_147;
    case 0x454:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::SetFillColor,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::Color const&)>(a3, this);
      goto LABEL_146;
    case 0x455:
      IPC::ArgumentCoder<std::tuple<WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>,WebCore::AffineTransform>,void>::decode<IPC::Decoder>(&buf, a3);
      if ((BYTE8(v226) & 1) == 0)
      {
        goto LABEL_424;
      }

      WebKit::RemoteDisplayListRecorder::setFillGradient(this, &buf, &buf.m_rect.m_size);
      if ((BYTE8(v226) & 1) == 0)
      {
        goto LABEL_146;
      }

      p_m_radii = &buf;
LABEL_239:
      WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(p_m_radii, v131);
      goto LABEL_146;
    case 0x456:
      v58 = IPC::ArgumentCoder<WebCore::Headroom,void>::decode(a3);
      if ((v58 & 0x100000000) == 0)
      {
        goto LABEL_423;
      }

      v59 = v58;
      v60 = (*(**(this + 3) + 16))(*(this + 3));
      buf.m_rect.m_location = (v59 | 0x1104000000000000);
      WebCore::GraphicsContext::setFillColor(v60, &buf);
      if ((*&buf.m_rect.m_location & 0x8000000000000) != 0)
      {
        v62 = (*&buf.m_rect.m_location & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((*&buf.m_rect.m_location & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v62);
          WTF::fastFree(v62, v61);
        }
      }

      goto LABEL_147;
    case 0x457:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::PatternParameters>>(&buf, a3);
      if (LOBYTE(v227.m_colorAndFlags) == 1)
      {
        WebKit::RemoteDisplayListRecorder::setFillPattern(this, *&buf.m_rect.m_location, &buf.m_rect.m_size);
      }

      goto LABEL_146;
    case 0x458:
      v139 = IPC::Decoder::decode<WebCore::WindRule>(a3);
      if ((v139 & 0x100) == 0)
      {
        goto LABEL_424;
      }

      WebKit::RemoteDisplayListRecorder::setFillRule(this, v139 & 1);
      goto LABEL_146;
    case 0x459:
      v140 = a3[2];
      if (a3[1] <= v140 - *a3)
      {
        goto LABEL_421;
      }

      a3[2] = v140 + 1;
      if (!v140)
      {
        goto LABEL_422;
      }

      v141 = *v140;
      if (v141 >= 5)
      {
        goto LABEL_423;
      }

      WebKit::RemoteDisplayListRecorder::setImageInterpolationQuality(this, v141);
      goto LABEL_146;
    case 0x45A:
      v110 = a3[2];
      if (a3[1] <= v110 - *a3)
      {
        goto LABEL_421;
      }

      a3[2] = v110 + 1;
      if (!v110)
      {
        goto LABEL_422;
      }

      if (*v110 >= 3u)
      {
        goto LABEL_423;
      }

      v111 = *(*(**(this + 3) + 16))(*(this + 3), a2);
      (*(v111 + 304))();
      goto LABEL_147;
    case 0x45B:
      IPC::ArgumentCoder<std::span<double const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, &buf);
      if ((LOBYTE(buf.m_radii.m_topLeft.m_width) & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
        if ((LOBYTE(buf.m_radii.m_topLeft.m_width) & 1) == 0)
        {
          goto LABEL_423;
        }
      }

      if (buf.m_rect.m_size)
      {
        WTF::EmbeddedFixedVector<double,WTF::FastMalloc>::create<double const,18446744073709551615ul>(*&buf.m_rect.m_location, *&buf.m_rect.m_size, &v221);
        v163 = v221.m_rect.m_location;
      }

      else
      {
        v163 = 0;
      }

      v164 = a3[1];
      v165 = (a3[2] + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v166 = v165 - *a3;
      v47 = v164 >= v166;
      v167 = &v164[-v166];
      if (v47 && v167 > 3)
      {
        a3[2] = (v165 + 4);
        if (v165)
        {
          v169 = *v165;
          buf.m_rect.m_location = v163;
          buf.m_rect.m_size.m_width = v169;
          LOBYTE(buf.m_radii.m_topLeft.m_width) = 1;
          WebKit::RemoteDisplayListRecorder::setLineDash(this, &buf, v169);
          if ((LOBYTE(buf.m_radii.m_topLeft.m_width) & 1) == 0)
          {
            goto LABEL_146;
          }

          v92 = buf.m_rect.m_location;
          buf.m_rect.m_location = 0;
          if (!v92)
          {
            goto LABEL_146;
          }

LABEL_307:
          WTF::fastFree(v92, v90);
          goto LABEL_146;
        }
      }

      else
      {
        IPC::Decoder::markInvalid(a3);
      }

      IPC::Decoder::markInvalid(a3);
      if (v163)
      {
        WTF::fastFree(v163, v215);
      }

      goto LABEL_424;
    case 0x45C:
      v108 = a3[2];
      if (a3[1] <= v108 - *a3)
      {
        goto LABEL_421;
      }

      a3[2] = v108 + 1;
      if (!v108)
      {
        goto LABEL_422;
      }

      if (*v108 >= 3u)
      {
        goto LABEL_423;
      }

      v109 = *(*(**(this + 3) + 16))(*(this + 3), a2);
      (*(v109 + 320))();
      goto LABEL_147;
    case 0x45D:
      v112 = IPC::Decoder::decode<std::tuple<float>>(a3);
      if ((v112 & 0x100000000) == 0)
      {
        goto LABEL_146;
      }

      v113 = *&v112;
      v114 = *(*(**(this + 3) + 16))(*(this + 3));
      (*(v114 + 328))(v113);
      goto LABEL_147;
    case 0x45E:
      v175 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
      if ((v175 & 0x100) != 0)
      {
        WebKit::RemoteDisplayListRecorder::setShadowsIgnoreTransforms(this, v175 & 1);
      }

      goto LABEL_146;
    case 0x45F:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::SetSharedVideoFrameMemory,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::SharedMemoryHandle &&)>(a3, this);
      goto LABEL_146;
    case 0x460:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::SetSharedVideoFrameSemaphore,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(IPC::Semaphore &&)>(a3, this);
      goto LABEL_146;
    case 0x461:
      v170 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
      if ((v170 & 0x100) != 0)
      {
        WebKit::RemoteDisplayListRecorder::setShouldAntialias(this, v170 & 1);
      }

      goto LABEL_146;
    case 0x462:
      v203 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
      if ((v203 & 0x100) != 0)
      {
        WebKit::RemoteDisplayListRecorder::setShouldSmoothFonts(this, v203 & 1);
      }

      goto LABEL_146;
    case 0x463:
      v126 = IPC::Decoder::decode<std::tuple<BOOL>>(a3);
      if ((v126 & 0x100) != 0)
      {
        WebKit::RemoteDisplayListRecorder::setShouldSubpixelQuantizeFonts(this, v126 & 1);
      }

      goto LABEL_146;
    case 0x464:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::AffineTransform>>(&buf, a3);
      if (BYTE8(v226) == 1)
      {
        WebKit::RemoteDisplayListRecorder::setStrokeCachedGradient(this, *&buf.m_rect.m_location, &buf.m_rect.m_size);
      }

      goto LABEL_146;
    case 0x465:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::SetStrokeColor,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::Color const&)>(a3, this);
      goto LABEL_146;
    case 0x466:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::SetStrokeGradient,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>> &&,WebCore::AffineTransform const&)>(a3, this);
      goto LABEL_146;
    case 0x467:
      v130 = IPC::ArgumentCoder<WebCore::Headroom,void>::decode(a3);
      if ((v130 & 0x100000000) == 0)
      {
        goto LABEL_423;
      }

      WebKit::RemoteDisplayListRecorder::setStrokePackedColor(this, v130);
      goto LABEL_146;
    case 0x468:
      v21 = IPC::ArgumentCoder<WebCore::Headroom,void>::decode(a3);
      if ((v21 & 0x100000000) == 0)
      {
        goto LABEL_423;
      }

      v22 = a3[1];
      v23 = (a3[2] + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v24 = v23 - *a3;
      v47 = v22 >= v24;
      v25 = &v22[-v24];
      if (!v47 || v25 <= 3)
      {
        goto LABEL_422;
      }

      a3[2] = (v23 + 4);
      if (!v23)
      {
        goto LABEL_423;
      }

      v27 = v21;
      v28 = *v23;
      v29 = (*(**(this + 3) + 16))(*(this + 3));
      buf.m_rect.m_location = (v27 | 0x1104000000000000);
      WebCore::GraphicsContext::setStrokeColor(v29, &buf);
      if ((*&buf.m_rect.m_location & 0x8000000000000) != 0)
      {
        v138 = (*&buf.m_rect.m_location & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((*&buf.m_rect.m_location & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v138);
          WTF::fastFree(v138, v30);
        }
      }

LABEL_28:
      v31 = (*(**(this + 3) + 16))(*(this + 3));
      if (*(v31 + 156) != v28)
      {
        *(v31 + 156) = v28;
        *(v31 + 152) |= 8u;
      }

      (*(*v31 + 96))(v31, v31 + 8, 3);
      goto LABEL_147;
    case 0x469:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::PatternParameters>>(&buf, a3);
      if (LOBYTE(v227.m_colorAndFlags) == 1)
      {
        WebKit::RemoteDisplayListRecorder::setStrokePattern(this, *&buf.m_rect.m_location, &buf.m_rect.m_size);
      }

      goto LABEL_146;
    case 0x46A:
      v129 = IPC::Decoder::decode<WebCore::StrokeStyle>(a3);
      if (v129 <= 0xFFu)
      {
        goto LABEL_424;
      }

      WebKit::RemoteDisplayListRecorder::setStrokeStyle(this, v129);
      goto LABEL_146;
    case 0x46B:
      v36 = a3[1];
      v37 = (a3[2] + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v38 = v37 - *a3;
      v47 = v36 >= v38;
      v39 = &v36[-v38];
      if (!v47 || v39 <= 3)
      {
        goto LABEL_422;
      }

      a3[2] = (v37 + 4);
      if (!v37)
      {
        goto LABEL_423;
      }

      v28 = *v37;
      goto LABEL_28;
    case 0x46C:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::SetStyle,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(std::optional<mpark::variant<WebCore::GraphicsDropShadow,WebCore::GraphicsGaussianBlur,WebCore::GraphicsColorMatrix>>)>(a3, this);
      goto LABEL_146;
    case 0x46D:
      v205 = IPC::Decoder::decode<std::tuple<WTF::OptionSet<WebCore::TextDrawingMode>>>(a3);
      if (v205 >= 0x100u)
      {
        WebKit::RemoteDisplayListRecorder::setTextDrawingMode(this, v205);
      }

      goto LABEL_146;
    case 0x46E:
      IPC::handleMessage<Messages::RemoteDisplayListRecorder::SetURLForRect,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WTF::URL const&,WebCore::FloatRect const&)>(a3, this);
      goto LABEL_146;
    case 0x46F:
      IPC::ArgumentCoder<WebCore::PathArc,void>::decode(a3, &buf);
      if ((LOBYTE(buf.m_radii.m_topRight.m_width) & 1) == 0)
      {
        goto LABEL_423;
      }

      v221.m_rect = buf.m_rect;
      v221.m_radii.m_topLeft = buf.m_radii.m_topLeft;
      v32 = (*(**(this + 3) + 16))(*(this + 3));
      buf.m_rect = v221.m_rect;
      buf.m_radii.m_topLeft = v221.m_radii.m_topLeft;
      BYTE4(v226) = 5;
      BYTE8(v226) = 1;
      (*(*v32 + 192))(v32, &buf);
      goto LABEL_33;
    case 0x470:
      v74 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a3);
      v76 = v75;
      if ((v75 & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
      }

      v77 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a3);
      v79 = v78;
      if ((v78 & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
      }

      v80 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a3);
      v82 = v81;
      if ((v81 & 1) == 0)
      {
        IPC::Decoder::markInvalid(a3);
      }

      v84 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a3);
      if ((v83 & 1) == 0)
      {
        v216 = v83;
        IPC::Decoder::markInvalid(a3);
        v83 = v216;
      }

      if (!*a3)
      {
        goto LABEL_423;
      }

      if ((v76 & 1) == 0 || (v79 & 1) == 0 || (v82 & 1) == 0 || (v83 & 1) == 0)
      {
        goto LABEL_437;
      }

      v85 = (*(**(this + 3) + 16))(*(this + 3));
      buf.m_rect.m_location = v74;
      buf.m_rect.m_size = v77;
      buf.m_radii.m_topLeft = v80;
      buf.m_radii.m_topRight = v84;
      BYTE4(v226) = 14;
      BYTE8(v226) = 1;
      (*(*v85 + 192))(v85, &buf);
      if (BYTE8(v226) >= 2u && BYTE8(v226) != 255)
      {
        v86 = buf.m_rect.m_location;
        buf.m_rect.m_location = 0;
        if (v86)
        {
          if (atomic_fetch_add(v86 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v86 + 2);
            (*(*v86 + 8))(v86);
          }
        }
      }

      goto LABEL_147;
    case 0x471:
      IPC::ArgumentCoder<std::tuple<WebCore::PathClosedArc>,void>::decode<IPC::Decoder>(&buf, a3);
      if ((LOBYTE(buf.m_radii.m_topRight.m_width) & 1) == 0)
      {
        goto LABEL_424;
      }

      WebKit::RemoteDisplayListRecorder::strokeClosedArc(this, &buf);
      goto LABEL_146;
    case 0x472:
      IPC::ArgumentCoder<std::tuple<WebCore::FloatRect>,void>::decode<IPC::Decoder>(a3, &buf);
      if (LOBYTE(buf.m_radii.m_topLeft.m_width) & 1) != 0 || (IPC::Decoder::markInvalid(a3), (LOBYTE(buf.m_radii.m_topLeft.m_width)))
      {
        WebKit::RemoteDisplayListRecorder::strokeEllipse(this, &buf.m_rect);
      }

      goto LABEL_146;
    case 0x473:
      IPC::ArgumentCoder<std::tuple<WebCore::PathDataLine>,void>::decode<IPC::Decoder>(&buf, a3);
      if ((LOBYTE(buf.m_radii.m_topLeft.m_width) & 1) == 0)
      {
        goto LABEL_424;
      }

      WebKit::RemoteDisplayListRecorder::strokeLine(this, &buf);
      goto LABEL_146;
    case 0x474:
      IPC::ArgumentCoder<WebCore::PathDataLine,void>::decode(a3, &v221);
      if (LOBYTE(v221.m_radii.m_topLeft.m_width) != 1)
      {
        goto LABEL_423;
      }

      v9 = a3[1];
      v10 = a3[2];
      v11 = *a3;
      if (v9 <= v10 - *a3)
      {
        goto LABEL_420;
      }

      v12 = (v10 + 1);
      a3[2] = v10 + 1;
      if (!v10)
      {
        goto LABEL_421;
      }

      v13 = *v10;
      if (v13 > 1)
      {
        goto LABEL_422;
      }

      if (v13)
      {
        v14 = IPC::ArgumentCoder<WebCore::Headroom,void>::decode(a3);
        if ((v14 & 0x100000000) == 0)
        {
          goto LABEL_422;
        }

        v15 = v14 & 0x1FFFFFFFFLL;
        v9 = a3[1];
        v12 = a3[2];
        v11 = *a3;
      }

      else
      {
        v15 = 0;
      }

      if (v9 <= v12 - v11)
      {
LABEL_420:
        IPC::Decoder::markInvalid(a3);
      }

      else
      {
        a3[2] = (v12 + 1);
        if (v12)
        {
          if (*v12 > 1u)
          {
            goto LABEL_422;
          }

          if (!*v12)
          {
            v20 = 0;
LABEL_18:
            buf.m_rect = v221.m_rect;
            buf.m_radii.m_topLeft = v15;
            buf.m_radii.m_topRight = v20;
            LOBYTE(buf.m_radii.m_bottomLeft.m_width) = 1;
            WebKit::RemoteDisplayListRecorder::strokeLineWithColorAndThickness(this, &buf, v15, v20);
            if (this)
            {
              goto LABEL_147;
            }

            return;
          }

          v16 = v12 & 0xFFFFFFFFFFFFFFFCLL;
          v17 = ((v12 & 0xFFFFFFFFFFFFFFFCLL) + 4);
          v18 = v17 - v11;
          v47 = v9 >= v18;
          v19 = &v9[-v18];
          if (v47 && v19 >= 4)
          {
            a3[2] = (v16 + 8);
            if (v17)
            {
              v20 = *v17 | 0x100000000;
              goto LABEL_18;
            }

LABEL_422:
            IPC::Decoder::markInvalid(a3);
LABEL_423:
            IPC::Decoder::markInvalid(a3);
            goto LABEL_424;
          }
        }
      }

LABEL_421:
      IPC::Decoder::markInvalid(a3);
      goto LABEL_422;
    case 0x475:
      IPC::ArgumentCoder<WebCore::Path,void>::decode(a3, &buf, a2);
      if (LOBYTE(v227.m_colorAndFlags) != 1)
      {
        goto LABEL_423;
      }

      LOBYTE(v221.m_rect.m_location.m_x) = 0;
      v223 = -1;
      if (BYTE8(v226) == 2)
      {
        v221.m_rect.m_location = buf.m_rect.m_location;
      }

      else if (BYTE8(v226))
      {
        if (BYTE8(v226) != 1)
        {
LABEL_41:
          v224 = 1;
          v34 = (*(**(this + 3) + 16))(*(this + 3));
          (*(*v34 + 192))(v34, &v221);
LABEL_42:
          if ((v224 & 1) != 0 && v223 >= 2u && v223 != 255)
          {
            v33 = v221.m_rect.m_location;
            v221.m_rect.m_location = 0;
            if (v33)
            {
LABEL_46:
              if (atomic_fetch_add(v33 + 2, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v33 + 2);
                (*(*v33 + 8))(v33);
              }
            }
          }

          goto LABEL_146;
        }

        v221 = buf;
        v222 = v226;
      }

      v223 = BYTE8(v226);
      goto LABEL_41;
    case 0x476:
      IPC::ArgumentCoder<std::tuple<WebCore::PathSegment>,void>::decode<IPC::Decoder>(&buf, a3);
      if ((BYTE8(v226) & 1) == 0)
      {
        goto LABEL_424;
      }

      WebKit::RemoteDisplayListRecorder::strokePathSegment(this, &buf);
      goto LABEL_146;
    case 0x477:
      IPC::ArgumentCoder<std::tuple<WebCore::PathDataQuadCurve>,void>::decode<IPC::Decoder>(&buf, a3);
      if ((LOBYTE(buf.m_radii.m_topRight.m_width) & 1) == 0)
      {
        goto LABEL_424;
      }

      WebKit::RemoteDisplayListRecorder::strokeQuadCurve(this, &buf);
      if (!this)
      {
        return;
      }

      goto LABEL_147;
    case 0x478:
      IPC::ArgumentCoder<std::tuple<WebCore::FloatRect,float>,void>::decode<IPC::Decoder>(&buf, a3);
      if ((LOBYTE(buf.m_radii.m_topLeft.m_height) & 1) == 0)
      {
        goto LABEL_424;
      }

      WebKit::RemoteDisplayListRecorder::strokeRect(this, &buf.m_rect, buf.m_radii.m_topLeft.m_width);
      goto LABEL_146;
    case 0x479:
      v42 = a3[1];
      v43 = (a3[2] + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v44 = *a3;
      v45 = v43 - *a3;
      v47 = v42 >= v45;
      v46 = &v42[-v45];
      v47 = v47 && v46 >= 4;
      if (!v47)
      {
        goto LABEL_422;
      }

      a3[2] = (v43 + 4);
      if (!v43)
      {
        goto LABEL_423;
      }

      v48 = *v43;
      v49 = (v43 + 7) & 0xFFFFFFFFFFFFFFFCLL;
      v50 = v49 - v44;
      v47 = v42 >= v50;
      v51 = &v42[-v50];
      if (!v47 || v51 < 4)
      {
        goto LABEL_422;
      }

      a3[2] = (v49 + 4);
      if (!v49)
      {
        goto LABEL_423;
      }

      v53 = *v49;
      v54 = *(*(**(this + 3) + 16))(*(this + 3), a2);
      (*(v54 + 672))(v48, v53);
      goto LABEL_147;
    default:
      v208 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v8 >= 0x107F)
        {
          v209 = 4223;
        }

        else
        {
          v209 = v8;
        }

        v210 = (&IPC::Detail::messageDescriptions)[3 * v209];
        v211 = a3[7];
        buf.m_rect.m_location.m_x = 4.8151e-34;
        *&buf.m_rect.m_location.m_y = v210;
        LOWORD(buf.m_rect.m_size.m_height) = 2048;
        *(&buf.m_rect.m_size.m_height + 2) = v211;
        _os_log_error_impl(&dword_19D52D000, v208, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", &buf, 0x16u);
      }

      goto LABEL_424;
  }
}

unsigned int *IPC::handleMessage<Messages::RemoteDisplayListRecorder::SetFillColor,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::Color const&)>(IPC::Decoder *a1, WebKit::RemoteDisplayListRecorder *a2)
{
  result = IPC::Decoder::decode<std::tuple<WebCore::Color>>(a1, &v5);
  if (v6 == 1)
  {
    result = WebKit::RemoteDisplayListRecorder::setFillColor(a2, &v5);
    if ((v6 & 1) != 0 && (v5 & 0x8000000000000) != 0)
    {
      result = (v5 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v5 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result);
        return WTF::fastFree(result, v4);
      }
    }
  }

  return result;
}

unsigned int *IPC::handleMessage<Messages::RemoteDisplayListRecorder::SetStrokeColor,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::Color const&)>(IPC::Decoder *a1, WebKit::RemoteDisplayListRecorder *a2)
{
  result = IPC::Decoder::decode<std::tuple<WebCore::Color>>(a1, &v5);
  if (v6 == 1)
  {
    result = WebKit::RemoteDisplayListRecorder::setStrokeColor(a2, &v5);
    if ((v6 & 1) != 0 && (v5 & 0x8000000000000) != 0)
    {
      result = (v5 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v5 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result);
        return WTF::fastFree(result, v4);
      }
    }
  }

  return result;
}

atomic_uchar ***IPC::handleMessage<Messages::RemoteDisplayListRecorder::SetStrokeGradient,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>> &&,WebCore::AffineTransform const&)>(IPC::Decoder *a1, uint64_t a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>,WebCore::AffineTransform>>(&v5, a1);
  if (v7 == 1)
  {
    result = WebKit::RemoteDisplayListRecorder::setStrokeGradient(a2, &v5, &v6);
    if (v7)
    {
      return WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v5, v4);
    }
  }

  return result;
}

uint64_t IPC::handleMessage<Messages::RemoteDisplayListRecorder::SetStyle,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(std::optional<mpark::variant<WebCore::GraphicsDropShadow,WebCore::GraphicsGaussianBlur,WebCore::GraphicsColorMatrix>>)>(IPC::Decoder *a1, uint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v23 = *(a1 + 3);
    if (v23)
    {
      if (v4)
      {
        (*(*v23 + 16))(v23);
        v6 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_54;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_54;
  }

  v7 = v5 + 1;
  *(a1 + 2) = v5 + 1;
  if (v5)
  {
    if (*v5 >= 2u)
    {
      goto LABEL_9;
    }

    if (!*v5)
    {
      LOBYTE(v42[0]) = 0;
      v43 = 0;
      v44 = 1;
      goto LABEL_27;
    }

    if (v4 <= &v7[-v6])
    {
      v24 = 0;
      v25 = 0;
      *a1 = 0;
      *(a1 + 1) = 0;
      v26 = *(a1 + 3);
      if (v26)
      {
        (*(*v26 + 16))(v26);
        v25 = *a1;
        v24 = *(a1 + 1);
      }
    }

    else
    {
      *(a1 + 2) = v5 + 2;
      if (v5 != -1)
      {
        v8 = *v7;
        if (v8 > 2)
        {
LABEL_8:
          v6 = *a1;
          v4 = *(a1 + 1);
          goto LABEL_9;
        }

        if (!*v7)
        {
          IPC::Decoder::decode<WebCore::GraphicsDropShadow>(&v28, a1);
          if (v30 != 1)
          {
            goto LABEL_8;
          }

          *&v34 = v28;
          DWORD2(v34) = DWORD2(v28);
          v35 = v29;
          v39 = 0;
LABEL_26:
          v40 = 1;
          mpark::variant<WebCore::GraphicsDropShadow,WebCore::GraphicsGaussianBlur,WebCore::GraphicsColorMatrix>::variant(v42, &v34);
          v43 = 1;
          v44 = 1;
          if ((v40 & 1) == 0)
          {
            goto LABEL_27;
          }

          mpark::detail::move_constructor<mpark::detail::traits<WebCore::GraphicsDropShadow,WebCore::GraphicsGaussianBlur,WebCore::GraphicsColorMatrix>,(mpark::detail::Trait)1>::~move_constructor(&v34, v18);
          if (v44)
          {
            goto LABEL_27;
          }

          goto LABEL_11;
        }

        if (v8 == 1)
        {
          v16 = IPC::ArgumentCoder<WebCore::GraphicsGaussianBlur,void>::decode(a1);
          if (v17)
          {
            *&v34 = v16;
            v39 = 1;
            goto LABEL_26;
          }
        }

        else
        {
          IPC::ArgumentCoder<WebCore::GraphicsColorMatrix,void>::decode(a1, &v28);
          if (v33)
          {
            v37 = v31;
            v38 = v32;
            v35 = v29;
            v36 = v30;
            v34 = v28;
            v39 = 2;
            goto LABEL_26;
          }
        }

        v6 = *a1;
        v21 = *(a1 + 1);
        *a1 = 0;
        *(a1 + 1) = 0;
        v22 = *(a1 + 3);
        if (!v22 || !v21)
        {
          goto LABEL_8;
        }

LABEL_48:
        (*(*v22 + 16))(v22, v6);
        goto LABEL_8;
      }

      v24 = v4;
      v25 = v6;
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    v27 = *(a1 + 3);
    if (v27 && v24)
    {
      (*(*v27 + 16))(v27, v25, v24);
    }

    goto LABEL_8;
  }

LABEL_54:
  *a1 = 0;
  *(a1 + 1) = 0;
  v22 = *(a1 + 3);
  if (v22)
  {
    if (v4)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = 0;
LABEL_9:
  *a1 = 0;
  *(a1 + 1) = 0;
  v9 = *(a1 + 3);
  if (v9 && v4)
  {
    (*(*v9 + 16))(v9, v6);
  }

  LOBYTE(v42[0]) = 0;
  v44 = 0;
LABEL_11:
  v10 = *a1;
  v11 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v12 = *(a1 + 3);
  if (!v12 || !v11 || ((*(*v12 + 16))(v12, v10), (v44 & 1) == 0))
  {
    LOBYTE(v34) = 0;
    v41 = 0;
    goto LABEL_13;
  }

LABEL_27:
  LOBYTE(v34) = 0;
  v40 = 0;
  if (v43 == 1)
  {
    mpark::variant<WebCore::GraphicsDropShadow,WebCore::GraphicsGaussianBlur,WebCore::GraphicsColorMatrix>::variant(&v34, v42);
    v40 = 1;
    v41 = 1;
    if (v44 & 1) != 0 && (v43)
    {
      mpark::detail::move_constructor<mpark::detail::traits<WebCore::GraphicsDropShadow,WebCore::GraphicsGaussianBlur,WebCore::GraphicsColorMatrix>,(mpark::detail::Trait)1>::~move_constructor(v42, v19);
      if ((v41 & 1) == 0)
      {
LABEL_13:
        v13 = *a1;
        v14 = *(a1 + 1);
        *a1 = 0;
        *(a1 + 1) = 0;
        result = *(a1 + 3);
        if (!result)
        {
          return result;
        }

        if (!v14)
        {
          return result;
        }

        result = (*(*result + 16))(result, v13);
        if ((v41 & 1) == 0)
        {
          return result;
        }
      }
    }
  }

  else
  {
    v41 = 1;
  }

  LOBYTE(v42[0]) = 0;
  v43 = 0;
  if (v40 == 1)
  {
    mpark::variant<WebCore::GraphicsDropShadow,WebCore::GraphicsGaussianBlur,WebCore::GraphicsColorMatrix>::variant(v42, &v34);
    v43 = 1;
  }

  result = WebKit::RemoteDisplayListRecorder::setStyle(a2, v42);
  if (v43 == 1)
  {
    result = mpark::detail::move_constructor<mpark::detail::traits<WebCore::GraphicsDropShadow,WebCore::GraphicsGaussianBlur,WebCore::GraphicsColorMatrix>,(mpark::detail::Trait)1>::~move_constructor(v42, v20);
  }

  if ((v41 & 1) != 0 && v40 == 1)
  {
    return mpark::detail::move_constructor<mpark::detail::traits<WebCore::GraphicsDropShadow,WebCore::GraphicsGaussianBlur,WebCore::GraphicsColorMatrix>,(mpark::detail::Trait)1>::~move_constructor(&v34, v20);
  }

  return result;
}

atomic_ullong *IPC::handleMessage<Messages::RemoteDisplayListRecorder::ClipToImageBuffer,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect const&)>(IPC::Decoder *a1, uint64_t a2)
{
  v4 = *(a1 + 1);
  v5 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *a1;
  v7 = v5 - *a1;
  v12 = v4 >= v7;
  v8 = v4 - v7;
  if (v12 && v8 > 7)
  {
    *(a1 + 2) = v5 + 1;
    if (!v5)
    {
      goto LABEL_18;
    }

    v10 = *v5;
    v11 = *v5 - 1;
    if (v6)
    {
      v12 = v11 >= 0xFFFFFFFFFFFFFFFELL;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(a1, &v19);
      if (v20)
      {
        return WebKit::RemoteDisplayListRecorder::clipToImageBuffer(a2, v10);
      }

      v6 = *a1;
LABEL_15:
      v4 = *(a1 + 1);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v14 = *(a1 + 3);
    if (v14)
    {
      goto LABEL_32;
    }

    v4 = 0;
LABEL_18:
    while (1)
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v15 = *(a1 + 3);
      if (!v15)
      {
        break;
      }

      if (!v4)
      {
        goto LABEL_20;
      }

      v14 = (*(*v15 + 16))(v15);
      v6 = *a1;
      if (!*a1)
      {
        goto LABEL_15;
      }

      __break(1u);
LABEL_32:
      if (v4)
      {
        (*(*v14 + 16))(v14);
        v4 = *(a1 + 1);
      }
    }

    v4 = 0;
LABEL_20:
    v6 = 0;
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v16 = *(a1 + 3);
  if (v16 && v4)
  {
    (*(*v16 + 16))(v16, v6);
  }

  v17 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result && v17)
  {
    v18 = *(*result + 16);

    return v18();
  }

  return result;
}

PathImpl *IPC::handleMessage<Messages::RemoteDisplayListRecorder::ClipOutToPath,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::Path const&)>(IPC::Decoder *a1, WebKit::RemoteDisplayListRecorder *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebCore::Path,void>::decode(a1, v11, a2);
  if (v14)
  {
    v9.m_data.impl_.data_.dummy_ = 0;
    v9.m_data.impl_.index_ = -1;
    if (v13 == 2)
    {
      v9.m_data.impl_.data_.tail_.tail_.head_.value.m_data.m_ptr = *&v11[0];
    }

    else if (v13)
    {
      if (v13 != 1)
      {
        goto LABEL_5;
      }

      *&v9.m_data.impl_.data_.dummy_ = v11[0];
      *(&v9.m_data.impl_.data_.tail_.tail_ + 1) = v11[1];
      *(&v9.m_data.impl_.data_.tail_.tail_ + 2) = v11[2];
      *(&v9.m_data.impl_.data_.tail_.tail_ + 6) = v12;
    }

    v9.m_data.impl_.index_ = v13;
LABEL_5:
    v10 = 1;
    result = WebKit::RemoteDisplayListRecorder::clipOutToPath(a2, &v9);
    if ((v10 & 1) != 0 && v9.m_data.impl_.index_ >= 2u && v9.m_data.impl_.index_ != 255)
    {
      result = v9.m_data.impl_.data_.tail_.tail_.head_.value.m_data.m_ptr;
      v9.m_data.impl_.data_.tail_.tail_.head_.value.m_data.m_ptr = 0;
      if (result)
      {
        if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result + 2);
          return (*(*result + 8))(result);
        }
      }
    }

    return result;
  }

  v5 = *a1;
  v6 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result && v6)
  {
    (*(*result + 16))(result, v5);
    result = *(a1 + 3);
    v7 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (result && v7)
    {
      v8 = *(*result + 16);

      return v8();
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
  }

  return result;
}

unsigned int *IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawSystemImage,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WTF::Ref<WebCore::SystemImage,WTF::RawPtrTraits<WebCore::SystemImage>,WTF::DefaultRefDerefTraits<WebCore::SystemImage>> &&,WebCore::FloatRect const&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::SystemImage,void>::decode(a1, &v18);
  if (v19)
  {
    while (1)
    {
      v4 = IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(a1, &v20);
      if ((v21 & 1) == 0)
      {
        break;
      }

      if (v19)
      {
        v15 = v18;
        v16 = v20;
        v17 = 1;
        goto LABEL_5;
      }

      __break(1u);
LABEL_21:
      (*(*v4 + 16))(v4, v5);
      if ((v19 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v11 = *a1;
    v12 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v13 = *(a1 + 3);
    if (v13 && v12)
    {
      (*(*v13 + 16))(v13, v11);
    }

    LOBYTE(v15) = 0;
    v17 = 0;
    if (v19)
    {
      v14 = v18;
      v18 = 0;
      if (v14)
      {
        if (atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v14 + 2);
          (*(*v14 + 8))(v14, v11, v12);
        }
      }
    }
  }

  else
  {
    v5 = *a1;
    v7 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v4 = *(a1 + 3);
    if (v4)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      goto LABEL_21;
    }

LABEL_16:
    LOBYTE(v15) = 0;
    v17 = 0;
  }

LABEL_5:
  if (v17)
  {
    result = WebKit::RemoteDisplayListRecorder::drawSystemImage(a2, &v15);
    if (v17)
    {
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result + 2);
          return (*(*result + 8))(result);
        }
      }
    }
  }

  else
  {
    v9 = *a1;
    v10 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v10)
    {
      return (*(*result + 16))(result, v9);
    }
  }

  return result;
}

atomic_uchar **IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawPatternNativeImage,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect const&,WebCore::FloatRect const&,WebCore::AffineTransform const&,WebCore::FloatPoint const&,WebCore::FloatSize const&,WebCore::ImagePaintingOptions)>(IPC::Decoder *a1, uint64_t a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect,WebCore::FloatRect,WebCore::AffineTransform,WebCore::FloatPoint,WebCore::FloatSize,WebCore::ImagePaintingOptions>>(v4, a1);
  if (v5 == 1)
  {
    return WebKit::RemoteDisplayListRecorder::drawPatternNativeImage(a2, v4[0]);
  }

  return result;
}

IPC::Decoder *IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawPatternImageBuffer,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect const&,WebCore::FloatRect const&,WebCore::AffineTransform const&,WebCore::FloatPoint const&,WebCore::FloatSize const&,WebCore::ImagePaintingOptions)>(IPC::Decoder *a1, uint64_t a2)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WebCore::FloatRect,WebCore::FloatRect,WebCore::AffineTransform,WebCore::FloatPoint,WebCore::FloatSize,WebCore::ImagePaintingOptions>>(v4, a1);
  if (v5 == 1)
  {
    return WebKit::RemoteDisplayListRecorder::drawPatternImageBuffer(a2, v4[0]);
  }

  return result;
}

uint64_t IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawLine,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::FloatPoint const&,WebCore::FloatPoint const&)>(IPC::Decoder *a1, WebKit::RemoteDisplayListRecorder *a2)
{
  v4 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  if (v5)
  {
    v6 = v4;
    v7 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
    if (v8)
    {
      v17 = v6;
      v18 = v7;
      v19 = 1;
      return WebKit::RemoteDisplayListRecorder::drawLine(a2, &v17, &v18);
    }

    v10 = *a1;
    v14 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v12 = *(a1 + 3);
    if (v12 && v14)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = *a1;
    v11 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v12 = *(a1 + 3);
    if (v12)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
LABEL_17:
      (*(*v12 + 16))(v12, v10);
    }
  }

  v15 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result && v15)
  {
    v16 = *(*result + 16);

    return v16();
  }

  return result;
}

unsigned int *IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawDotsForDocumentMarker,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::FloatRect const&,WebCore::DocumentMarkerLineStyle const&)>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(a1, &v17);
  if (v18)
  {
    IPC::ArgumentCoder<WebCore::DocumentMarkerLineStyle,void>::decode(a1, v19);
    if (v21)
    {
      v13 = v17;
      v14[0] = v19[0];
      v15 = v20;
      v16 = 1;
      result = WebKit::RemoteDisplayListRecorder::drawDotsForDocumentMarker(a2, &v13, v14);
      if ((v16 & 1) != 0 && (v15 & 0x8000000000000) != 0)
      {
        result = (v15 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v15 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result);
          return WTF::fastFree(result, v5);
        }
      }

      return result;
    }

    v6 = *a1;
    v7 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v8 = *(a1 + 3);
    if (v8 && v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v6 = *a1;
    v11 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v8 = *(a1 + 3);
    if (v8)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
LABEL_15:
      (*(*v8 + 16))(v8, v6);
    }
  }

  v9 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result && v9)
  {
    v10 = *(*result + 16);

    return v10();
  }

  return result;
}

uint64_t IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawEllipse,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::FloatRect const&)>(IPC::Decoder *a1, WebKit::RemoteDisplayListRecorder *a2)
{
  IPC::ArgumentCoder<std::tuple<WebCore::FloatRect>,void>::decode<IPC::Decoder>(a1, &v8);
  if (v9)
  {
    return WebKit::RemoteDisplayListRecorder::drawEllipse(a2, &v8);
  }

  v5 = *a1;
  v6 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result && v6 != 0)
  {
    result = (*(*result + 16))(result, v5);
    if (v9)
    {
      return WebKit::RemoteDisplayListRecorder::drawEllipse(a2, &v8);
    }
  }

  return result;
}

PathImpl *IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawPath,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::Path const&)>(IPC::Decoder *a1, WebKit::RemoteDisplayListRecorder *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebCore::Path,void>::decode(a1, v11, a2);
  if (v14)
  {
    v9.m_data.impl_.data_.dummy_ = 0;
    v9.m_data.impl_.index_ = -1;
    if (v13 == 2)
    {
      v9.m_data.impl_.data_.tail_.tail_.head_.value.m_data.m_ptr = *&v11[0];
    }

    else if (v13)
    {
      if (v13 != 1)
      {
        goto LABEL_5;
      }

      *&v9.m_data.impl_.data_.dummy_ = v11[0];
      *(&v9.m_data.impl_.data_.tail_.tail_ + 1) = v11[1];
      *(&v9.m_data.impl_.data_.tail_.tail_ + 2) = v11[2];
      *(&v9.m_data.impl_.data_.tail_.tail_ + 6) = v12;
    }

    v9.m_data.impl_.index_ = v13;
LABEL_5:
    v10 = 1;
    result = WebKit::RemoteDisplayListRecorder::drawPath(a2, &v9);
    if ((v10 & 1) != 0 && v9.m_data.impl_.index_ >= 2u && v9.m_data.impl_.index_ != 255)
    {
      result = v9.m_data.impl_.data_.tail_.tail_.head_.value.m_data.m_ptr;
      v9.m_data.impl_.data_.tail_.tail_.head_.value.m_data.m_ptr = 0;
      if (result)
      {
        if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result + 2);
          return (*(*result + 8))(result);
        }
      }
    }

    return result;
  }

  v5 = *a1;
  v6 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result && v6)
  {
    (*(*result + 16))(result, v5);
    result = *(a1 + 3);
    v7 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    if (result && v7)
    {
      v8 = *(*result + 16);

      return v8();
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
  }

  return result;
}

unsigned int *IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawFocusRingPath,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::Path const&,float,WebCore::Color const&)>(IPC::Decoder *a1, WebKit::RemoteDisplayListRecorder *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebCore::Path>(v29, a1);
  if (v32 != 1)
  {
    v25.m_data.impl_.data_.dummy_ = 0;
    v28 = 0;
    goto LABEL_20;
  }

  v4 = *(a1 + 1);
  v5 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = v5 - *a1;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (!v7 || v8 <= 3)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v21 = *(a1 + 3);
    if (v21)
    {
      if (v4)
      {
        (*(*v21 + 16))(v21);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_41;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
LABEL_41:
    *a1 = 0;
    *(a1 + 1) = 0;
    v22 = *(a1 + 3);
    if (v22 && v4)
    {
      (*(*v22 + 16))(v22);
    }

    v25.m_data.impl_.data_.dummy_ = 0;
    v28 = 0;
    goto LABEL_14;
  }

  v10 = *v5;
  IPC::ArgumentCoder<WebCore::Color,void>::decode(a1, &v23);
  if ((v24 & 1) == 0)
  {
    v18 = *a1;
    v19 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v20 = *(a1 + 3);
    if (!v20 || !v19 || ((*(*v20 + 16))(v20, v18), (v24 & 1) == 0))
    {
      v12 = 0;
      v25.m_data.impl_.data_.dummy_ = 0;
      goto LABEL_13;
    }
  }

  v25.m_data.impl_.data_.dummy_ = 0;
  v25.m_data.impl_.index_ = -1;
  if (v31 == 2)
  {
    v11 = *&v29[0];
    *&v29[0] = 0;
    v25.m_data.impl_.data_.tail_.tail_.head_.value.m_data.m_ptr = v11;
  }

  else if (v31)
  {
    if (v31 != 1)
    {
      goto LABEL_12;
    }

    *&v25.m_data.impl_.data_.dummy_ = v29[0];
    *(&v25.m_data.impl_.data_.tail_.tail_ + 1) = v29[1];
    *(&v25.m_data.impl_.data_.tail_.tail_ + 2) = v29[2];
    *(&v25.m_data.impl_.data_.tail_.tail_ + 6) = v30;
  }

  v25.m_data.impl_.index_ = v31;
LABEL_12:
  v26 = v10;
  v27.m_colorAndFlags = v23;
  v12 = 1;
LABEL_13:
  v28 = v12;
LABEL_14:
  if (v31 >= 2u && v31 != 255)
  {
    v13 = *&v29[0];
    *&v29[0] = 0;
    if (v13)
    {
      if (atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v13 + 2);
        (*(*v13 + 8))(v13);
      }
    }
  }

LABEL_20:
  if (v28)
  {
    result = WebKit::RemoteDisplayListRecorder::drawFocusRingPath(a2, &v25, v26, &v27);
    if (v28)
    {
      if ((v27.m_colorAndFlags & 0x8000000000000) != 0)
      {
        result = (v27.m_colorAndFlags & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v27.m_colorAndFlags & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result);
          result = WTF::fastFree(result, v15);
        }
      }

      if (v25.m_data.impl_.index_ >= 2u && v25.m_data.impl_.index_ != 255)
      {
        result = v25.m_data.impl_.data_.tail_.tail_.head_.value.m_data.m_ptr;
        v25.m_data.impl_.data_.tail_.tail_.head_.value.m_data.m_ptr = 0;
        if (result)
        {
          if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, result + 2);
            return (*(*result + 8))(result);
          }
        }
      }
    }
  }

  else
  {
    v16 = *a1;
    v17 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v17)
    {
      return (*(*result + 16))(result, v16);
    }
  }

  return result;
}

atomic_uchar ***IPC::handleMessage<Messages::RemoteDisplayListRecorder::FillRectWithGradientAndSpaceTransform,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::FloatRect const&,WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>> &&,WebCore::AffineTransform const&,WebCore::RequiresClipToRect)>(atomic_uchar ****a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(a1, &v22);
  if ((v23 & 1) == 0)
  {
    v11 = *a1;
    v14 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v13 = a1[3];
    if (v13)
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  IPC::ArgumentCoder<WebCore::Gradient,void>::decode(a1, &v24);
  if ((v25 & 1) == 0)
  {
    v11 = *a1;
    v12 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v13 = a1[3];
    if (!v13 || !v12)
    {
      goto LABEL_6;
    }

LABEL_14:
    ((*v13)[2])(v13, v11);
    goto LABEL_6;
  }

  IPC::Decoder::decode<WebCore::AffineTransform>(v26, a1);
  if (v27 == 1)
  {
    v5 = IPC::Decoder::decode<WebCore::LockHistory>(a1);
    if (v5 > 0xFFu)
    {
      v17 = v26[0];
      v9 = v24;
      v24 = 0;
      v16 = v9;
      v18 = v26[1];
      v19 = v26[2];
      v20 = v5;
      v21 = 1;
      WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v24, v4);
      WebKit::RemoteDisplayListRecorder::fillRectWithGradientAndSpaceTransform(a2);
      return WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v16, v10);
    }
  }

  WTF::Ref<WebCore::Gradient,WTF::RawPtrTraits<WebCore::Gradient>,WTF::DefaultRefDerefTraits<WebCore::Gradient>>::~Ref(&v24, v4);
LABEL_6:
  v6 = *a1;
  v7 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  result = a1[3];
  if (result)
  {
    if (v7)
    {
      return ((*result)[2])(result, v6);
    }
  }

  return result;
}

unsigned int *IPC::handleMessage<Messages::RemoteDisplayListRecorder::FillQuadCurve,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::PathDataQuadCurve const&)>(IPC::Decoder *a1, WebKit::RemoteDisplayListRecorder *a2)
{
  IPC::ArgumentCoder<std::tuple<WebCore::PathDataQuadCurve>,void>::decode<IPC::Decoder>(&v8, a1);
  if (v9)
  {
    return WebKit::RemoteDisplayListRecorder::fillQuadCurve(a2, &v8);
  }

  v5 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
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

  return result;
}

unsigned int *IPC::handleMessage<Messages::RemoteDisplayListRecorder::FillBezierCurve,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::PathDataBezierCurve const&)>(unsigned int **a1, WebKit::RemoteDisplayListRecorder *a2)
{
  v4 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v6 = v5;
  if ((v5 & 1) == 0)
  {
    v20 = *a1;
    v21 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v22 = a1[3];
    if (v22 && v21 != 0)
    {
      (*(*v22 + 16))(v22, v20);
    }
  }

  v7 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v9 = v8;
  if ((v8 & 1) == 0)
  {
    v24 = *a1;
    v25 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v26 = a1[3];
    if (v26)
    {
      if (v25)
      {
        (*(*v26 + 16))(v26, v24);
      }
    }
  }

  v10 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  v12 = v11;
  if ((v11 & 1) == 0)
  {
    v27 = *a1;
    v28 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v29 = a1[3];
    if (v29)
    {
      if (v28)
      {
        (*(*v29 + 16))(v29, v27);
      }
    }
  }

  v13 = IPC::ArgumentCoder<WebCore::FloatPoint,void>::decode(a1);
  if ((v14 & 1) == 0)
  {
    v31 = *a1;
    v30 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v32 = a1[3];
    if (v32)
    {
      if (v30)
      {
        v33 = v14;
        v34 = v13;
        (*(*v32 + 16))(v32, v31);
        v14 = v33;
        v13 = v34;
      }
    }
  }

  v15 = *a1;
  if (*a1)
  {
    if (v6 & 1) != 0 && (v9 & 1) != 0 && (v12 & 1) != 0 && (v14)
    {
      v35.start = v4;
      v35.controlPoint1 = v7;
      v35.controlPoint2 = v10;
      v35.endPoint = v13;
      v36 = 1;
      return WebKit::RemoteDisplayListRecorder::fillBezierCurve(a2, &v35);
    }

    __break(1u);
  }

  v17 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  result = a1[3];
  if (result)
  {
    if (v17)
    {
      (*(*result + 16))(result, v15);
      result = a1[3];
      v18 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      if (result)
      {
        if (v18)
        {
          v19 = *(*result + 16);

          return v19();
        }
      }
    }
  }

  return result;
}

unsigned int *IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawControlPart,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WTF::Ref<WebCore::ControlPart,WTF::RawPtrTraits<WebCore::ControlPart>,WTF::DefaultRefDerefTraits<WebCore::ControlPart>> &&,WebCore::FloatRoundedRect const&,float,WebCore::ControlStyle const&)>(unsigned int *a1, uint64_t a2, __n128 a3)
{
  IPC::ArgumentCoder<WebCore::ControlPart,void>::decode(a1, &v44, a3);
  if ((v45 & 1) == 0)
  {
    goto LABEL_27;
  }

  while (1)
  {
    IPC::ArgumentCoder<WebCore::FloatRoundedRect,void>::decode(a1, v46);
    if ((v47 & 1) == 0)
    {
      v29 = *a1;
      v30 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v31 = *(a1 + 3);
      if (!v31)
      {
        goto LABEL_43;
      }

      if (!v30)
      {
        goto LABEL_43;
      }

      (*(*v31 + 16))(v31, v29);
      if ((v47 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    v5 = *(a1 + 1);
    v6 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v7 = v6 - *a1;
    v8 = v5 >= v7;
    v9 = v5 - v7;
    if (!v8 || v9 <= 3)
    {
      break;
    }

    *(a1 + 2) = v6 + 1;
    if (!v6)
    {
      goto LABEL_51;
    }

    v11 = *v6;
    IPC::ArgumentCoder<WebCore::ControlStyle,void>::decode(a1, &v48);
    if ((v52 & 1) == 0)
    {
      v22 = *a1;
      v23 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v24 = *(a1 + 3);
      if (!v24 || !v23 || ((*(*v24 + 16))(v24, v22), (v52 & 1) == 0))
      {
        v14 = 0;
        LOBYTE(v34) = 0;
        goto LABEL_13;
      }
    }

    if (v45 & 1) != 0 && (v47)
    {
      v35 = v46[0];
      v36 = v46[1];
      v12 = v44;
      v44 = 0;
      v34 = v12;
      v37 = v46[2];
      v38 = v11;
      v39 = v48;
      v40 = v49;
      v13 = v50;
      v50 = 0uLL;
      v14 = 1;
      v41 = v13;
      v42 = v51;
LABEL_13:
      v43 = v14;
      goto LABEL_14;
    }

    __break(1u);
LABEL_27:
    v18 = *a1;
    v19 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v20 = *(a1 + 3);
    if (v20)
    {
      v21 = v19 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      (*(*v20 + 16))(v20, v18);
      if (v45)
      {
        continue;
      }
    }

    LOBYTE(v34) = 0;
    v43 = 0;
    goto LABEL_18;
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v32 = *(a1 + 3);
  if (v32)
  {
    if (v5)
    {
      (*(*v32 + 16))(v32);
      v5 = *(a1 + 1);
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_51:
  *a1 = 0;
  *(a1 + 1) = 0;
  v33 = *(a1 + 3);
  if (v33 && v5)
  {
    (*(*v33 + 16))(v33);
  }

LABEL_43:
  LOBYTE(v34) = 0;
  v43 = 0;
LABEL_14:
  if (v45)
  {
    v15 = v44;
    v44 = 0;
    if (v15)
    {
      if (atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v15 + 2);
        (*(*v15 + 8))(v15);
      }
    }
  }

LABEL_18:
  if (v43)
  {
    result = WebKit::RemoteDisplayListRecorder::drawControlPart(a2, &v34, v38);
    if (v43)
    {
      if ((*(&v41 + 1) & 0x8000000000000) != 0)
      {
        v27 = (*(&v41 + 1) & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((*(&v41 + 1) & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v27);
          WTF::fastFree(v27, v17);
        }
      }

      if ((v41 & 0x8000000000000) != 0)
      {
        v28 = (v41 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v41 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v28);
          WTF::fastFree(v28, v17);
        }
      }

      result = v34;
      v34 = 0;
      if (result)
      {
        if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, result + 2);
          return (*(*result + 8))(result);
        }
      }
    }
  }

  else
  {
    v25 = *a1;
    v26 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v26)
    {
      return (*(*result + 16))(result, v25);
    }
  }

  return result;
}

StringImpl *IPC::handleMessage<Messages::RemoteDisplayListRecorder::SetURLForRect,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WTF::URL const&,WebCore::FloatRect const&)>(IPC::Decoder *a1, WebKit::RemoteDisplayListRecorder *a2)
{
  IPC::ArgumentCoder<WTF::URL,void>::decode(a1, &v21);
  if ((v24 & 1) == 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(a1, &v25);
    v5 = v26;
    if ((v26 & 1) == 0)
    {
      break;
    }

    if (v24)
    {
      v6 = v21;
      v21 = 0;
      v18.m_string.m_impl.m_ptr = v6;
      *(&v18 + 8) = v22;
      *&v18.m_hostEnd = v23;
      LODWORD(v22) = v22 & 0xFFFFFFFE;
      v19 = v25;
      v20 = 1;
      goto LABEL_5;
    }

    __break(1u);
LABEL_16:
    v10 = *a1;
    v11 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v12 = *(a1 + 3);
    if (v12)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      (*(*v12 + 16))(v12, v10);
      if (v24)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  v4 = *a1;
  v16 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v17 = *(a1 + 3);
  if (v17 && v16)
  {
    (*(*v17 + 16))(v17, v4);
  }

  LOBYTE(v18.m_string.m_impl.m_ptr) = 0;
  v20 = 0;
  if (v24)
  {
LABEL_5:
    v7 = v21;
    v21 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v4);
      if ((v5 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else if ((v5 & 1) == 0)
    {
      goto LABEL_21;
    }

    result = WebKit::RemoteDisplayListRecorder::setURLForRect(a2, &v18, &v19);
    if (v20)
    {
      result = v18.m_string.m_impl.m_ptr;
      v18.m_string.m_impl.m_ptr = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v9);
        }
      }
    }

    return result;
  }

LABEL_21:
  v14 = *a1;
  v15 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result && v15)
  {
    return (*(*result + 16))(result, v14);
  }

  return result;
}

void IPC::handleMessage<Messages::RemoteDisplayListRecorder::DrawVideoFrame,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebKit::SharedVideoFrame &&,WebCore::FloatRect const&,WebKit::SharedVideoFrame &&::ImageOrientation,BOOL)>(IPC::Decoder *a1, WebKit::RemoteDisplayListRecorder *a2)
{
  IPC::Decoder::decode<WebKit::SharedVideoFrame>(a1, &v24);
  if (v26 != 1)
  {
    v18[0] = 0;
    v23 = 0;
    goto LABEL_18;
  }

  IPC::ArgumentCoder<WebCore::FloatRect,void>::decode(a1, &v27);
  if ((v28 & 1) == 0)
  {
    goto LABEL_32;
  }

  v4 = IPC::ArgumentCoder<WebCore::ImageOrientation,void>::decode(a1);
  if ((v4 & 0x100) == 0)
  {
    goto LABEL_32;
  }

  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *a1;
  if (v5 <= &v6[-*a1])
  {
    goto LABEL_25;
  }

  *(a1 + 2) = v6 + 1;
  if (v6)
  {
    v8 = *v6;
    if (v8 >= 2)
    {
      goto LABEL_33;
    }

    if (v26)
    {
      v9 = v4;
      std::__tuple_leaf<0ul,WebKit::SharedVideoFrame,false>::__tuple_leaf[abi:sn200100]<WebKit::SharedVideoFrame,0>(v18, &v24);
      v20 = v27;
      v21 = v9;
      v22 = v8;
      v10 = 1;
      goto LABEL_9;
    }

    __break(1u);
LABEL_25:
    *a1 = 0;
    *(a1 + 1) = 0;
    v15 = *(a1 + 3);
    if (v15)
    {
      if (v5)
      {
        (*(*v15 + 16))(v15);
        v5 = *(a1 + 1);
      }
    }

    else
    {
      v5 = 0;
    }
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v16 = *(a1 + 3);
  if (!v16)
  {
    v5 = 0;
LABEL_29:
    v7 = 0;
    goto LABEL_33;
  }

  if (!v5)
  {
    goto LABEL_29;
  }

  (*(*v16 + 16))(v16);
LABEL_32:
  v7 = *a1;
  v5 = *(a1 + 1);
LABEL_33:
  *a1 = 0;
  *(a1 + 1) = 0;
  v17 = *(a1 + 3);
  if (v17 && v5)
  {
    (*(*v17 + 16))(v17, v7);
  }

  v10 = 0;
  v18[0] = 0;
LABEL_9:
  v23 = v10;
  if ((v26 & 1) != 0 && v25[16] == 2)
  {
    WTF::MachSendRight::~MachSendRight(v25);
    v10 = v23;
  }

  if (v10)
  {
    goto LABEL_13;
  }

LABEL_18:
  v11 = *a1;
  v12 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v13 = *(a1 + 3);
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
    if (v23)
    {
LABEL_13:
      WebKit::RemoteDisplayListRecorder::drawVideoFrame(a2, v18);
      if ((v23 & 1) != 0 && v19[16] == 2)
      {
        WTF::MachSendRight::~MachSendRight(v19);
      }
    }
  }
}

void IPC::handleMessage<Messages::RemoteDisplayListRecorder::SetSharedVideoFrameSemaphore,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(IPC::Semaphore &&)>(IPC::Decoder *a1, WebKit::RemoteDisplayListRecorder *a2)
{
  IPC::Decoder::decode<std::tuple<IPC::Semaphore>>(a1, &v3);
  if (v4 == 1)
  {
    WebKit::RemoteDisplayListRecorder::setSharedVideoFrameSemaphore(a2, &v3);
    if (v4)
    {
      IPC::Semaphore::destroy(&v3);
      WTF::MachSendRight::~MachSendRight(&v3);
    }
  }
}

void IPC::handleMessage<Messages::RemoteDisplayListRecorder::SetSharedVideoFrameMemory,IPC::StreamServerConnection,WebKit::RemoteDisplayListRecorder,WebKit::RemoteDisplayListRecorder,void ()(WebCore::SharedMemoryHandle &&)>(IPC::Decoder *a1, WebKit::RemoteDisplayListRecorder *a2)
{
  IPC::Decoder::decode<std::tuple<WebCore::SharedMemoryHandle>>(a1, v3);
  if (v4 == 1)
  {
    WebKit::RemoteDisplayListRecorder::setSharedVideoFrameMemory(a2, v3);
    if (v4)
    {
      WTF::MachSendRight::~MachSendRight(v3);
    }
  }
}

uint64_t WebKit::RemoteExternalTexture::didReceiveStreamMessage(WebKit::RemoteExternalTexture *this, IPC::StreamServerConnection *a2, IPC::Decoder *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = *(*(this + 5) + 8);
  if (!v3)
  {
    result = 92;
    __break(0xC471u);
    return result;
  }

  if ((*(v3 + 56) & 0x4000) == 0)
  {
    v5 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a3 + 25);
      if (v14 >= 0x107F)
      {
        v14 = 4223;
      }

      v15 = (&IPC::Detail::messageDescriptions)[3 * v14];
      *v19 = 136315138;
      *&v19[4] = v15;
      _os_log_error_impl(&dword_19D52D000, v5, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteExternalTexture", v19, 0xCu);
    }

    v6 = *a3;
    v7 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    result = *(a3 + 3);
    if (result)
    {
      if (v7)
      {
        return (*(*result + 16))(result, v6);
      }
    }

    return result;
  }

  atomic_fetch_add(this + 2, 1u);
  v10 = *(a3 + 25);
  if (v10 > 0x47B)
  {
    if (v10 == 1148)
    {
      IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, v19);
      if (v19[8] & 1) != 0 || (v11 = *a3, v12 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (result = *(a3 + 3)) != 0) && v12 && (result = (*(*result + 16))(result, v11), (v19[8]))
      {
        result = WebKit::RemoteExternalTexture::setLabel(this, v19);
        if (v19[8])
        {
          result = *v19;
          *v19 = 0;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v11);
            }
          }
        }
      }

      goto LABEL_24;
    }

    if (v10 != 1149)
    {
      goto LABEL_14;
    }

    result = WebKit::RemoteExternalTexture::undestroy(this);
  }

  else
  {
    if (v10 != 1146)
    {
      if (v10 == 1147)
      {
        result = WebKit::RemoteCompositorIntegration::destruct(this);
        goto LABEL_24;
      }

LABEL_14:
      v13 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v10 >= 0x107F)
        {
          v16 = 4223;
        }

        else
        {
          v16 = v10;
        }

        v17 = (&IPC::Detail::messageDescriptions)[3 * v16];
        v18 = *(a3 + 7);
        *v19 = 136315394;
        *&v19[4] = v17;
        v20 = 2048;
        v21 = v18;
        _os_log_error_impl(&dword_19D52D000, v13, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", v19, 0x16u);
      }

      v11 = *a3;
      v12 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      result = *(a3 + 3);
      if (result && v12)
      {
        result = (*(*result + 16))(result, v11);
      }

      goto LABEL_24;
    }

    result = WebKit::RemoteExternalTexture::destroy(this);
  }

LABEL_24:
  if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, this + 2);
    return (*(*this + 8))(this, v11, v12);
  }

  return result;
}

uint64_t WebKit::RemoteFaceDetector::didReceiveStreamMessage(atomic_uint *this, atomic_uint *a2, IPC::Decoder *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  WebKit::RemoteBarcodeDetector::sharedPreferencesForWebProcess(&v22, this);
  if (v24 == 1 && (v23 & 0x10) != 0)
  {
    atomic_fetch_add(this + 2, 1u);
    v10 = *(a3 + 25);
    if (v10 == 1150)
    {
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v11)
      {
        v13 = result;
        result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v11)
        {
          v14 = result;
          v15 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
          *v15 = &unk_1F10EC530;
          v15[1] = v14;
          v15[2] = a2;
          *buf = v15;
          WebKit::RemoteFaceDetector::detect(this, v13, buf);
          result = *buf;
          *buf = 0;
          if (result)
          {
            result = (*(*result + 8))(result);
          }
        }
      }
    }

    else
    {
      v16 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        if (v10 >= 0x107F)
        {
          v19 = 4223;
        }

        else
        {
          v19 = v10;
        }

        v20 = (&IPC::Detail::messageDescriptions)[3 * v19];
        v21 = *(a3 + 7);
        *buf = 136315394;
        *&buf[4] = v20;
        v26 = 2048;
        v27 = v21;
        _os_log_error_impl(&dword_19D52D000, v16, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", buf, 0x16u);
      }

      v11 = *a3;
      v12 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      result = *(a3 + 3);
      if (result && v12)
      {
        result = (*(*result + 16))(result, v11);
      }
    }

    if (this && atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, this + 2);
      return (*(*this + 8))(this, v11, v12);
    }
  }

  else
  {
    v6 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a3 + 25);
      if (v17 >= 0x107F)
      {
        v17 = 4223;
      }

      v18 = (&IPC::Detail::messageDescriptions)[3 * v17];
      *buf = 136315138;
      *&buf[4] = v18;
      _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteFaceDetector", buf, 0xCu);
    }

    v7 = *a3;
    v8 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    result = *(a3 + 3);
    if (result)
    {
      if (v8)
      {
        return (*(*result + 16))(result, v7);
      }
    }
  }

  return result;
}

uint64_t WebKit::RemoteGPU::didReceiveStreamMessage(WebKit::RemoteGPU *this, atomic_uint *a2, IPC::Decoder *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  if ((*(this + 28) & 0x4000) == 0)
  {
    v4 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      v28 = *(a3 + 25);
      if (v28 >= 0x107F)
      {
        v28 = 4223;
      }

      v29 = (&IPC::Detail::messageDescriptions)[3 * v28];
      *buf = 136315138;
      *&buf[4] = v29;
      _os_log_error_impl(&dword_19D52D000, v4, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteGPU", buf, 0xCu);
    }

    v5 = *a3;
    v6 = *(a3 + 1);
    *a3 = 0;
    *(a3 + 1) = 0;
    result = *(a3 + 3);
    if (result)
    {
      if (v6)
      {
        return (*(*result + 16))(result, v5);
      }
    }

    return result;
  }

  atomic_fetch_add(this + 2, 1u);
  v9 = *(a3 + 25);
  if (v9 <= 0xFBA)
  {
    if (v9 == 1152)
    {
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v15)
      {
        result = WebKit::RemoteGPU::createCompositorIntegration(this, result);
      }

      goto LABEL_30;
    }

    if (v9 == 1153)
    {
      v10 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (*a3)
      {
        if ((v11 & 1) == 0)
        {
          __break(1u);
        }

        v12 = v10;
        v13 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v14)
        {
          *buf = v12;
          *&buf[8] = v13;
          buf[16] = 1;
          result = WebKit::RemoteGPU::createPresentationContext(this, buf, v13);
          goto LABEL_30;
        }

LABEL_21:
        v15 = *a3;
        v16 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        result = *(a3 + 3);
        if (result && v16)
        {
          result = (*(*result + 16))(result, v15);
        }

        goto LABEL_30;
      }

      v33 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v34 = *(a3 + 3);
      if (!v34 || !v33)
      {
        goto LABEL_21;
      }

      v35 = *(*v34 + 16);
LABEL_46:
      v35();
      goto LABEL_21;
    }

LABEL_20:
    v24 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      if (v9 >= 0x107F)
      {
        v30 = 4223;
      }

      else
      {
        v30 = v9;
      }

      v31 = (&IPC::Detail::messageDescriptions)[3 * v30];
      v32 = *(a3 + 7);
      *buf = 136315394;
      *&buf[4] = v31;
      *&buf[12] = 2048;
      *&buf[14] = v32;
      _os_log_error_impl(&dword_19D52D000, v24, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", buf, 0x16u);
    }

    goto LABEL_21;
  }

  if (v9 != 4027)
  {
    if (v9 != 4028)
    {
      goto LABEL_20;
    }

    v18 = IPC::ArgumentCoder<WebKit::WebGPU::RequestAdapterOptions,void>::decode(a3);
    if ((v18 & 0x100000000) == 0)
    {
      v36 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v37 = *(a3 + 3);
      if (!v37 || !v36)
      {
        goto LABEL_21;
      }

      v35 = *(*v37 + 16);
      goto LABEL_46;
    }

    v19 = v18;
    v20 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
    if ((v21 & 1) == 0)
    {
      goto LABEL_21;
    }

    *buf = v19;
    *&buf[8] = v20;
    buf[16] = 1;
    v22 = *(a3 + 8);
    if (v22)
    {
      v23 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
      *v23 = &unk_1F10EC558;
      v23[1] = v22;
      v23[2] = a2;
      v38 = v23;
      WebKit::RemoteGPU::requestAdapter(this, buf, *&buf[8], &v38);
      result = v38;
      v38 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      goto LABEL_30;
    }

LABEL_48:
    __break(0xC471u);
    JUMPOUT(0x19D905370);
  }

  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
  if (v15)
  {
    v25 = *(a3 + 8);
    if (v25)
    {
      v26 = result;
      v27 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
      *v27 = &unk_1F10EC580;
      v27[1] = v25;
      v27[2] = a2;
      *buf = v27;
      WebKit::RemoteGPU::isValid(this, v26, buf);
      result = *buf;
      *buf = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      goto LABEL_30;
    }

    goto LABEL_48;
  }

LABEL_30:
  if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, this + 2);
    return (*(*this + 8))(this, v15, v16);
  }

  return result;
}

void WebKit::RemoteGPUProxy::didReceiveMessage(atomic_uint *this, IPC::Connection *a2, IPC::Decoder *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  atomic_fetch_add(this + 7, 1u);
  v5 = *(a3 + 25);
  if (v5 == 1151)
  {
    v6 = *(a3 + 1);
    v7 = *(a3 + 2);
    v8 = *a3;
    if (v6 <= &v7[-*a3])
    {
      *a3 = 0;
      *(a3 + 1) = 0;
      v25 = *(a3 + 3);
      if (v25)
      {
        if (v6)
        {
          (*(*v25 + 16))(v25);
          v6 = *(a3 + 1);
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      *(a3 + 2) = v7 + 1;
      if (v7)
      {
        v9 = *v7;
        if (v9 < 2)
        {
          IPC::ArgumentCoder<IPC::Semaphore,void>::decode(a3, v29);
          if (v31)
          {
            while (1)
            {
              IPC::ArgumentCoder<IPC::Semaphore,void>::decode(a3, v32);
              if ((v34 & 1) == 0)
              {
                v22 = *a3;
                v23 = *(a3 + 1);
                *a3 = 0;
                *(a3 + 1) = 0;
                v24 = *(a3 + 3);
                if (!v24 || !v23 || (v10 = (*(*v24 + 16))(v24, v22), (v34 & 1) == 0))
                {
                  buf[0] = 0;
                  BYTE6(v38) = 0;
                  goto LABEL_10;
                }
              }

              if (v31)
              {
                break;
              }

              __break(1u);
LABEL_32:
              if (v12)
              {
                (*(*v10 + 16))(v10, v11);
                if (v31)
                {
                  continue;
                }
              }

              goto LABEL_26;
            }

            buf[0] = v9;
            WTF::MachSendRight::MachSendRight();
            v13 = v30;
            v30 = 0;
            HIDWORD(v36) = v13;
            WTF::MachSendRight::MachSendRight();
            v14 = v33;
            v33 = 0;
            *(&v38 + 2) = v14;
            BYTE6(v38) = 1;
            if (v34)
            {
              IPC::Semaphore::destroy(v32);
              WTF::MachSendRight::~MachSendRight(v32);
            }

LABEL_10:
            if (v31)
            {
              IPC::Semaphore::destroy(v29);
              WTF::MachSendRight::~MachSendRight(v29);
            }
          }

          else
          {
            v11 = *a3;
            v12 = *(a3 + 1);
            *a3 = 0;
            *(a3 + 1) = 0;
            v10 = *(a3 + 3);
            if (v10)
            {
              goto LABEL_32;
            }

LABEL_26:
            buf[0] = 0;
            BYTE6(v38) = 0;
          }

          if ((v38 & 0x1000000000000) != 0)
          {
LABEL_13:
            WebKit::RemoteGPUProxy::wasCreated(this, buf[0], &v36, &v37);
            if ((v38 & 0x1000000000000) != 0)
            {
              IPC::Semaphore::destroy(&v37);
              WTF::MachSendRight::~MachSendRight(&v37);
              IPC::Semaphore::destroy(&v36);
              WTF::MachSendRight::~MachSendRight(&v36);
            }

            goto LABEL_17;
          }

LABEL_45:
          v15 = *a3;
          v16 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v28 = *(a3 + 3);
          if (!v28)
          {
            goto LABEL_17;
          }

          if (!v16)
          {
            goto LABEL_17;
          }

          (*(*v28 + 16))(v28, v15);
          if ((v38 & 0x1000000000000) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_13;
        }

LABEL_43:
        *a3 = 0;
        *(a3 + 1) = 0;
        v27 = *(a3 + 3);
        if (v27 && v6)
        {
          (*(*v27 + 16))(v27, v8);
        }

        buf[0] = 0;
        BYTE6(v38) = 0;
        goto LABEL_45;
      }
    }

    *a3 = 0;
    *(a3 + 1) = 0;
    v26 = *(a3 + 3);
    if (v26)
    {
      if (v6)
      {
        (*(*v26 + 16))(v26);
        v8 = *a3;
        v6 = *(a3 + 1);
        goto LABEL_43;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = 0;
    goto LABEL_43;
  }

  v17 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    if (v5 >= 0x107F)
    {
      v19 = 4223;
    }

    else
    {
      v19 = v5;
    }

    v20 = (&IPC::Detail::messageDescriptions)[3 * v19];
    v21 = *(a3 + 7);
    *buf = 136315394;
    v36 = v20;
    v37 = 2048;
    v38 = v21;
    _os_log_error_impl(&dword_19D52D000, v17, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
  }

  v15 = *a3;
  v16 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  v18 = *(a3 + 3);
  if (v18 && v16)
  {
    (*(*v18 + 16))(v18, v15);
  }

LABEL_17:
  if (this)
  {
    if (atomic_fetch_add(this + 7, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, this + 7);
      (*(*this + 24))(this, v15, v16);
    }
  }
}

void WebKit::RemoteGraphicsContextGL::didReceiveStreamMessage(atomic_uint *this, atomic_uint *a2, IPC::Decoder *a3)
{
  v1812 = *MEMORY[0x1E69E9840];
  if ((this[52] & 0x800) != 0 && (*(this + 25) & 0x400000000) != 0)
  {
    atomic_fetch_add(this + 4, 1u);
    v5 = *(a3 + 25);
    switch(*(a3 + 25))
    {
      case 0x485:
        if ((IPC::Decoder::decode<std::tuple<unsigned int>>(a3) & 0x100000000) == 0)
        {
          goto LABEL_461;
        }

        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::activeTexture(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::activeTexture(0);
        goto LABEL_461;
      case 0x486:
        v153 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
        if ((v154 & 1) == 0)
        {
          goto LABEL_461;
        }

        v155 = v153;
        LODWORD(v1797[0]) = HIDWORD(v153);
        *buf = v153;
        if (v153 > 0xFFFFFFFD)
        {
          goto LABEL_461;
        }

        if (v153)
        {
          *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
        }

        if (v155 > 0xFFFFFFFDFFFFFFFFLL)
        {
          goto LABEL_461;
        }

        if (HIDWORD(v155))
        {
          LODWORD(v1797[0]) = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, v1797);
        }

        v275 = *(this + 7);
        if (v275)
        {
          ++*(v275 + 2);
          WebCore::GraphicsContextGLANGLE::attachShader(v275);
          goto LABEL_537;
        }

        WebCore::GraphicsContextGLANGLE::attachShader(0);
        goto LABEL_461;
      case 0x48A:
        v13 = *(a3 + 1);
        v136 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v137 = *a3;
        v138 = v136 - *a3;
        v17 = v13 >= v138;
        v139 = v13 - v138;
        if (!v17 || v139 <= 3)
        {
          goto LABEL_2739;
        }

        *(a3 + 2) = v136 + 1;
        if (!v136)
        {
          goto LABEL_2774;
        }

        v141 = *v136;
        v142 = ((v136 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v13 < v142 - v137 || v13 - (v142 - v137) <= 3)
        {
          goto LABEL_2739;
        }

        *(a3 + 2) = v142 + 1;
        if (!v142)
        {
          goto LABEL_2774;
        }

        v144 = *v142;
        IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, v1797);
        if ((v1797[1] & 1) == 0)
        {
          v1247 = *a3;
          v1248 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v1249 = *(a3 + 3);
          if (!v1249)
          {
            goto LABEL_2775;
          }

          if (!v1248)
          {
            goto LABEL_2775;
          }

          (*(*v1249 + 16))(v1249, v1247);
          if ((v1797[1] & 1) == 0)
          {
            goto LABEL_2775;
          }
        }

        *buf = v141;
        *&buf[4] = v144;
        *&buf[8] = v1797[0];
        buf[16] = 1;
        WebKit::RemoteGraphicsContextGL::bindAttribLocation(this, v141, v144, &buf[8]);
LABEL_257:
        if (buf[16])
        {
          v146 = *&buf[8];
          *&buf[8] = 0;
          if (v146)
          {
            if (atomic_fetch_add_explicit(v146, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
LABEL_2466:
              WTF::StringImpl::destroy(v146, v145);
            }
          }
        }

        goto LABEL_461;
      case 0x48B:
        v160 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
        if ((v161 & 1) == 0)
        {
          goto LABEL_461;
        }

        *buf = HIDWORD(v160);
        if (v160 > 0xFFFFFFFDFFFFFFFFLL)
        {
          goto LABEL_461;
        }

        if (HIDWORD(v160))
        {
          *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
        }

        v274 = *(this + 7);
        if (v274)
        {
          ++*(v274 + 2);
          WebCore::GraphicsContextGLANGLE::bindBuffer(v274);
          goto LABEL_527;
        }

        WebCore::GraphicsContextGLANGLE::bindBuffer(0);
        goto LABEL_461;
      case 0x48E:
        v162 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
        if ((v163 & 1) == 0)
        {
          goto LABEL_461;
        }

        *buf = HIDWORD(v162);
        if (v162 > 0xFFFFFFFDFFFFFFFFLL)
        {
          goto LABEL_461;
        }

        if (HIDWORD(v162))
        {
          *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
        }

        v274 = *(this + 7);
        if (v274)
        {
          ++*(v274 + 2);
          WebCore::GraphicsContextGLANGLE::bindFramebuffer(v274);
          goto LABEL_527;
        }

        WebCore::GraphicsContextGLANGLE::bindFramebuffer(0);
        goto LABEL_461;
      case 0x48F:
        v149 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
        if ((v150 & 1) == 0)
        {
          goto LABEL_461;
        }

        *buf = HIDWORD(v149);
        if (v149 > 0xFFFFFFFDFFFFFFFFLL)
        {
          goto LABEL_461;
        }

        if (HIDWORD(v149))
        {
          *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
        }

        v274 = *(this + 7);
        if (v274)
        {
          ++*(v274 + 2);
          WebCore::GraphicsContextGLANGLE::bindRenderbuffer(v274);
          goto LABEL_527;
        }

        WebCore::GraphicsContextGLANGLE::bindRenderbuffer(0);
        goto LABEL_461;
      case 0x491:
        v156 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
        if ((v157 & 1) == 0)
        {
          goto LABEL_461;
        }

        *buf = HIDWORD(v156);
        if (v156 > 0xFFFFFFFDFFFFFFFFLL)
        {
          goto LABEL_461;
        }

        if (HIDWORD(v156))
        {
          *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
        }

        v274 = *(this + 7);
        if (!v274)
        {
          WebCore::GraphicsContextGLANGLE::bindTexture(0);
          goto LABEL_461;
        }

        ++*(v274 + 2);
        WebCore::GraphicsContextGLANGLE::bindTexture(v274);
LABEL_527:
        if (*(v274 + 2) != 1)
        {
          --*(v274 + 2);
          goto LABEL_461;
        }

        goto LABEL_705;
      case 0x494:
        IPC::Decoder::decode<std::tuple<float,float,float,float>>(buf, a3);
        if (buf[16] == 1)
        {
          WebKit::RemoteGraphicsContextGL::blendColor(this, *buf, *&buf[4], *&buf[8], *&buf[12]);
        }

        goto LABEL_461;
      case 0x495:
        if ((IPC::Decoder::decode<std::tuple<unsigned int>>(a3) & 0x100000000) == 0)
        {
          goto LABEL_461;
        }

        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::blendEquation(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::blendEquation(0);
        goto LABEL_461;
      case 0x496:
        IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
        if ((v164 & 1) == 0)
        {
          goto LABEL_461;
        }

        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::blendEquationSeparate(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::blendEquationSeparate(0);
        goto LABEL_461;
      case 0x499:
        IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
        if ((v108 & 1) == 0)
        {
          goto LABEL_461;
        }

        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::blendFunc(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::blendFunc(0);
        goto LABEL_461;
      case 0x49A:
        IPC::Decoder::decode<std::tuple<unsigned int,unsigned int,unsigned int,unsigned int>>(buf, a3);
        if (buf[16] == 1)
        {
          WebKit::RemoteGraphicsContextGL::blendFuncSeparate(this, *buf, *&buf[4], *&buf[8], *&buf[12]);
        }

        goto LABEL_461;
      case 0x4A1:
        if ((IPC::Decoder::decode<std::tuple<unsigned int>>(a3) & 0x100000000) == 0)
        {
          goto LABEL_461;
        }

        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::clear(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::clear(0);
        goto LABEL_461;
      case 0x4A6:
        IPC::Decoder::decode<std::tuple<float,float,float,float>>(buf, a3);
        if (buf[16] == 1)
        {
          WebKit::RemoteGraphicsContextGL::clearColor(this, *buf, *&buf[4], *&buf[8], *&buf[12]);
        }

        goto LABEL_461;
      case 0x4A7:
        v158 = IPC::Decoder::decode<std::tuple<float>>(a3);
        if ((v158 & 0x100000000) == 0)
        {
          goto LABEL_461;
        }

        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::clearDepth(v6, *&v158);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::clearDepth(0, *&v158);
        goto LABEL_461;
      case 0x4A8:
        if ((IPC::Decoder::decode<std::tuple<int>>(a3) & 0x100000000) == 0)
        {
          goto LABEL_461;
        }

        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::clearStencil(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::clearStencil(0);
        goto LABEL_461;
      case 0x4AA:
        v171 = *(a3 + 1);
        v172 = *(a3 + 2);
        v173 = *a3;
        if (v171 <= &v172[-*a3])
        {
          *a3 = 0;
          *(a3 + 1) = 0;
          v1684 = *(a3 + 3);
          if (v1684)
          {
            if (v171)
            {
              (*(*v1684 + 16))(v1684);
              v171 = *(a3 + 1);
            }
          }

          else
          {
            v171 = 0;
          }
        }

        else
        {
          v174 = v172 + 1;
          *(a3 + 2) = v172 + 1;
          if (v172)
          {
            v175 = *v172;
            if (v175 >= 2)
            {
              goto LABEL_2876;
            }

            if (v171 > &v174[-v173])
            {
              v176 = v172 + 2;
              *(a3 + 2) = v172 + 2;
              if (v172 == -1)
              {
                goto LABEL_2941;
              }

              v177 = *v174;
              if (v177 >= 2)
              {
                goto LABEL_2876;
              }

              if (v171 <= &v176[-v173])
              {
                goto LABEL_2824;
              }

              v178 = v172 + 3;
              *(a3 + 2) = v172 + 3;
              if (v172 == -2)
              {
LABEL_2941:
                v1658 = v171;
                v1659 = v173;
                goto LABEL_2826;
              }

              v179 = *v176;
              if (v179 >= 2)
              {
                goto LABEL_2876;
              }

              if (v171 > &v178[-v173])
              {
                *(a3 + 2) = v172 + 4;
                if (v172 != -3)
                {
                  v180 = *v178;
                  if (v180 < 2)
                  {
                    WebKit::RemoteGraphicsContextGL::colorMask(this, v175 & 1, v177 & 1, v179 & 1, v180 != 0);
                    goto LABEL_461;
                  }

LABEL_2876:
                  *a3 = 0;
                  *(a3 + 1) = 0;
                  v1686 = *(a3 + 3);
                  if (v1686 && v171)
                  {
                    (*(*v1686 + 16))(v1686, v173);
                  }

                  v771 = *a3;
                  v1490 = *(a3 + 1);
                  *a3 = 0;
                  *(a3 + 1) = 0;
                  v773 = *(a3 + 3);
                  if (!v773)
                  {
                    goto LABEL_461;
                  }

LABEL_2620:
                  if (!v1490)
                  {
LABEL_461:
                    if (atomic_fetch_add(this + 4, 0xFFFFFFFF) == 1)
                    {
                      atomic_store(1u, this + 4);
                      (*(*(this + 1) + 8))(this + 2);
                    }

                    return;
                  }

LABEL_2888:
                  (*(*v773 + 16))(v773, v771);
                  goto LABEL_461;
                }

                goto LABEL_2941;
              }
            }

LABEL_2824:
            v1658 = 0;
            v1659 = 0;
            *a3 = 0;
            *(a3 + 1) = 0;
            v1660 = *(a3 + 3);
            if (v1660)
            {
              (*(*v1660 + 16))(v1660);
              v1659 = *a3;
              v1658 = *(a3 + 1);
            }

LABEL_2826:
            *a3 = 0;
            *(a3 + 1) = 0;
            v1661 = *(a3 + 3);
            if (v1661 && v1658)
            {
              (*(*v1661 + 16))(v1661, v1659, v1658);
LABEL_3081:
              v173 = *a3;
              v171 = *(a3 + 1);
              goto LABEL_2876;
            }

            goto LABEL_2874;
          }
        }

        *a3 = 0;
        *(a3 + 1) = 0;
        v1685 = *(a3 + 3);
        if (v1685)
        {
          if (v171)
          {
            (*(*v1685 + 16))(v1685);
            goto LABEL_3081;
          }

LABEL_2875:
          v173 = 0;
          goto LABEL_2876;
        }

LABEL_2874:
        v171 = 0;
        goto LABEL_2875;
      case 0x4AC:
        v170 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
        if ((v170 & 0x100000000) == 0)
        {
          goto LABEL_461;
        }

        *buf = v170;
        if (v170 > 0xFFFFFFFD)
        {
          goto LABEL_461;
        }

        if (v170)
        {
          *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
        }

        v275 = *(this + 7);
        if (v275)
        {
          ++*(v275 + 2);
          WebCore::GraphicsContextGLANGLE::compileShader(v275);
          goto LABEL_537;
        }

        WebCore::GraphicsContextGLANGLE::compileShader(0);
        goto LABEL_461;
      case 0x4B6:
        v78 = *(a3 + 1);
        v79 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v80 = *a3;
        v81 = v79 - *a3;
        v17 = v78 >= v81;
        v82 = v78 - v81;
        if (!v17 || v82 <= 3)
        {
          goto LABEL_2592;
        }

        *(a3 + 2) = v79 + 1;
        if (!v79)
        {
          goto LABEL_2594;
        }

        v84 = *v79;
        v85 = ((v79 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v78 < v85 - v80 || v78 - (v85 - v80) <= 3)
        {
          goto LABEL_2592;
        }

        *(a3 + 2) = v85 + 1;
        if (!v85)
        {
          goto LABEL_2594;
        }

        v87 = *v85;
        v88 = ((v85 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v78 < v88 - v80 || v78 - (v88 - v80) <= 3)
        {
          goto LABEL_2592;
        }

        *(a3 + 2) = v88 + 1;
        if (!v88)
        {
          goto LABEL_2594;
        }

        v90 = *v88;
        v91 = ((v88 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v78 < v91 - v80 || v78 - (v91 - v80) <= 3)
        {
          goto LABEL_2592;
        }

        *(a3 + 2) = v91 + 1;
        if (!v91)
        {
          goto LABEL_2594;
        }

        v93 = *v91;
        v94 = ((v91 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v78 < v94 - v80 || v78 - (v94 - v80) <= 3)
        {
          goto LABEL_2592;
        }

        *(a3 + 2) = v94 + 1;
        if (!v94)
        {
          goto LABEL_2594;
        }

        v96 = *v94;
        v97 = ((v94 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v78 < v97 - v80 || v78 - (v97 - v80) <= 3)
        {
          goto LABEL_2592;
        }

        *(a3 + 2) = v97 + 1;
        if (!v97)
        {
          goto LABEL_2594;
        }

        v99 = *v97;
        v100 = ((v97 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v78 < v100 - v80 || v78 - (v100 - v80) <= 3)
        {
          goto LABEL_2592;
        }

        *(a3 + 2) = v100 + 1;
        if (!v100)
        {
          goto LABEL_2594;
        }

        v101 = *v100;
        v102 = ((v100 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v78 < v102 - v80 || v78 - (v102 - v80) <= 3)
        {
LABEL_2592:
          *a3 = 0;
          *(a3 + 1) = 0;
          v1491 = *(a3 + 3);
          if (v1491)
          {
            if (v78)
            {
              (*(*v1491 + 16))(v1491);
              v78 = *(a3 + 1);
            }
          }

          else
          {
            v78 = 0;
          }
        }

        else
        {
          *(a3 + 2) = v102 + 1;
          if (v102)
          {
            WebKit::RemoteGraphicsContextGL::copyTexImage2D(this, v84, v87, v90, v93, v96, v99, v101, *v102);
            goto LABEL_461;
          }
        }

LABEL_2594:
        *a3 = 0;
        *(a3 + 1) = 0;
        v1492 = *(a3 + 3);
        if (v1492 && v78)
        {
          (*(*v1492 + 16))(v1492);
        }

        v771 = *a3;
        v1490 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v773 = *(a3 + 3);
        if (v773)
        {
          goto LABEL_2620;
        }

        goto LABEL_461;
      case 0x4B7:
        v111 = *(a3 + 1);
        v112 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v113 = *a3;
        v114 = v112 - *a3;
        v17 = v111 >= v114;
        v115 = v111 - v114;
        if (!v17 || v115 <= 3)
        {
          goto LABEL_2587;
        }

        *(a3 + 2) = v112 + 1;
        if (!v112)
        {
          goto LABEL_2589;
        }

        v117 = *v112;
        v118 = ((v112 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v111 < v118 - v113 || v111 - (v118 - v113) <= 3)
        {
          goto LABEL_2587;
        }

        *(a3 + 2) = v118 + 1;
        if (!v118)
        {
          goto LABEL_2589;
        }

        v120 = *v118;
        v121 = ((v118 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v111 < v121 - v113 || v111 - (v121 - v113) <= 3)
        {
          goto LABEL_2587;
        }

        *(a3 + 2) = v121 + 1;
        if (!v121)
        {
          goto LABEL_2589;
        }

        v123 = *v121;
        v124 = ((v121 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v111 < v124 - v113 || v111 - (v124 - v113) <= 3)
        {
          goto LABEL_2587;
        }

        *(a3 + 2) = v124 + 1;
        if (!v124)
        {
          goto LABEL_2589;
        }

        v126 = *v124;
        v127 = ((v124 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v111 < v127 - v113 || v111 - (v127 - v113) <= 3)
        {
          goto LABEL_2587;
        }

        *(a3 + 2) = v127 + 1;
        if (!v127)
        {
          goto LABEL_2589;
        }

        v129 = *v127;
        v130 = ((v127 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v111 < v130 - v113 || v111 - (v130 - v113) <= 3)
        {
          goto LABEL_2587;
        }

        *(a3 + 2) = v130 + 1;
        if (!v130)
        {
          goto LABEL_2589;
        }

        v132 = *v130;
        v133 = ((v130 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v111 < v133 - v113 || v111 - (v133 - v113) <= 3)
        {
          goto LABEL_2587;
        }

        *(a3 + 2) = v133 + 1;
        if (!v133)
        {
          goto LABEL_2589;
        }

        v134 = *v133;
        v135 = ((v133 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v111 < v135 - v113 || v111 - (v135 - v113) <= 3)
        {
LABEL_2587:
          *a3 = 0;
          *(a3 + 1) = 0;
          v1488 = *(a3 + 3);
          if (v1488)
          {
            if (v111)
            {
              (*(*v1488 + 16))(v1488);
              v111 = *(a3 + 1);
            }
          }

          else
          {
            v111 = 0;
          }
        }

        else
        {
          *(a3 + 2) = v135 + 1;
          if (v135)
          {
            WebKit::RemoteGraphicsContextGL::copyTexSubImage2D(this, v117, v120, v123, v126, v129, v132, v134, *v135);
            goto LABEL_461;
          }
        }

LABEL_2589:
        *a3 = 0;
        *(a3 + 1) = 0;
        v1489 = *(a3 + 3);
        if (v1489 && v111)
        {
          (*(*v1489 + 16))(v1489);
        }

        v771 = *a3;
        v1490 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v773 = *(a3 + 3);
        if (v773)
        {
          goto LABEL_2620;
        }

        goto LABEL_461;
      case 0x4B9:
        v201 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
        if ((v201 & 0x100000000) == 0)
        {
          goto LABEL_461;
        }

        LODWORD(v1797[0]) = v201;
        if (v201 > 0xFFFFFFFD)
        {
          goto LABEL_461;
        }

        v104 = *(this + 7);
        if (v104)
        {
          ++*(v104 + 2);
          Buffer = WebCore::GraphicsContextGLANGLE::createBuffer(v104);
          goto LABEL_395;
        }

        Framebuffer = WebCore::GraphicsContextGLANGLE::createBuffer(0);
        goto LABEL_1481;
      case 0x4BA:
        v103 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
        if ((v103 & 0x100000000) == 0)
        {
          goto LABEL_461;
        }

        LODWORD(v1797[0]) = v103;
        if (v103 > 0xFFFFFFFD)
        {
          goto LABEL_461;
        }

        v104 = *(this + 7);
        if (v104)
        {
          ++*(v104 + 2);
          Buffer = WebCore::GraphicsContextGLANGLE::createFramebuffer(v104);
          goto LABEL_395;
        }

        Framebuffer = WebCore::GraphicsContextGLANGLE::createFramebuffer(0);
        goto LABEL_1481;
      case 0x4BB:
        v110 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
        if ((v110 & 0x100000000) == 0)
        {
          goto LABEL_461;
        }

        LODWORD(v1797[0]) = v110;
        if (v110 > 0xFFFFFFFD)
        {
          goto LABEL_461;
        }

        v104 = *(this + 7);
        if (v104)
        {
          ++*(v104 + 2);
          Buffer = WebCore::GraphicsContextGLANGLE::createProgram(v104);
          goto LABEL_395;
        }

        Framebuffer = WebCore::GraphicsContextGLANGLE::createProgram(0);
        goto LABEL_1481;
      case 0x4BE:
        v107 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
        if ((v107 & 0x100000000) == 0)
        {
          goto LABEL_461;
        }

        LODWORD(v1797[0]) = v107;
        if (v107 > 0xFFFFFFFD)
        {
          goto LABEL_461;
        }

        v104 = *(this + 7);
        if (v104)
        {
          ++*(v104 + 2);
          Buffer = WebCore::GraphicsContextGLANGLE::createRenderbuffer(v104);
          goto LABEL_395;
        }

        Framebuffer = WebCore::GraphicsContextGLANGLE::createRenderbuffer(0);
        goto LABEL_1481;
      case 0x4C0:
        v151 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
        if ((v152 & 1) == 0)
        {
          goto LABEL_461;
        }

        LODWORD(v1797[0]) = v151;
        if (v151 > 0xFFFFFFFD)
        {
          goto LABEL_461;
        }

        v104 = *(this + 7);
        if (v104)
        {
          ++*(v104 + 2);
          Buffer = WebCore::GraphicsContextGLANGLE::createShader(v104);
          goto LABEL_395;
        }

        Framebuffer = WebCore::GraphicsContextGLANGLE::createShader(0);
        goto LABEL_1481;
      case 0x4C1:
        v106 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
        if ((v106 & 0x100000000) == 0)
        {
          goto LABEL_461;
        }

        LODWORD(v1797[0]) = v106;
        if (v106 > 0xFFFFFFFD)
        {
          goto LABEL_461;
        }

        v104 = *(this + 7);
        if (v104)
        {
          ++*(v104 + 2);
          Buffer = WebCore::GraphicsContextGLANGLE::createTexture(v104);
LABEL_395:
          v202 = Buffer;
          if (*(v104 + 2) == 1)
          {
            (*(*v104 + 16))(v104);
          }

          else
          {
            --*(v104 + 2);
          }
        }

        else
        {
          Framebuffer = WebCore::GraphicsContextGLANGLE::createTexture(0);
LABEL_1481:
          v202 = Framebuffer;
        }

        LODWORD(v1802) = v202;
        if (v202)
        {
          goto LABEL_398;
        }

        goto LABEL_461;
      case 0x4C4:
        if ((IPC::Decoder::decode<std::tuple<unsigned int>>(a3) & 0x100000000) == 0)
        {
          goto LABEL_461;
        }

        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::cullFace(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::cullFace(0);
        goto LABEL_461;
      case 0x4C5:
        v225 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
        if ((v225 & 0x100000000) == 0 || (v225 + 2) < 3)
        {
          goto LABEL_461;
        }

        WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(this + 27, v225);
        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::deleteBuffer(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::deleteBuffer(0);
        goto LABEL_461;
      case 0x4C7:
        v109 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
        if ((v109 & 0x100000000) == 0 || (v109 + 2) < 3)
        {
          goto LABEL_461;
        }

        WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(this + 27, v109);
        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::deleteFramebuffer(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::deleteFramebuffer(0);
        goto LABEL_461;
      case 0x4C8:
        v147 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
        if ((v147 & 0x100000000) == 0 || (v147 + 2) < 3)
        {
          goto LABEL_461;
        }

        WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(this + 27, v147);
        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::deleteProgram(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::deleteProgram(0);
        goto LABEL_461;
      case 0x4CB:
        v159 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
        if ((v159 & 0x100000000) == 0 || (v159 + 2) < 3)
        {
          goto LABEL_461;
        }

        WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(this + 27, v159);
        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::deleteRenderbuffer(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::deleteRenderbuffer(0);
        goto LABEL_461;
      case 0x4CD:
        v148 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
        if ((v148 & 0x100000000) == 0 || (v148 + 2) < 3)
        {
          goto LABEL_461;
        }

        WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(this + 27, v148);
        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::deleteShader(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::deleteShader(0);
        goto LABEL_461;
      case 0x4CF:
        v234 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
        if ((v234 & 0x100000000) == 0 || (v234 + 2) < 3)
        {
          goto LABEL_461;
        }

        WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(this + 27, v234);
        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::deleteTexture(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::deleteTexture(0);
        goto LABEL_461;
      case 0x4D2:
        if ((IPC::Decoder::decode<std::tuple<unsigned int>>(a3) & 0x100000000) == 0)
        {
          goto LABEL_461;
        }

        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::depthFunc(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::depthFunc(0);
        goto LABEL_461;
      case 0x4D3:
        if ((IPC::Decoder::decode<std::tuple<BOOL>>(a3) & 0x100) == 0)
        {
          goto LABEL_461;
        }

        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::depthMask(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::depthMask(0);
        goto LABEL_461;
      case 0x4D4:
        v232 = IPC::Decoder::decode<std::tuple<float,float>>(a3);
        if ((v233 & 1) == 0)
        {
          goto LABEL_461;
        }

        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::depthRange(v6, *&v232, *(&v232 + 1));
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::depthRange(0, *&v232, *(&v232 + 1));
        goto LABEL_461;
      case 0x4D5:
        v75 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
        if ((v76 & 1) == 0)
        {
          goto LABEL_461;
        }

        v77 = v75;
        LODWORD(v1797[0]) = HIDWORD(v75);
        *buf = v75;
        if (v75 > 0xFFFFFFFD)
        {
          goto LABEL_461;
        }

        if (v75)
        {
          *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
        }

        if (v77 > 0xFFFFFFFDFFFFFFFFLL)
        {
          goto LABEL_461;
        }

        if (HIDWORD(v77))
        {
          LODWORD(v1797[0]) = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, v1797);
        }

        v275 = *(this + 7);
        if (v275)
        {
          ++*(v275 + 2);
          WebCore::GraphicsContextGLANGLE::detachShader(v275);
          goto LABEL_537;
        }

        WebCore::GraphicsContextGLANGLE::detachShader(0);
        goto LABEL_461;
      case 0x4D6:
        if ((IPC::Decoder::decode<std::tuple<unsigned int>>(a3) & 0x100000000) == 0)
        {
          goto LABEL_461;
        }

        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::disable(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::disable(0);
        goto LABEL_461;
      case 0x4D7:
        if ((IPC::Decoder::decode<std::tuple<unsigned int>>(a3) & 0x100000000) == 0)
        {
          goto LABEL_461;
        }

        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::disableVertexAttribArray(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::disableVertexAttribArray(0);
        goto LABEL_461;
      case 0x4D9:
        v65 = *(a3 + 1);
        v66 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v67 = *a3;
        v68 = v66 - *a3;
        v17 = v65 >= v68;
        v69 = v65 - v68;
        if (!v17 || v69 <= 3)
        {
          goto LABEL_2606;
        }

        *(a3 + 2) = v66 + 4;
        if (!v66)
        {
          goto LABEL_2608;
        }

        v71 = (v66 + 7) & 0xFFFFFFFFFFFFFFFCLL;
        if (v65 < v71 - v67 || v65 - (v71 - v67) <= 3)
        {
          goto LABEL_2606;
        }

        *(a3 + 2) = v71 + 4;
        if (!v71)
        {
          goto LABEL_2608;
        }

        v73 = (v71 + 7) & 0xFFFFFFFFFFFFFFFCLL;
        if (v65 >= v73 - v67 && v65 - (v73 - v67) > 3)
        {
          *(a3 + 2) = v73 + 4;
          if (v73)
          {
            v6 = *(this + 7);
            if (v6)
            {
              ++*(v6 + 2);
              WebCore::GraphicsContextGLANGLE::drawArrays(v6);
              goto LABEL_459;
            }

            WebCore::GraphicsContextGLANGLE::drawArrays(0);
            goto LABEL_461;
          }
        }

        else
        {
LABEL_2606:
          *a3 = 0;
          *(a3 + 1) = 0;
          v1498 = *(a3 + 3);
          if (v1498)
          {
            if (v65)
            {
              (*(*v1498 + 16))(v1498);
              v65 = *(a3 + 1);
            }
          }

          else
          {
            v65 = 0;
          }
        }

LABEL_2608:
        *a3 = 0;
        *(a3 + 1) = 0;
        v1499 = *(a3 + 3);
        if (v1499 && v65)
        {
          (*(*v1499 + 16))(v1499);
        }

        v771 = *a3;
        v1490 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v773 = *(a3 + 3);
        if (!v773)
        {
          goto LABEL_461;
        }

        goto LABEL_2620;
      case 0x4DC:
        IPC::Decoder::decode<std::tuple<std::span<unsigned int const,18446744073709551615ul>>>(a3, buf);
        if (buf[16] == 1)
        {
          WebKit::RemoteGraphicsContextGL::drawBuffers(this, *buf, *&buf[8]);
        }

        goto LABEL_461;
      case 0x4DD:
        IPC::Decoder::decode<std::tuple<std::span<unsigned int const,18446744073709551615ul>>>(a3, buf);
        if (buf[16] == 1)
        {
          WebKit::RemoteGraphicsContextGL::drawBuffersEXT(this, *buf, *&buf[8]);
        }

        goto LABEL_461;
      case 0x4DE:
        v186 = *(a3 + 1);
        v187 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v188 = *a3;
        v189 = v187 - *a3;
        v17 = v186 >= v189;
        v190 = v186 - v189;
        if (!v17 || v190 <= 3)
        {
          goto LABEL_2616;
        }

        *(a3 + 2) = v187 + 1;
        if (!v187)
        {
          goto LABEL_2618;
        }

        v192 = *v187;
        v193 = ((v187 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v186 < v193 - v188 || v186 - (v193 - v188) <= 3)
        {
          goto LABEL_2616;
        }

        *(a3 + 2) = v193 + 1;
        if (!v193)
        {
          goto LABEL_2618;
        }

        v195 = *v193;
        v196 = ((v193 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v186 < v196 - v188 || v186 - (v196 - v188) <= 3)
        {
          goto LABEL_2616;
        }

        *(a3 + 2) = v196 + 1;
        if (!v196)
        {
          goto LABEL_2618;
        }

        v198 = *v196;
        v199 = ((v196 + 11) & 0xFFFFFFFFFFFFFFF8);
        if (v186 >= v199 - v188 && v186 - (v199 - v188) > 7)
        {
          *(a3 + 2) = v199 + 1;
          if (v199)
          {
            WebKit::RemoteGraphicsContextGL::drawElements(this, v192, v195, v198, *v199);
            goto LABEL_461;
          }
        }

        else
        {
LABEL_2616:
          *a3 = 0;
          *(a3 + 1) = 0;
          v1502 = *(a3 + 3);
          if (v1502)
          {
            if (v186)
            {
              (*(*v1502 + 16))(v1502);
              v186 = *(a3 + 1);
            }
          }

          else
          {
            v186 = 0;
          }
        }

LABEL_2618:
        *a3 = 0;
        *(a3 + 1) = 0;
        v1503 = *(a3 + 3);
        if (v1503 && v186)
        {
          (*(*v1503 + 16))(v1503);
        }

        v771 = *a3;
        v1490 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v773 = *(a3 + 3);
        if (v773)
        {
          goto LABEL_2620;
        }

        goto LABEL_461;
      case 0x4E2:
        if ((IPC::Decoder::decode<std::tuple<unsigned int>>(a3) & 0x100000000) == 0)
        {
          goto LABEL_461;
        }

        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::enable(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::enable(0);
        goto LABEL_461;
      case 0x4E3:
        if ((IPC::Decoder::decode<std::tuple<unsigned int>>(a3) & 0x100000000) == 0)
        {
          goto LABEL_461;
        }

        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::enableVertexAttribArray(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::enableVertexAttribArray(0);
        goto LABEL_461;
      case 0x4E8:
        IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a3, buf);
        if (buf[8] & 1) != 0 || (v777 = *a3, v778 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v779 = *(a3 + 3)) != 0) && v778 && ((*(*v779 + 16))(v779, v777), (buf[8]))
        {
          WebKit::RemoteGraphicsContextGL::ensureExtensionEnabled(this);
          if (buf[8])
          {
            v146 = *buf;
            *buf = 0;
            if (v146)
            {
              if (atomic_fetch_add_explicit(v146, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                goto LABEL_2466;
              }
            }
          }
        }

        goto LABEL_461;
      case 0x4E9:
        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::finish(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::finish(0);
        goto LABEL_461;
      case 0x4EA:
        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::flush(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::flush(0);
        goto LABEL_461;
      case 0x4EB:
        IPC::Decoder::decode<std::tuple<unsigned int,unsigned int,unsigned int,unsigned int>>(buf, a3);
        if (buf[16] == 1)
        {
          WebKit::RemoteGraphicsContextGL::framebufferRenderbuffer(this, *buf, *&buf[4], *&buf[8], *&buf[12]);
        }

        goto LABEL_461;
      case 0x4EC:
        v47 = *(a3 + 1);
        v48 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v49 = *a3;
        v50 = v48 - *a3;
        v17 = v47 >= v50;
        v51 = v47 - v50;
        if (!v17 || v51 <= 3)
        {
          goto LABEL_2611;
        }

        *(a3 + 2) = v48 + 1;
        if (!v48)
        {
          goto LABEL_2613;
        }

        v53 = *v48;
        v54 = ((v48 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v47 < v54 - v49 || v47 - (v54 - v49) <= 3)
        {
          goto LABEL_2611;
        }

        *(a3 + 2) = v54 + 1;
        if (!v54)
        {
          goto LABEL_2613;
        }

        v56 = *v54;
        v57 = ((v54 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v47 < v57 - v49 || v47 - (v57 - v49) <= 3)
        {
          goto LABEL_2611;
        }

        *(a3 + 2) = v57 + 1;
        if (!v57)
        {
          goto LABEL_2613;
        }

        v59 = *v57;
        v60 = ((v57 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v47 < v60 - v49 || v47 - (v60 - v49) <= 3)
        {
          goto LABEL_2611;
        }

        *(a3 + 2) = v60 + 1;
        if (!v60)
        {
          goto LABEL_2613;
        }

        v62 = *v60;
        v63 = ((v60 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v47 >= v63 - v49 && v47 - (v63 - v49) > 3)
        {
          *(a3 + 2) = v63 + 1;
          if (v63)
          {
            WebKit::RemoteGraphicsContextGL::framebufferTexture2D(this, v53, v56, v59, v62, *v63);
            goto LABEL_461;
          }
        }

        else
        {
LABEL_2611:
          *a3 = 0;
          *(a3 + 1) = 0;
          v1500 = *(a3 + 3);
          if (v1500)
          {
            if (v47)
            {
              (*(*v1500 + 16))(v1500);
              v47 = *(a3 + 1);
            }
          }

          else
          {
            v47 = 0;
          }
        }

LABEL_2613:
        *a3 = 0;
        *(a3 + 1) = 0;
        v1501 = *(a3 + 3);
        if (v1501 && v47)
        {
          (*(*v1501 + 16))(v1501);
        }

        v771 = *a3;
        v1490 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v773 = *(a3 + 3);
        if (v773)
        {
          goto LABEL_2620;
        }

        goto LABEL_461;
      case 0x4EE:
        if ((IPC::Decoder::decode<std::tuple<unsigned int>>(a3) & 0x100000000) == 0)
        {
          goto LABEL_461;
        }

        v6 = *(this + 7);
        if (v6)
        {
          ++*(v6 + 2);
          WebCore::GraphicsContextGLANGLE::frontFace(v6);
          goto LABEL_459;
        }

        WebCore::GraphicsContextGLANGLE::frontFace(0);
        goto LABEL_461;
      case 0x4EF:
        if ((IPC::Decoder::decode<std::tuple<unsigned int>>(a3) & 0x100000000) == 0)
        {
          goto LABEL_461;
        }

        v6 = *(this + 7);
        if (!v6)
        {
          WebCore::GraphicsContextGLANGLE::generateMipmap(0);
          goto LABEL_461;
        }

        ++*(v6 + 2);
        WebCore::GraphicsContextGLANGLE::generateMipmap(v6);
LABEL_459:
        if (*(v6 + 2) != 1)
        {
          --*(v6 + 2);
          goto LABEL_461;
        }

        goto LABEL_552;
      case 0x4F1:
        v226 = *(a3 + 1);
        v227 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v228 = v227 - *a3;
        v17 = v226 >= v228;
        v229 = v226 - v228;
        if (!v17 || v229 <= 3)
        {
          *a3 = 0;
          *(a3 + 1) = 0;
          v1656 = *(a3 + 3);
          if (v1656)
          {
            if (v226)
            {
              (*(*v1656 + 16))(v1656);
              v226 = *(a3 + 1);
            }
          }

          else
          {
            v226 = 0;
          }

          goto LABEL_2821;
        }

        *(a3 + 2) = v227 + 1;
        if (!v227)
        {
LABEL_2821:
          *a3 = 0;
          *(a3 + 1) = 0;
          v1657 = *(a3 + 3);
          if (v1657 && v226)
          {
            (*(*v1657 + 16))(v1657);
          }

          goto LABEL_1371;
        }

        v231 = *v227;
        IPC::ArgumentCoder<std::span<unsigned int const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, buf);
        if (buf[16] & 1) != 0 || (v774 = *a3, v775 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v776 = *(a3 + 3)) != 0) && v775 && ((*(*v776 + 16))(v776, v774), (buf[16]))
        {
          WebKit::RemoteGraphicsContextGL::invalidateFramebuffer(this, v231, *buf, *&buf[8]);
          goto LABEL_461;
        }

LABEL_1371:
        v771 = *a3;
        v772 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v773 = *(a3 + 3);
        if (!v773)
        {
          goto LABEL_461;
        }

        goto LABEL_2887;
      case 0x4F2:
        v31 = *(a3 + 1);
        v32 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v33 = v32 - *a3;
        v17 = v31 >= v33;
        v34 = v31 - v33;
        if (!v17 || v34 <= 3)
        {
          goto LABEL_2601;
        }

        *(a3 + 2) = v32 + 1;
        if (!v32)
        {
          goto LABEL_2603;
        }

        v36 = *v32;
        IPC::ArgumentCoder<std::span<unsigned int const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, buf);
        if ((buf[16] & 1) == 0)
        {
          v768 = *a3;
          v769 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v770 = *(a3 + 3);
          if (!v770)
          {
            goto LABEL_1368;
          }

          if (!v769)
          {
            goto LABEL_1368;
          }

          (*(*v770 + 16))(v770, v768);
          if ((buf[16] & 1) == 0)
          {
            goto LABEL_1368;
          }
        }

        v31 = *(a3 + 1);
        v37 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v38 = *a3;
        v39 = v37 - *a3;
        v17 = v31 >= v39;
        v40 = v31 - v39;
        if (!v17 || v40 <= 3)
        {
          goto LABEL_2601;
        }

        *(a3 + 2) = v37 + 1;
        if (!v37)
        {
          goto LABEL_2603;
        }

        v41 = *v37;
        v42 = ((v37 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v31 < v42 - v38 || v31 - (v42 - v38) <= 3)
        {
          goto LABEL_2601;
        }

        *(a3 + 2) = v42 + 1;
        if (!v42)
        {
          goto LABEL_2603;
        }

        v43 = *v42;
        v44 = ((v42 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v31 < v44 - v38 || v31 - (v44 - v38) <= 3)
        {
          goto LABEL_2601;
        }

        *(a3 + 2) = v44 + 1;
        if (!v44)
        {
          goto LABEL_2603;
        }

        v45 = *v44;
        v46 = ((v44 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v31 < v46 - v38 || v31 - (v46 - v38) <= 3)
        {
LABEL_2601:
          *a3 = 0;
          *(a3 + 1) = 0;
          v1496 = *(a3 + 3);
          if (v1496)
          {
            if (v31)
            {
              (*(*v1496 + 16))(v1496);
              v31 = *(a3 + 1);
            }
          }

          else
          {
            v31 = 0;
          }
        }

        else
        {
          *(a3 + 2) = v46 + 1;
          if (v46)
          {
            WebKit::RemoteGraphicsContextGL::invalidateSubFramebuffer(this, v36, *buf, *&buf[8], v41, v43, v45, *v46);
            goto LABEL_461;
          }
        }

LABEL_2603:
        *a3 = 0;
        *(a3 + 1) = 0;
        v1497 = *(a3 + 3);
        if (v1497 && v31)
        {
          (*(*v1497 + 16))(v1497);
        }

LABEL_1368:
        v771 = *a3;
        v772 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v773 = *(a3 + 3);
        if (v773)
        {
          goto LABEL_2887;
        }

        goto LABEL_461;
      case 0x4F5:
        v13 = *(a3 + 1);
        v165 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v166 = v165 - *a3;
        v17 = v13 >= v166;
        v167 = v13 - v166;
        if (!v17 || v167 <= 3)
        {
          goto LABEL_2739;
        }

        *(a3 + 2) = v165 + 1;
        if (!v165)
        {
          goto LABEL_2774;
        }

        v169 = *v165;
        IPC::Decoder::decode<IPC::ArrayReferenceTuple<int,int>>(v1797, a3);
        if ((BYTE8(v1798) & 1) == 0)
        {
          goto LABEL_2775;
        }

        *buf = v169;
        *&buf[8] = *v1797;
        *&buf[24] = v1798;
        buf[32] = 1;
        WebKit::RemoteGraphicsContextGL::multiDrawArraysANGLE(this, v169, &buf[8]);
        goto LABEL_461;
      case 0x4F6:
        v13 = *(a3 + 1);
        v181 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v182 = v181 - *a3;
        v17 = v13 >= v182;
        v183 = v13 - v182;
        if (!v17 || v183 <= 3)
        {
          goto LABEL_2739;
        }

        *(a3 + 2) = v181 + 1;
        if (!v181)
        {
          goto LABEL_2774;
        }

        v185 = *v181;
        IPC::Decoder::decode<IPC::ArrayReferenceTuple<int,int,int>>(v1797, a3);
        if ((v1799 & 1) == 0)
        {
          goto LABEL_2775;
        }

        *buf = v185;
        *&buf[8] = *v1797;
        *&buf[24] = v1798;
        buf[40] = 1;
        WebKit::RemoteGraphicsContextGL::multiDrawArraysInstancedANGLE(this, v185, &buf[8]);
        goto LABEL_461;
      case 0x4F7:
        v13 = *(a3 + 1);
        v14 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v15 = *a3;
        v16 = v14 - *a3;
        v17 = v13 >= v16;
        v18 = v13 - v16;
        if (!v17 || v18 <= 3)
        {
          goto LABEL_2739;
        }

        *(a3 + 2) = v14 + 1;
        if (!v14)
        {
          goto LABEL_2774;
        }

        v20 = *v14;
        v21 = ((v14 + 11) & 0xFFFFFFFFFFFFFFF8);
        if (v13 < v21 - v15 || v13 - (v21 - v15) <= 7)
        {
          goto LABEL_2770;
        }

        *(a3 + 2) = v21 + 1;
        if (!v21)
        {
          goto LABEL_2772;
        }

        v23 = *v21;
        if (!*v21)
        {
          v30 = 0;
          v29 = 0;
          v27 = 0;
          v25 = 0;
LABEL_38:
          *buf = v20;
          *&buf[8] = v23;
          *&buf[16] = v25;
          *&buf[24] = v27;
          *&buf[32] = v29;
          *&buf[40] = v30;
          buf[48] = 1;
          WebKit::RemoteGraphicsContextGL::multiDrawArraysInstancedBaseInstanceANGLE(this, v20, &buf[8]);
          goto LABEL_461;
        }

        if (!(v23 >> 62))
        {
          v24 = IPC::Decoder::decodeSpan<unsigned int>(a3, v23);
          if (v24)
          {
            v25 = v24;
            v26 = IPC::Decoder::decodeSpan<unsigned int>(a3, v23);
            if (v26)
            {
              v27 = v26;
              v28 = IPC::Decoder::decodeSpan<unsigned int>(a3, v23);
              if (v28)
              {
                v29 = v28;
                v30 = IPC::Decoder::decodeSpan<unsigned int>(a3, v23);
                if (v30)
                {
                  goto LABEL_38;
                }
              }
            }
          }
        }

        goto LABEL_2773;
      case 0x4F8:
        v13 = *(a3 + 1);
        v216 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v217 = v216 - *a3;
        v17 = v13 >= v217;
        v218 = v13 - v217;
        if (!v17 || v218 <= 3)
        {
          goto LABEL_2739;
        }

        *(a3 + 2) = v216 + 1;
        if (!v216)
        {
          goto LABEL_2774;
        }

        v220 = *v216;
        IPC::Decoder::decode<IPC::ArrayReferenceTuple<int,int>>(v1797, a3);
        if (BYTE8(v1798) != 1)
        {
          goto LABEL_2775;
        }

        v13 = *(a3 + 1);
        v221 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v222 = v221 - *a3;
        v17 = v13 >= v222;
        v223 = v13 - v222;
        if (!v17 || v223 <= 3)
        {
          goto LABEL_2739;
        }

        *(a3 + 2) = v221 + 1;
        if (!v221)
        {
          goto LABEL_2774;
        }

        v224 = *v221;
        *buf = v220;
        *&buf[8] = *v1797;
        *&buf[24] = v1798;
        *&buf[32] = v224;
        buf[40] = 1;
        WebKit::RemoteGraphicsContextGL::multiDrawElementsANGLE(this, v220, &buf[8], v224);
        goto LABEL_461;
      case 0x4F9:
        v13 = *(a3 + 1);
        v203 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v204 = v203 - *a3;
        v17 = v13 >= v204;
        v205 = v13 - v204;
        if (!v17 || v205 <= 3)
        {
          goto LABEL_2739;
        }

        *(a3 + 2) = v203 + 1;
        if (!v203)
        {
          goto LABEL_2774;
        }

        v207 = *v203;
        IPC::Decoder::decode<IPC::ArrayReferenceTuple<int,int,int>>(v1797, a3);
        if (v1799 != 1)
        {
          goto LABEL_2775;
        }

        v13 = *(a3 + 1);
        v208 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v209 = v208 - *a3;
        v17 = v13 >= v209;
        v210 = v13 - v209;
        if (!v17 || v210 <= 3)
        {
          goto LABEL_2739;
        }

        *(a3 + 2) = v208 + 1;
        if (!v208)
        {
          goto LABEL_2774;
        }

        v211 = *v208;
        *buf = v207;
        *&buf[8] = *v1797;
        *&buf[24] = v1798;
        *&buf[40] = v211;
        buf[48] = 1;
        WebKit::RemoteGraphicsContextGL::multiDrawElementsInstancedANGLE(this, v207, &buf[8], v211);
        goto LABEL_461;
      case 0x4FA:
        v13 = *(a3 + 1);
        v237 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v238 = *a3;
        v239 = v237 - *a3;
        v17 = v13 >= v239;
        v240 = v13 - v239;
        if (!v17 || v240 <= 3)
        {
          goto LABEL_2739;
        }

        *(a3 + 2) = v237 + 1;
        if (!v237)
        {
          goto LABEL_2774;
        }

        v242 = *v237;
        v243 = ((v237 + 11) & 0xFFFFFFFFFFFFFFF8);
        if (v13 >= v243 - v238 && v13 - (v243 - v238) > 7)
        {
          v245 = v243 + 1;
          *(a3 + 2) = v243 + 1;
          if (v243)
          {
            v246 = *v243;
            if (*v243)
            {
              if (v246 >> 62 || (v247 = IPC::Decoder::decodeSpan<unsigned int>(a3, v246)) == 0 || (v248 = v247, (v249 = IPC::Decoder::decodeSpan<unsigned int>(a3, v246)) == 0) || (v250 = v249, (v251 = IPC::Decoder::decodeSpan<unsigned int>(a3, v246)) == 0) || (v252 = v251, (v253 = IPC::Decoder::decodeSpan<unsigned int>(a3, v246)) == 0) || (v254 = v253, (v255 = IPC::Decoder::decodeSpan<unsigned int>(a3, v246)) == 0))
              {
LABEL_2773:
                v13 = *(a3 + 1);
LABEL_2774:
                *a3 = 0;
                *(a3 + 1) = 0;
                v1631 = *(a3 + 3);
                if (v1631 && v13)
                {
                  (*(*v1631 + 16))(v1631);
                }

LABEL_2775:
                v1485 = *a3;
                v1632 = *(a3 + 1);
                *a3 = 0;
                *(a3 + 1) = 0;
                v1487 = *(a3 + 3);
                if (!v1487 || !v1632)
                {
                  goto LABEL_461;
                }

                goto LABEL_2926;
              }

              v256 = v246 & 0x3FFFFFFFFFFFFF00;
              v257 = v246;
              v13 = *(a3 + 1);
              v245 = *(a3 + 2);
              v238 = *a3;
            }

            else
            {
              v255 = 0;
              v257 = 0;
              v256 = 0;
              v254 = 0;
              v252 = 0;
              v250 = 0;
              v248 = 0;
            }

            v258 = ((v245 + 3) & 0xFFFFFFFFFFFFFFFCLL);
            if (v13 >= v258 - v238 && v13 - (v258 - v238) > 3)
            {
              *(a3 + 2) = v258 + 1;
              if (!v258)
              {
                goto LABEL_2774;
              }

              v260 = *v258;
              *buf = v242;
              *&buf[8] = v256 | v257;
              *&buf[16] = v248;
              *&buf[24] = v250;
              *&buf[32] = v252;
              *&buf[40] = v254;
              *&buf[48] = v255;
              v1805 = v260;
              LOBYTE(v1807) = 1;
              WebKit::RemoteGraphicsContextGL::multiDrawElementsInstancedBaseVertexBaseInstanceANGLE(this, v242, &buf[8], v260);
              goto LABEL_461;
            }

LABEL_2739:
            *a3 = 0;
            *(a3 + 1) = 0;
            v1628 = *(a3 + 3);
            if (!v1628)
            {
              v13 = 0;
              goto LABEL_2774;
            }

            if (v13)
            {
LABEL_3028:
              (*(*v1628 + 16))(v1628);
              goto LABEL_2773;
            }

            goto LABEL_2774;
          }
        }

        else
        {
LABEL_2770:
          *a3 = 0;
          *(a3 + 1) = 0;
          v1630 = *(a3 + 3);
          if (v1630)
          {
            if (v13)
            {
              (*(*v1630 + 16))(v1630);
              v13 = *(a3 + 1);
            }
          }

          else
          {
            v13 = 0;
          }
        }

LABEL_2772:
        *a3 = 0;
        *(a3 + 1) = 0;
        v1628 = *(a3 + 3);
        if (v1628 && v13)
        {
          goto LABEL_3028;
        }

        goto LABEL_2773;
      case 0x507:
        v235 = IPC::Decoder::decode<std::tuple<int,int>>(a3);
        if (v236)
        {
          WebKit::RemoteGraphicsContextGL::reshape(this, v235, SHIDWORD(v235));
        }

        goto LABEL_461;
      case 0x50E:
        IPC::Decoder::decode<std::tuple<WebCore::SharedMemoryHandle>>(a3, buf);
        if (buf[16] == 1)
        {
          WebKit::RemoteSampleBufferDisplayLayer::setSharedVideoFrameMemory(this, buf);
          if (buf[16])
          {
            goto LABEL_466;
          }
        }

        goto LABEL_461;
      case 0x50F:
        IPC::Decoder::decode<std::tuple<IPC::Semaphore>>(a3, buf);
        if (buf[8] != 1)
        {
          goto LABEL_461;
        }

        WebKit::RemoteSampleBufferDisplayLayer::setSharedVideoFrameSemaphore(this, buf);
        if ((buf[8] & 1) == 0)
        {
          goto LABEL_461;
        }

        IPC::Semaphore::destroy(buf);
LABEL_466:
        WTF::MachSendRight::~MachSendRight(buf);
        goto LABEL_461;
      case 0x511:
        v212 = *(a3 + 1);
        v213 = *(a3 + 2);
        v214 = *a3;
        if (v212 <= &v213[-*a3])
        {
          *a3 = 0;
          *(a3 + 1) = 0;
          v1687 = *(a3 + 3);
          if (v1687)
          {
            if (v212)
            {
              (*(*v1687 + 16))(v1687);
              v212 = *(a3 + 1);
            }
          }

          else
          {
            v212 = 0;
          }
        }

        else
        {
          *(a3 + 2) = v213 + 1;
          if (v213)
          {
            v215 = *v213;
            if (v215 < 3)
            {
              WebKit::RemoteGraphicsContextGL::simulateEventForTesting(this, v215, v215);
              goto LABEL_461;
            }

LABEL_2884:
            *a3 = 0;
            *(a3 + 1) = 0;
            v1689 = *(a3 + 3);
            if (!v1689)
            {
              goto LABEL_461;
            }

            if (!v212)
            {
              goto LABEL_461;
            }

            (*(*v1689 + 16))(v1689, v214);
            v771 = *a3;
            v772 = *(a3 + 1);
            v773 = *(a3 + 3);
            *a3 = 0;
            *(a3 + 1) = 0;
            if (!v773)
            {
              goto LABEL_461;
            }

LABEL_2887:
            if (!v772)
            {
              goto LABEL_461;
            }

            goto LABEL_2888;
          }
        }

        *a3 = 0;
        *(a3 + 1) = 0;
        v1688 = *(a3 + 3);
        if (v1688)
        {
          if (v212)
          {
            (*(*v1688 + 16))(v1688);
            v214 = *a3;
            v212 = *(a3 + 1);
            goto LABEL_2884;
          }
        }

        else
        {
          v212 = 0;
        }

        v214 = 0;
        goto LABEL_2884;
      default:
        if (*(a3 + 25) > 0x4B1u)
        {
          switch(*(a3 + 25))
          {
            case 0x4DA:
              v261 = *(a3 + 1);
              v262 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v263 = *a3;
              v264 = v262 - *a3;
              v17 = v261 >= v264;
              v265 = v261 - v264;
              if (!v17 || v265 <= 3)
              {
                goto LABEL_2861;
              }

              *(a3 + 2) = v262 + 1;
              if (!v262)
              {
                goto LABEL_2863;
              }

              v267 = *v262;
              v268 = ((v262 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v261 < v268 - v263 || v261 - (v268 - v263) <= 3)
              {
                goto LABEL_2861;
              }

              *(a3 + 2) = v268 + 1;
              if (!v268)
              {
                goto LABEL_2863;
              }

              v270 = *v268;
              v271 = ((v268 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v261 < v271 - v263 || v261 - (v271 - v263) <= 3)
              {
                goto LABEL_2861;
              }

              *(a3 + 2) = v271 + 1;
              if (!v271)
              {
                goto LABEL_2863;
              }

              v272 = *v271;
              v273 = ((v271 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v261 < v273 - v263 || v261 - (v273 - v263) <= 3)
              {
LABEL_2861:
                *a3 = 0;
                *(a3 + 1) = 0;
                v1680 = *(a3 + 3);
                if (v1680)
                {
                  if (v261)
                  {
                    (*(*v1680 + 16))(v1680);
                    v261 = *(a3 + 1);
                  }
                }

                else
                {
                  v261 = 0;
                }
              }

              else
              {
                *(a3 + 2) = v273 + 1;
                if (v273)
                {
                  WebKit::RemoteGraphicsContextGL::drawArraysInstanced(this, v267, v270, v272, *v273);
                  goto LABEL_461;
                }
              }

LABEL_2863:
              *a3 = 0;
              *(a3 + 1) = 0;
              v1681 = *(a3 + 3);
              if (v1681 && v261)
              {
                (*(*v1681 + 16))(v1681);
              }

              v771 = *a3;
              v772 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v773 = *(a3 + 3);
              if (v773)
              {
                goto LABEL_2887;
              }

              goto LABEL_461;
            case 0x4DB:
            case 0x4DC:
            case 0x4DD:
            case 0x4DE:
            case 0x4E0:
            case 0x4E1:
            case 0x4E2:
            case 0x4E3:
            case 0x4E4:
            case 0x4E5:
            case 0x4E6:
            case 0x4E7:
            case 0x4E8:
            case 0x4E9:
            case 0x4EA:
            case 0x4EB:
            case 0x4EC:
            case 0x4ED:
            case 0x4EE:
            case 0x4EF:
            case 0x4F1:
            case 0x4F2:
            case 0x4F5:
            case 0x4F6:
            case 0x4F7:
            case 0x4F8:
            case 0x4F9:
            case 0x4FA:
            case 0x4FB:
            case 0x4FD:
            case 0x4FF:
            case 0x500:
            case 0x501:
            case 0x502:
            case 0x505:
            case 0x506:
            case 0x507:
            case 0x508:
            case 0x50A:
            case 0x50B:
            case 0x50D:
            case 0x50E:
            case 0x50F:
            case 0x511:
            case 0x51A:
            case 0x51B:
            case 0x51E:
            case 0x51F:
            case 0x522:
            case 0x523:
            case 0x524:
            case 0x529:
            case 0x52A:
            case 0x52F:
            case 0x530:
            case 0x535:
            case 0x536:
            case 0x53B:
            case 0x53C:
            case 0x53D:
            case 0x53F:
            case 0x540:
            case 0x542:
            case 0x543:
            case 0x545:
            case 0x546:
            case 0x552:
            case 0x553:
            case 0x554:
            case 0x555:
            case 0x556:
              goto LABEL_674;
            case 0x4DF:
              v641 = *(a3 + 1);
              v642 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v643 = *a3;
              v644 = v642 - *a3;
              v17 = v641 >= v644;
              v645 = v641 - v644;
              if (!v17 || v645 <= 3)
              {
                goto LABEL_2866;
              }

              *(a3 + 2) = v642 + 1;
              if (!v642)
              {
                goto LABEL_2868;
              }

              v647 = *v642;
              v648 = ((v642 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v641 < v648 - v643 || v641 - (v648 - v643) <= 3)
              {
                goto LABEL_2866;
              }

              *(a3 + 2) = v648 + 1;
              if (!v648)
              {
                goto LABEL_2868;
              }

              v650 = *v648;
              v651 = ((v648 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v641 < v651 - v643 || v641 - (v651 - v643) <= 3)
              {
                goto LABEL_2866;
              }

              *(a3 + 2) = v651 + 1;
              if (!v651)
              {
                goto LABEL_2868;
              }

              v652 = *v651;
              v653 = ((v651 + 11) & 0xFFFFFFFFFFFFFFF8);
              if (v641 < v653 - v643 || v641 - (v653 - v643) <= 7)
              {
                goto LABEL_2866;
              }

              *(a3 + 2) = v653 + 1;
              if (!v653)
              {
                goto LABEL_2868;
              }

              v654 = *v653;
              v655 = (v653 + 11) & 0xFFFFFFFFFFFFFFF8;
              if (v641 < v655 - v643 || v641 - (v655 - v643) <= 3)
              {
LABEL_2866:
                *a3 = 0;
                *(a3 + 1) = 0;
                v1682 = *(a3 + 3);
                if (v1682)
                {
                  if (v641)
                  {
                    (*(*v1682 + 16))(v1682);
                    v641 = *(a3 + 1);
                  }
                }

                else
                {
                  v641 = 0;
                }
              }

              else
              {
                *(a3 + 2) = v655 | 4;
                if (v655)
                {
                  WebKit::RemoteGraphicsContextGL::drawElementsInstanced(this, v647, v650, v652, v654, *v655);
                  goto LABEL_461;
                }
              }

LABEL_2868:
              *a3 = 0;
              *(a3 + 1) = 0;
              v1683 = *(a3 + 3);
              if (v1683 && v641)
              {
                (*(*v1683 + 16))(v1683);
              }

              v771 = *a3;
              v772 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v773 = *(a3 + 3);
              if (v773)
              {
                goto LABEL_2887;
              }

              goto LABEL_461;
            case 0x4F0:
              IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
              if ((v632 & 1) == 0)
              {
                goto LABEL_461;
              }

              v6 = *(this + 7);
              if (v6)
              {
                ++*(v6 + 2);
                WebCore::GraphicsContextGLANGLE::hint(v6);
                goto LABEL_1173;
              }

              WebCore::GraphicsContextGLANGLE::hint(0);
              goto LABEL_461;
            case 0x4F3:
              v656 = IPC::Decoder::decode<std::tuple<float>>(a3);
              if ((v656 & 0x100000000) == 0)
              {
                goto LABEL_461;
              }

              v6 = *(this + 7);
              if (v6)
              {
                ++*(v6 + 2);
                WebCore::GraphicsContextGLANGLE::lineWidth(v6, *&v656);
                goto LABEL_1173;
              }

              WebCore::GraphicsContextGLANGLE::lineWidth(0, *&v656);
              goto LABEL_461;
            case 0x4F4:
              v657 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
              if ((v657 & 0x100000000) == 0)
              {
                goto LABEL_461;
              }

              *buf = v657;
              if (v657 > 0xFFFFFFFD)
              {
                goto LABEL_461;
              }

              if (v657)
              {
                *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
              }

              v275 = *(this + 7);
              if (v275)
              {
                ++*(v275 + 2);
                WebCore::GraphicsContextGLANGLE::linkProgram(v275);
                goto LABEL_537;
              }

              WebCore::GraphicsContextGLANGLE::linkProgram(0);
              goto LABEL_461;
            case 0x4FC:
              v550 = *(a3 + 1);
              v625 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
              v626 = *a3;
              v627 = v625 - *a3;
              v17 = v550 >= v627;
              v628 = v550 - v627;
              if (!v17 || v628 <= 3)
              {
                goto LABEL_3021;
              }

              *(a3 + 2) = v625 + 4;
              if (!v625)
              {
                goto LABEL_3023;
              }

              v630 = (v625 + 7) & 0xFFFFFFFFFFFFFFFCLL;
              if (v550 < v630 - v626 || v550 - (v630 - v626) <= 3)
              {
                goto LABEL_3021;
              }

              *(a3 + 2) = v630 + 4;
              if (!v630)
              {
                goto LABEL_3023;
              }

              v6 = *(this + 7);
              if (v6)
              {
                ++*(v6 + 2);
                WebCore::GraphicsContextGLANGLE::pixelStorei(v6);
                goto LABEL_1173;
              }

              WebCore::GraphicsContextGLANGLE::pixelStorei(0);
              goto LABEL_461;
            case 0x4FE:
              v594 = IPC::Decoder::decode<std::tuple<float,float>>(a3);
              if ((v595 & 1) == 0)
              {
                goto LABEL_461;
              }

              v6 = *(this + 7);
              if (v6)
              {
                ++*(v6 + 2);
                WebCore::GraphicsContextGLANGLE::polygonOffset(v6, *&v594, *(&v594 + 1));
                goto LABEL_1173;
              }

              WebCore::GraphicsContextGLANGLE::polygonOffset(0, *&v594, *(&v594 + 1));
              goto LABEL_461;
            case 0x503:
              IPC::Decoder::decode<WebCore::IntRect>(a3, v1797);
              if (v1798 != 1)
              {
                goto LABEL_2582;
              }

              v276 = *(a3 + 1);
              v596 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v597 = *a3;
              v598 = v596 - *a3;
              v17 = v276 >= v598;
              v599 = v276 - v598;
              if (!v17 || v599 <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v596 + 1;
              if (!v596)
              {
                goto LABEL_2581;
              }

              v600 = *v596;
              v601 = ((v596 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v276 < v601 - v597 || v276 - (v601 - v597) <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v601 + 1;
              if (!v601)
              {
                goto LABEL_2581;
              }

              v602 = *v601;
              v603 = ((v601 + 11) & 0xFFFFFFFFFFFFFFF8);
              if (v276 < v603 - v597 || v276 - (v603 - v597) <= 7)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v603 + 1;
              if (!v603)
              {
                goto LABEL_2581;
              }

              v604 = *v603;
              v605 = (v603 + 11) & 0xFFFFFFFFFFFFFFF8;
              if (v276 < v605 - v597 || v276 - (v605 - v597) <= 3)
              {
                goto LABEL_2579;
              }

              v606 = (v605 | 4);
              *(a3 + 2) = v605 | 4;
              if (!v605)
              {
                goto LABEL_2581;
              }

              if (v276 >= v606 - v597 && v276 - (v606 - v597) > 3)
              {
                v608 = *v605;
                v607 = *v605;
                *(a3 + 2) = v605 + 8;
                v609 = *v606;
                *buf = *v1797;
                *&buf[16] = v600;
                *&buf[20] = v602;
                *&buf[24] = v604;
                *&buf[32] = v608;
                *&buf[36] = v609;
                buf[40] = 1;
                WebKit::RemoteGraphicsContextGL::readPixelsBufferObject(this, buf, v600, v602, v604, v607, v609);
                goto LABEL_461;
              }

              *a3 = 0;
              *(a3 + 1) = 0;
              v1708 = *(a3 + 3);
              if (v1708)
              {
                if (v276)
                {
                  (*(*v1708 + 16))(v1708);
                  v276 = *(a3 + 1);
                  v1484 = *(a3 + 3);
                  *a3 = 0;
                  *(a3 + 1) = 0;
                  if (v1484)
                  {
                    goto LABEL_2939;
                  }
                }
              }

              goto LABEL_2582;
            case 0x504:
              v550 = *(a3 + 1);
              v658 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v659 = *a3;
              v660 = v658 - *a3;
              v17 = v550 >= v660;
              v661 = v550 - v660;
              if (!v17 || v661 <= 3)
              {
                goto LABEL_3021;
              }

              *(a3 + 2) = v658 + 1;
              if (!v658)
              {
                goto LABEL_3023;
              }

              v663 = *v658;
              v664 = ((v658 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v550 < v664 - v659 || v550 - (v664 - v659) <= 3)
              {
                goto LABEL_3021;
              }

              *(a3 + 2) = v664 + 1;
              if (!v664)
              {
                goto LABEL_3023;
              }

              v666 = *v664;
              v667 = ((v664 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v550 < v667 - v659 || v550 - (v667 - v659) <= 3)
              {
                goto LABEL_3021;
              }

              *(a3 + 2) = v667 + 1;
              if (!v667)
              {
                goto LABEL_3023;
              }

              v668 = *v667;
              v669 = ((v667 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v550 < v669 - v659 || v550 - (v669 - v659) <= 3)
              {
                goto LABEL_3021;
              }

              *(a3 + 2) = v669 + 1;
              if (!v669)
              {
                goto LABEL_3023;
              }

              WebKit::RemoteGraphicsContextGL::renderbufferStorage(this, v663, v666, v668, *v669);
              goto LABEL_461;
            case 0x509:
              v550 = *(a3 + 1);
              v551 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v552 = *a3;
              v553 = v551 - *a3;
              v17 = v550 >= v553;
              v554 = v550 - v553;
              if (!v17 || v554 <= 3)
              {
                goto LABEL_3021;
              }

              v556 = (v551 + 1);
              *(a3 + 2) = v551 + 1;
              if (!v551)
              {
                goto LABEL_3023;
              }

              if (v550 <= &v556[-v552])
              {
                *a3 = 0;
                *(a3 + 1) = 0;
                v1744 = *(a3 + 3);
                if (v1744)
                {
                  if (v550)
                  {
                    (*(*v1744 + 16))(v1744);
                    v550 = *(a3 + 1);
                  }
                }

                else
                {
                  v550 = 0;
                }

                goto LABEL_3021;
              }

              v557 = *v551;
              *(a3 + 2) = v551 + 5;
              if (v551 == -4)
              {
                goto LABEL_3021;
              }

              if (*v556 >= 2u)
              {
                goto LABEL_3023;
              }

              v6 = *(this + 7);
              if (v6)
              {
                ++*(v6 + 2);
                WebCore::GraphicsContextGLANGLE::sampleCoverage(v6, v557);
                goto LABEL_459;
              }

              WebCore::GraphicsContextGLANGLE::sampleCoverage(0, v557);
              goto LABEL_461;
            case 0x50C:
              IPC::Decoder::decode<std::tuple<int,int,int,int>>(buf, a3);
              if (buf[16] == 1)
              {
                WebKit::RemoteGraphicsContextGL::scissor(this, *buf, *&buf[4], *&buf[8], *&buf[12]);
              }

              goto LABEL_461;
            case 0x510:
              IPC::Decoder::decode<std::tuple<unsigned int,WTF::String>>(buf, a3);
              if (buf[16] != 1)
              {
                goto LABEL_461;
              }

              WebKit::RemoteGraphicsContextGL::shaderSource(this, *buf, &buf[8]);
              goto LABEL_257;
            case 0x512:
              v473 = *(a3 + 1);
              v519 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
              v520 = *a3;
              v521 = v519 - *a3;
              v17 = v473 >= v521;
              v522 = v473 - v521;
              if (!v17 || v522 <= 3)
              {
                goto LABEL_2800;
              }

              *(a3 + 2) = v519 + 4;
              if (!v519)
              {
                goto LABEL_2802;
              }

              v524 = (v519 + 7) & 0xFFFFFFFFFFFFFFFCLL;
              if (v473 < v524 - v520 || v473 - (v524 - v520) <= 3)
              {
                goto LABEL_2800;
              }

              *(a3 + 2) = v524 + 4;
              if (!v524)
              {
                goto LABEL_2802;
              }

              v526 = (v524 + 7) & 0xFFFFFFFFFFFFFFFCLL;
              if (v473 < v526 - v520 || v473 - (v526 - v520) <= 3)
              {
                goto LABEL_2800;
              }

              *(a3 + 2) = v526 + 4;
              if (!v526)
              {
                goto LABEL_2802;
              }

              v6 = *(this + 7);
              if (v6)
              {
                ++*(v6 + 2);
                WebCore::GraphicsContextGLANGLE::stencilFunc(v6);
                goto LABEL_459;
              }

              WebCore::GraphicsContextGLANGLE::stencilFunc(0);
              goto LABEL_461;
            case 0x513:
              v473 = *(a3 + 1);
              v507 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v508 = *a3;
              v509 = v507 - *a3;
              v17 = v473 >= v509;
              v510 = v473 - v509;
              if (!v17 || v510 <= 3)
              {
                goto LABEL_2800;
              }

              *(a3 + 2) = v507 + 1;
              if (!v507)
              {
                goto LABEL_2802;
              }

              v512 = *v507;
              v513 = ((v507 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v473 < v513 - v508 || v473 - (v513 - v508) <= 3)
              {
                goto LABEL_2800;
              }

              *(a3 + 2) = v513 + 1;
              if (!v513)
              {
                goto LABEL_2802;
              }

              v515 = *v513;
              v516 = ((v513 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v473 < v516 - v508 || v473 - (v516 - v508) <= 3)
              {
                goto LABEL_2800;
              }

              *(a3 + 2) = v516 + 1;
              if (!v516)
              {
                goto LABEL_2802;
              }

              v517 = *v516;
              v518 = ((v516 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v473 < v518 - v508 || v473 - (v518 - v508) <= 3)
              {
                goto LABEL_2800;
              }

              *(a3 + 2) = v518 + 1;
              if (!v518)
              {
                goto LABEL_2802;
              }

              WebKit::RemoteGraphicsContextGL::stencilFuncSeparate(this, v512, v515, v517, *v518);
              goto LABEL_461;
            case 0x514:
              if ((IPC::Decoder::decode<std::tuple<unsigned int>>(a3) & 0x100000000) == 0)
              {
                goto LABEL_461;
              }

              v6 = *(this + 7);
              if (v6)
              {
                ++*(v6 + 2);
                WebCore::GraphicsContextGLANGLE::stencilMask(v6);
                goto LABEL_459;
              }

              WebCore::GraphicsContextGLANGLE::stencilMask(0);
              goto LABEL_461;
            case 0x515:
              IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
              if ((v581 & 1) == 0)
              {
                goto LABEL_461;
              }

              v6 = *(this + 7);
              if (v6)
              {
                ++*(v6 + 2);
                WebCore::GraphicsContextGLANGLE::stencilMaskSeparate(v6);
                goto LABEL_459;
              }

              WebCore::GraphicsContextGLANGLE::stencilMaskSeparate(0);
              goto LABEL_461;
            case 0x516:
              IPC::Decoder::decode<std::tuple<unsigned int,unsigned int,unsigned int>>(a3);
              if ((v503 & 0x100000000) == 0)
              {
                goto LABEL_461;
              }

              v6 = *(this + 7);
              if (v6)
              {
                ++*(v6 + 2);
                WebCore::GraphicsContextGLANGLE::stencilOp(v6);
                goto LABEL_459;
              }

              WebCore::GraphicsContextGLANGLE::stencilOp(0);
              goto LABEL_461;
            case 0x517:
              IPC::Decoder::decode<std::tuple<unsigned int,unsigned int,unsigned int,unsigned int>>(buf, a3);
              if (buf[16] == 1)
              {
                WebKit::RemoteGraphicsContextGL::stencilOpSeparate(this, *buf, *&buf[4], *&buf[8], *&buf[12]);
              }

              goto LABEL_461;
            case 0x518:
              v276 = *(a3 + 1);
              v482 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v483 = *a3;
              v484 = v482 - *a3;
              v17 = v276 >= v484;
              v485 = v276 - v484;
              if (!v17 || v485 <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v482 + 1;
              if (!v482)
              {
                goto LABEL_2581;
              }

              v487 = *v482;
              v488 = ((v482 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v276 < v488 - v483 || v276 - (v488 - v483) <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v488 + 1;
              if (!v488)
              {
                goto LABEL_2581;
              }

              v490 = *v488;
              v491 = ((v488 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v276 < v491 - v483 || v276 - (v491 - v483) <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v491 + 1;
              if (!v491)
              {
                goto LABEL_2581;
              }

              v492 = *v491;
              v493 = ((v491 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v276 < v493 - v483 || v276 - (v493 - v483) <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v493 + 1;
              if (!v493)
              {
                goto LABEL_2581;
              }

              v494 = *v493;
              v495 = ((v493 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v276 < v495 - v483 || v276 - (v495 - v483) <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v495 + 1;
              if (!v495)
              {
                goto LABEL_2581;
              }

              v496 = *v495;
              v497 = ((v495 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v276 < v497 - v483 || v276 - (v497 - v483) <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v497 + 1;
              if (!v497)
              {
                goto LABEL_2581;
              }

              v498 = *v497;
              v499 = ((v497 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v276 < v499 - v483 || v276 - (v499 - v483) <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v499 + 1;
              if (!v499)
              {
                goto LABEL_2581;
              }

              v500 = *v499;
              v501 = ((v499 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v276 < v501 - v483 || v276 - (v501 - v483) <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v501 + 1;
              if (!v501)
              {
                goto LABEL_2581;
              }

              v502 = *v501;
              IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, v1797);
              if ((v1798 & 1) == 0)
              {
                v1651 = *a3;
                v1652 = *(a3 + 1);
                *a3 = 0;
                *(a3 + 1) = 0;
                v1653 = *(a3 + 3);
                if (!v1653)
                {
                  goto LABEL_2582;
                }

                if (!v1652)
                {
                  goto LABEL_2582;
                }

                (*(*v1653 + 16))(v1653, v1651);
                if ((v1798 & 1) == 0)
                {
                  goto LABEL_2582;
                }
              }

              *buf = v487;
              *&buf[4] = v490;
              *&buf[8] = v492;
              *&buf[12] = v494;
              *&buf[16] = v496;
              *&buf[20] = v498;
              *&buf[24] = v500;
              *&buf[28] = v502;
              *&buf[32] = *v1797;
              buf[48] = 1;
              WebKit::RemoteGraphicsContextGL::texImage2D0(this);
              goto LABEL_461;
            case 0x519:
              v558 = *(a3 + 1);
              v559 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v560 = *a3;
              v561 = v559 - *a3;
              v17 = v558 >= v561;
              v562 = v558 - v561;
              if (!v17 || v562 <= 3)
              {
                goto LABEL_2848;
              }

              *(a3 + 2) = v559 + 1;
              if (!v559)
              {
                goto LABEL_2850;
              }

              v564 = *v559;
              v565 = ((v559 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v558 < v565 - v560 || v558 - (v565 - v560) <= 3)
              {
                goto LABEL_2848;
              }

              *(a3 + 2) = v565 + 1;
              if (!v565)
              {
                goto LABEL_2850;
              }

              v567 = *v565;
              v568 = ((v565 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v558 < v568 - v560 || v558 - (v568 - v560) <= 3)
              {
                goto LABEL_2848;
              }

              *(a3 + 2) = v568 + 1;
              if (!v568)
              {
                goto LABEL_2850;
              }

              v569 = *v568;
              v570 = ((v568 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v558 < v570 - v560 || v558 - (v570 - v560) <= 3)
              {
                goto LABEL_2848;
              }

              *(a3 + 2) = v570 + 1;
              if (!v570)
              {
                goto LABEL_2850;
              }

              v571 = *v570;
              v572 = ((v570 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v558 < v572 - v560 || v558 - (v572 - v560) <= 3)
              {
                goto LABEL_2848;
              }

              *(a3 + 2) = v572 + 1;
              if (!v572)
              {
                goto LABEL_2850;
              }

              v573 = *v572;
              v574 = ((v572 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v558 < v574 - v560 || v558 - (v574 - v560) <= 3)
              {
                goto LABEL_2848;
              }

              *(a3 + 2) = v574 + 1;
              if (!v574)
              {
                goto LABEL_2850;
              }

              v575 = *v574;
              v576 = ((v574 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v558 < v576 - v560 || v558 - (v576 - v560) <= 3)
              {
                goto LABEL_2848;
              }

              *(a3 + 2) = v576 + 1;
              if (!v576)
              {
                goto LABEL_2850;
              }

              v577 = *v576;
              v578 = ((v576 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v558 < v578 - v560 || v558 - (v578 - v560) <= 3)
              {
                goto LABEL_2848;
              }

              *(a3 + 2) = v578 + 1;
              if (!v578)
              {
                goto LABEL_2850;
              }

              v579 = *v578;
              v580 = ((v578 + 11) & 0xFFFFFFFFFFFFFFF8);
              if (v558 < v580 - v560 || v558 - (v580 - v560) <= 7)
              {
LABEL_2848:
                *a3 = 0;
                *(a3 + 1) = 0;
                v1672 = *(a3 + 3);
                if (v1672)
                {
                  if (v558)
                  {
                    (*(*v1672 + 16))(v1672);
                    v558 = *(a3 + 1);
                  }
                }

                else
                {
                  v558 = 0;
                }
              }

              else
              {
                *(a3 + 2) = v580 + 1;
                if (v580)
                {
                  WebKit::RemoteGraphicsContextGL::texImage2D1(this, v564, v567, v569, v571, v573, v575, v577, v579, *v580);
                  goto LABEL_461;
                }
              }

LABEL_2850:
              *a3 = 0;
              *(a3 + 1) = 0;
              v1673 = *(a3 + 3);
              if (v1673 && v558)
              {
                (*(*v1673 + 16))(v1673);
              }

              v771 = *a3;
              v772 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v773 = *(a3 + 3);
              if (v773)
              {
                goto LABEL_2887;
              }

              goto LABEL_461;
            case 0x51C:
              IPC::Decoder::decode<std::tuple<unsigned int,unsigned int,float>>(a3);
              if ((v504 & 0x100000000) == 0)
              {
                goto LABEL_461;
              }

              v6 = *(this + 7);
              if (v6)
              {
                ++*(v6 + 2);
                WebCore::GraphicsContextGLANGLE::texParameterf(v6, *&v504);
                goto LABEL_459;
              }

              WebCore::GraphicsContextGLANGLE::texParameterf(0, *&v504);
              goto LABEL_461;
            case 0x51D:
              IPC::Decoder::decode<std::tuple<unsigned int,unsigned int,float>>(a3);
              if ((v505 & 0x100000000) == 0)
              {
                goto LABEL_461;
              }

              v6 = *(this + 7);
              if (v6)
              {
                ++*(v6 + 2);
                WebCore::GraphicsContextGLANGLE::texParameteri(v6);
                goto LABEL_459;
              }

              WebCore::GraphicsContextGLANGLE::texParameteri(0);
              goto LABEL_461;
            case 0x520:
              v276 = *(a3 + 1);
              v432 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v433 = *a3;
              v434 = v432 - *a3;
              v17 = v276 >= v434;
              v435 = v276 - v434;
              if (!v17 || v435 <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v432 + 1;
              if (!v432)
              {
                goto LABEL_2581;
              }

              v437 = *v432;
              v438 = ((v432 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v276 < v438 - v433 || v276 - (v438 - v433) <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v438 + 1;
              if (!v438)
              {
                goto LABEL_2581;
              }

              v440 = *v438;
              v441 = ((v438 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v276 < v441 - v433 || v276 - (v441 - v433) <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v441 + 1;
              if (!v441)
              {
                goto LABEL_2581;
              }

              v442 = *v441;
              v443 = ((v441 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v276 < v443 - v433 || v276 - (v443 - v433) <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v443 + 1;
              if (!v443)
              {
                goto LABEL_2581;
              }

              v444 = *v443;
              v445 = ((v443 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v276 < v445 - v433 || v276 - (v445 - v433) <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v445 + 1;
              if (!v445)
              {
                goto LABEL_2581;
              }

              v446 = *v445;
              v447 = ((v445 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v276 < v447 - v433 || v276 - (v447 - v433) <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v447 + 1;
              if (!v447)
              {
                goto LABEL_2581;
              }

              v448 = *v447;
              v449 = ((v447 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v276 < v449 - v433 || v276 - (v449 - v433) <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v449 + 1;
              if (!v449)
              {
                goto LABEL_2581;
              }

              v450 = *v449;
              v451 = ((v449 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v276 < v451 - v433 || v276 - (v451 - v433) <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v451 + 1;
              if (!v451)
              {
                goto LABEL_2581;
              }

              v452 = *v451;
              IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, v1797);
              if ((v1798 & 1) == 0)
              {
                v1648 = *a3;
                v1649 = *(a3 + 1);
                *a3 = 0;
                *(a3 + 1) = 0;
                v1650 = *(a3 + 3);
                if (!v1650)
                {
                  goto LABEL_2582;
                }

                if (!v1649)
                {
                  goto LABEL_2582;
                }

                (*(*v1650 + 16))(v1650, v1648);
                if ((v1798 & 1) == 0)
                {
                  goto LABEL_2582;
                }
              }

              *buf = v437;
              *&buf[4] = v440;
              *&buf[8] = v442;
              *&buf[12] = v444;
              *&buf[16] = v446;
              *&buf[20] = v448;
              *&buf[24] = v450;
              *&buf[28] = v452;
              *&buf[32] = *v1797;
              buf[48] = 1;
              WebKit::RemoteGraphicsContextGL::texSubImage2D0(this);
              goto LABEL_461;
            case 0x521:
              v682 = *(a3 + 1);
              v683 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v684 = *a3;
              v685 = v683 - *a3;
              v17 = v682 >= v685;
              v686 = v682 - v685;
              if (!v17 || v686 <= 3)
              {
                goto LABEL_2838;
              }

              *(a3 + 2) = v683 + 1;
              if (!v683)
              {
                goto LABEL_2840;
              }

              v688 = *v683;
              v689 = ((v683 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v682 < v689 - v684 || v682 - (v689 - v684) <= 3)
              {
                goto LABEL_2838;
              }

              *(a3 + 2) = v689 + 1;
              if (!v689)
              {
                goto LABEL_2840;
              }

              v691 = *v689;
              v692 = ((v689 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v682 < v692 - v684 || v682 - (v692 - v684) <= 3)
              {
                goto LABEL_2838;
              }

              *(a3 + 2) = v692 + 1;
              if (!v692)
              {
                goto LABEL_2840;
              }

              v693 = *v692;
              v694 = ((v692 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v682 < v694 - v684 || v682 - (v694 - v684) <= 3)
              {
                goto LABEL_2838;
              }

              *(a3 + 2) = v694 + 1;
              if (!v694)
              {
                goto LABEL_2840;
              }

              v695 = *v694;
              v696 = ((v694 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v682 < v696 - v684 || v682 - (v696 - v684) <= 3)
              {
                goto LABEL_2838;
              }

              *(a3 + 2) = v696 + 1;
              if (!v696)
              {
                goto LABEL_2840;
              }

              v697 = *v696;
              v698 = ((v696 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v682 < v698 - v684 || v682 - (v698 - v684) <= 3)
              {
                goto LABEL_2838;
              }

              *(a3 + 2) = v698 + 1;
              if (!v698)
              {
                goto LABEL_2840;
              }

              v699 = *v698;
              v700 = ((v698 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v682 < v700 - v684 || v682 - (v700 - v684) <= 3)
              {
                goto LABEL_2838;
              }

              *(a3 + 2) = v700 + 1;
              if (!v700)
              {
                goto LABEL_2840;
              }

              v701 = *v700;
              v702 = ((v700 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v682 < v702 - v684 || v682 - (v702 - v684) <= 3)
              {
                goto LABEL_2838;
              }

              *(a3 + 2) = v702 + 1;
              if (!v702)
              {
                goto LABEL_2840;
              }

              v703 = *v702;
              v704 = ((v702 + 11) & 0xFFFFFFFFFFFFFFF8);
              if (v682 < v704 - v684 || v682 - (v704 - v684) <= 7)
              {
LABEL_2838:
                *a3 = 0;
                *(a3 + 1) = 0;
                v1668 = *(a3 + 3);
                if (v1668)
                {
                  if (v682)
                  {
                    (*(*v1668 + 16))(v1668);
                    v682 = *(a3 + 1);
                  }
                }

                else
                {
                  v682 = 0;
                }
              }

              else
              {
                *(a3 + 2) = v704 + 1;
                if (v704)
                {
                  WebKit::RemoteGraphicsContextGL::texSubImage2D1(this, v688, v691, v693, v695, v697, v699, v701, v703, *v704);
                  goto LABEL_461;
                }
              }

LABEL_2840:
              *a3 = 0;
              *(a3 + 1) = 0;
              v1669 = *(a3 + 3);
              if (v1669 && v682)
              {
                (*(*v1669 + 16))(v1669);
              }

              v771 = *a3;
              v772 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v773 = *(a3 + 3);
              if (v773)
              {
                goto LABEL_2887;
              }

              goto LABEL_461;
            case 0x525:
              v473 = *(a3 + 1);
              v542 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
              v543 = *a3;
              v544 = v542 - *a3;
              v17 = v473 >= v544;
              v545 = v473 - v544;
              if (!v17 || v545 <= 3)
              {
                goto LABEL_2800;
              }

              *(a3 + 2) = v542 + 4;
              if (!v542)
              {
                goto LABEL_2802;
              }

              v547 = ((v542 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v473 < v547 - v543 || v473 - (v547 - v543) <= 3)
              {
                goto LABEL_2800;
              }

              *(a3 + 2) = v547 + 1;
              if (!v547)
              {
                goto LABEL_2802;
              }

              v549 = *v547;
              v6 = *(this + 7);
              if (v6)
              {
                ++*(v6 + 2);
                WebCore::GraphicsContextGLANGLE::uniform1f(v6, v549);
                goto LABEL_459;
              }

              WebCore::GraphicsContextGLANGLE::uniform1f(0, v549);
              goto LABEL_461;
            case 0x526:
              IPC::Decoder::decode<std::tuple<int,std::span<float const,18446744073709551615ul>>>(buf, a3);
              if (buf[24] != 1)
              {
                goto LABEL_461;
              }

              v275 = *(this + 7);
              if (v275)
              {
                ++*(v275 + 2);
                WebCore::GraphicsContextGLANGLE::uniform1fv();
                goto LABEL_537;
              }

              WebCore::GraphicsContextGLANGLE::uniform1fv();
              goto LABEL_461;
            case 0x527:
              IPC::Decoder::decode<std::tuple<int,int>>(a3);
              if ((v680 & 1) == 0)
              {
                goto LABEL_461;
              }

              v6 = *(this + 7);
              if (v6)
              {
                ++*(v6 + 2);
                WebCore::GraphicsContextGLANGLE::uniform1i(v6);
                goto LABEL_459;
              }

              WebCore::GraphicsContextGLANGLE::uniform1i(0);
              goto LABEL_461;
            case 0x528:
              IPC::Decoder::decode<std::tuple<int,std::span<int const,18446744073709551615ul>>>(buf, a3);
              if (buf[24] != 1)
              {
                goto LABEL_461;
              }

              v275 = *(this + 7);
              if (v275)
              {
                ++*(v275 + 2);
                WebCore::GraphicsContextGLANGLE::uniform1iv();
                goto LABEL_537;
              }

              WebCore::GraphicsContextGLANGLE::uniform1iv();
              goto LABEL_461;
            case 0x52B:
              v473 = *(a3 + 1);
              v670 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
              v671 = *a3;
              v672 = v670 - *a3;
              v17 = v473 >= v672;
              v673 = v473 - v672;
              if (!v17 || v673 <= 3)
              {
                goto LABEL_2800;
              }

              *(a3 + 2) = v670 + 4;
              if (!v670)
              {
                goto LABEL_2802;
              }

              v675 = ((v670 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v473 < v675 - v671 || v473 - (v675 - v671) <= 3)
              {
                goto LABEL_2800;
              }

              *(a3 + 2) = v675 + 1;
              if (!v675)
              {
                goto LABEL_2802;
              }

              v677 = *v675;
              v678 = ((v675 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v473 < v678 - v671 || v473 - (v678 - v671) <= 3)
              {
                goto LABEL_2800;
              }

              *(a3 + 2) = v678 + 1;
              if (!v678)
              {
                goto LABEL_2802;
              }

              v679 = *v678;
              v6 = *(this + 7);
              if (v6)
              {
                ++*(v6 + 2);
                WebCore::GraphicsContextGLANGLE::uniform2f(v6, v677, v679);
                goto LABEL_459;
              }

              WebCore::GraphicsContextGLANGLE::uniform2f(0, v677, v679);
              goto LABEL_461;
            case 0x52C:
              IPC::Decoder::decode<std::tuple<int,std::span<float const,18446744073709551615ul>>>(buf, a3);
              if (buf[24] != 1)
              {
                goto LABEL_461;
              }

              v275 = *(this + 7);
              if (v275)
              {
                ++*(v275 + 2);
                WebCore::GraphicsContextGLANGLE::uniform2fv();
                goto LABEL_537;
              }

              WebCore::GraphicsContextGLANGLE::uniform2fv();
              goto LABEL_461;
            case 0x52D:
              v473 = *(a3 + 1);
              v474 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
              v475 = *a3;
              v476 = v474 - *a3;
              v17 = v473 >= v476;
              v477 = v473 - v476;
              if (!v17 || v477 <= 3)
              {
                goto LABEL_2800;
              }

              *(a3 + 2) = v474 + 4;
              if (!v474)
              {
                goto LABEL_2802;
              }

              v479 = (v474 + 7) & 0xFFFFFFFFFFFFFFFCLL;
              if (v473 < v479 - v475 || v473 - (v479 - v475) <= 3)
              {
                goto LABEL_2800;
              }

              *(a3 + 2) = v479 + 4;
              if (!v479)
              {
                goto LABEL_2802;
              }

              v481 = (v479 + 7) & 0xFFFFFFFFFFFFFFFCLL;
              if (v473 < v481 - v475 || v473 - (v481 - v475) <= 3)
              {
                goto LABEL_2800;
              }

              *(a3 + 2) = v481 + 4;
              if (!v481)
              {
                goto LABEL_2802;
              }

              v6 = *(this + 7);
              if (v6)
              {
                ++*(v6 + 2);
                WebCore::GraphicsContextGLANGLE::uniform2i(v6);
                goto LABEL_459;
              }

              WebCore::GraphicsContextGLANGLE::uniform2i(0);
              goto LABEL_461;
            case 0x52E:
              IPC::Decoder::decode<std::tuple<int,std::span<int const,18446744073709551615ul>>>(buf, a3);
              if (buf[24] != 1)
              {
                goto LABEL_461;
              }

              v275 = *(this + 7);
              if (v275)
              {
                ++*(v275 + 2);
                WebCore::GraphicsContextGLANGLE::uniform2iv();
                goto LABEL_537;
              }

              WebCore::GraphicsContextGLANGLE::uniform2iv();
              goto LABEL_461;
            case 0x531:
              v473 = *(a3 + 1);
              v582 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v583 = *a3;
              v584 = v582 - *a3;
              v17 = v473 >= v584;
              v585 = v473 - v584;
              if (!v17 || v585 <= 3)
              {
                goto LABEL_2800;
              }

              *(a3 + 2) = v582 + 1;
              if (!v582)
              {
                goto LABEL_2802;
              }

              v587 = *v582;
              v588 = ((v582 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v473 < v588 - v583 || v473 - (v588 - v583) <= 3)
              {
                goto LABEL_2800;
              }

              *(a3 + 2) = v588 + 1;
              if (!v588)
              {
                goto LABEL_2802;
              }

              v590 = *v588;
              v591 = ((v588 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v473 < v591 - v583 || v473 - (v591 - v583) <= 3)
              {
                goto LABEL_2800;
              }

              *(a3 + 2) = v591 + 1;
              if (!v591)
              {
                goto LABEL_2802;
              }

              v592 = *v591;
              v593 = ((v591 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v473 < v593 - v583 || v473 - (v593 - v583) <= 3)
              {
LABEL_2800:
                *a3 = 0;
                *(a3 + 1) = 0;
                v1645 = *(a3 + 3);
                if (v1645)
                {
                  if (v473)
                  {
                    (*(*v1645 + 16))(v1645);
                    v473 = *(a3 + 1);
                  }
                }

                else
                {
                  v473 = 0;
                }
              }

              else
              {
                *(a3 + 2) = v593 + 1;
                if (v593)
                {
                  WebKit::RemoteGraphicsContextGL::uniform3f(this, v587, v590, v592, *v593);
                  goto LABEL_461;
                }
              }

LABEL_2802:
              *a3 = 0;
              *(a3 + 1) = 0;
              v1646 = *(a3 + 3);
              if (v1646 && v473)
              {
                (*(*v1646 + 16))(v1646);
              }

              v771 = *a3;
              v1647 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v773 = *(a3 + 3);
              if (v773)
              {
                goto LABEL_2804;
              }

              goto LABEL_461;
            case 0x532:
              IPC::Decoder::decode<std::tuple<int,std::span<float const,18446744073709551615ul>>>(buf, a3);
              if (buf[24] != 1)
              {
                goto LABEL_461;
              }

              v275 = *(this + 7);
              if (v275)
              {
                ++*(v275 + 2);
                WebCore::GraphicsContextGLANGLE::uniform3fv();
                goto LABEL_537;
              }

              WebCore::GraphicsContextGLANGLE::uniform3fv();
              goto LABEL_461;
            case 0x533:
              IPC::Decoder::decode<std::tuple<int,int,int,int>>(buf, a3);
              if (buf[16] == 1)
              {
                WebKit::RemoteGraphicsContextGL::uniform3i(this, *buf, *&buf[4], *&buf[8], *&buf[12]);
              }

              goto LABEL_461;
            case 0x534:
              IPC::Decoder::decode<std::tuple<int,std::span<int const,18446744073709551615ul>>>(buf, a3);
              if (buf[24] != 1)
              {
                goto LABEL_461;
              }

              v275 = *(this + 7);
              if (v275)
              {
                ++*(v275 + 2);
                WebCore::GraphicsContextGLANGLE::uniform3iv();
                goto LABEL_537;
              }

              WebCore::GraphicsContextGLANGLE::uniform3iv();
              goto LABEL_461;
            case 0x537:
              v417 = *(a3 + 1);
              v418 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v419 = *a3;
              v420 = v418 - *a3;
              v17 = v417 >= v420;
              v421 = v417 - v420;
              if (!v17 || v421 <= 3)
              {
                goto LABEL_2894;
              }

              *(a3 + 2) = v418 + 1;
              if (!v418)
              {
                goto LABEL_2896;
              }

              v423 = *v418;
              v424 = ((v418 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v417 < v424 - v419 || v417 - (v424 - v419) <= 3)
              {
                goto LABEL_2894;
              }

              *(a3 + 2) = v424 + 1;
              if (!v424)
              {
                goto LABEL_2896;
              }

              v426 = *v424;
              v427 = ((v424 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v417 < v427 - v419 || v417 - (v427 - v419) <= 3)
              {
                goto LABEL_2894;
              }

              *(a3 + 2) = v427 + 1;
              if (!v427)
              {
                goto LABEL_2896;
              }

              v428 = *v427;
              v429 = ((v427 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v417 < v429 - v419 || v417 - (v429 - v419) <= 3)
              {
                goto LABEL_2894;
              }

              *(a3 + 2) = v429 + 1;
              if (!v429)
              {
                goto LABEL_2896;
              }

              v430 = *v429;
              v431 = ((v429 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v417 < v431 - v419 || v417 - (v431 - v419) <= 3)
              {
LABEL_2894:
                *a3 = 0;
                *(a3 + 1) = 0;
                v1694 = *(a3 + 3);
                if (v1694)
                {
                  if (v417)
                  {
                    (*(*v1694 + 16))(v1694);
                    v417 = *(a3 + 1);
                  }
                }

                else
                {
                  v417 = 0;
                }
              }

              else
              {
                *(a3 + 2) = v431 + 1;
                if (v431)
                {
                  WebKit::RemoteGraphicsContextGL::uniform4f(this, v423, v426, v428, v430, *v431);
                  goto LABEL_461;
                }
              }

LABEL_2896:
              *a3 = 0;
              *(a3 + 1) = 0;
              v1695 = *(a3 + 3);
              if (v1695 && v417)
              {
                (*(*v1695 + 16))(v1695);
              }

              v771 = *a3;
              v1647 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v773 = *(a3 + 3);
              if (!v773)
              {
                goto LABEL_461;
              }

LABEL_2804:
              if (!v1647)
              {
                goto LABEL_461;
              }

              goto LABEL_2888;
            case 0x538:
              IPC::Decoder::decode<std::tuple<int,std::span<float const,18446744073709551615ul>>>(buf, a3);
              if (buf[24] != 1)
              {
                goto LABEL_461;
              }

              v275 = *(this + 7);
              if (v275)
              {
                ++*(v275 + 2);
                WebCore::GraphicsContextGLANGLE::uniform4fv();
                goto LABEL_537;
              }

              WebCore::GraphicsContextGLANGLE::uniform4fv();
              goto LABEL_461;
            case 0x539:
              v527 = *(a3 + 1);
              v528 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v529 = *a3;
              v530 = v528 - *a3;
              v17 = v527 >= v530;
              v531 = v527 - v530;
              if (!v17 || v531 <= 3)
              {
                goto LABEL_2843;
              }

              *(a3 + 2) = v528 + 1;
              if (!v528)
              {
                goto LABEL_2845;
              }

              v533 = *v528;
              v534 = ((v528 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v527 < v534 - v529 || v527 - (v534 - v529) <= 3)
              {
                goto LABEL_2843;
              }

              *(a3 + 2) = v534 + 1;
              if (!v534)
              {
                goto LABEL_2845;
              }

              v536 = *v534;
              v537 = ((v534 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v527 < v537 - v529 || v527 - (v537 - v529) <= 3)
              {
                goto LABEL_2843;
              }

              *(a3 + 2) = v537 + 1;
              if (!v537)
              {
                goto LABEL_2845;
              }

              v538 = *v537;
              v539 = ((v537 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v527 < v539 - v529 || v527 - (v539 - v529) <= 3)
              {
                goto LABEL_2843;
              }

              *(a3 + 2) = v539 + 1;
              if (!v539)
              {
                goto LABEL_2845;
              }

              v540 = *v539;
              v541 = ((v539 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v527 < v541 - v529 || v527 - (v541 - v529) <= 3)
              {
LABEL_2843:
                *a3 = 0;
                *(a3 + 1) = 0;
                v1670 = *(a3 + 3);
                if (v1670)
                {
                  if (v527)
                  {
                    (*(*v1670 + 16))(v1670);
                    v527 = *(a3 + 1);
                  }
                }

                else
                {
                  v527 = 0;
                }
              }

              else
              {
                *(a3 + 2) = v541 + 1;
                if (v541)
                {
                  WebKit::RemoteGraphicsContextGL::uniform4i(this, v533, v536, v538, v540, *v541);
                  goto LABEL_461;
                }
              }

LABEL_2845:
              *a3 = 0;
              *(a3 + 1) = 0;
              v1671 = *(a3 + 3);
              if (v1671 && v527)
              {
                (*(*v1671 + 16))(v1671);
              }

              v771 = *a3;
              v772 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v773 = *(a3 + 3);
              if (v773)
              {
                goto LABEL_2887;
              }

              goto LABEL_461;
            case 0x53A:
              IPC::Decoder::decode<std::tuple<int,std::span<int const,18446744073709551615ul>>>(buf, a3);
              if (buf[24] != 1)
              {
                goto LABEL_461;
              }

              v275 = *(this + 7);
              if (v275)
              {
                ++*(v275 + 2);
                WebCore::GraphicsContextGLANGLE::uniform4iv();
                goto LABEL_537;
              }

              WebCore::GraphicsContextGLANGLE::uniform4iv();
              goto LABEL_461;
            case 0x53E:
              IPC::Decoder::decode<std::tuple<int,BOOL,std::span<float const,18446744073709551615ul>>>(buf, a3);
              if (buf[24] != 1)
              {
                goto LABEL_461;
              }

              v275 = *(this + 7);
              if (v275)
              {
                ++*(v275 + 2);
                WebCore::GraphicsContextGLANGLE::uniformMatrix2fv();
                goto LABEL_537;
              }

              WebCore::GraphicsContextGLANGLE::uniformMatrix2fv();
              goto LABEL_461;
            case 0x541:
              IPC::Decoder::decode<std::tuple<int,BOOL,std::span<float const,18446744073709551615ul>>>(buf, a3);
              if (buf[24] != 1)
              {
                goto LABEL_461;
              }

              v275 = *(this + 7);
              if (v275)
              {
                ++*(v275 + 2);
                WebCore::GraphicsContextGLANGLE::uniformMatrix3fv();
                goto LABEL_537;
              }

              WebCore::GraphicsContextGLANGLE::uniformMatrix3fv();
              goto LABEL_461;
            case 0x544:
              IPC::Decoder::decode<std::tuple<int,BOOL,std::span<float const,18446744073709551615ul>>>(buf, a3);
              if (buf[24] != 1)
              {
                goto LABEL_461;
              }

              v275 = *(this + 7);
              if (v275)
              {
                ++*(v275 + 2);
                WebCore::GraphicsContextGLANGLE::uniformMatrix4fv();
                goto LABEL_537;
              }

              WebCore::GraphicsContextGLANGLE::uniformMatrix4fv();
              goto LABEL_461;
            case 0x547:
              v681 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
              if ((v681 & 0x100000000) == 0)
              {
                goto LABEL_461;
              }

              *buf = v681;
              if (v681 > 0xFFFFFFFD)
              {
                goto LABEL_461;
              }

              if (v681)
              {
                *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
              }

              v275 = *(this + 7);
              if (v275)
              {
                ++*(v275 + 2);
                WebCore::GraphicsContextGLANGLE::useProgram(v275);
                goto LABEL_537;
              }

              WebCore::GraphicsContextGLANGLE::useProgram(0);
              goto LABEL_461;
            case 0x548:
              v506 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
              if ((v506 & 0x100000000) == 0)
              {
                goto LABEL_461;
              }

              *buf = v506;
              if (v506 > 0xFFFFFFFD)
              {
                goto LABEL_461;
              }

              if (v506)
              {
                *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
              }

              v275 = *(this + 7);
              if (v275)
              {
                ++*(v275 + 2);
                WebCore::GraphicsContextGLANGLE::validateProgram(v275);
                goto LABEL_537;
              }

              WebCore::GraphicsContextGLANGLE::validateProgram(0);
              goto LABEL_461;
            case 0x549:
              v453 = *(a3 + 1);
              v454 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
              v455 = *a3;
              v456 = v454 - *a3;
              v17 = v453 >= v456;
              v457 = v453 - v456;
              if (!v17 || v457 <= 3)
              {
                goto LABEL_2997;
              }

              *(a3 + 2) = v454 + 4;
              if (!v454)
              {
                goto LABEL_2999;
              }

              v459 = ((v454 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v453 >= v459 - v455 && v453 - (v459 - v455) > 3)
              {
                *(a3 + 2) = v459 + 1;
                if (v459)
                {
                  v461 = *v459;
                  v6 = *(this + 7);
                  if (v6)
                  {
                    ++*(v6 + 2);
                    WebCore::GraphicsContextGLANGLE::vertexAttrib1f(v6, v461);
                    goto LABEL_459;
                  }

                  WebCore::GraphicsContextGLANGLE::vertexAttrib1f(0, v461);
                  goto LABEL_461;
                }
              }

              else
              {
LABEL_2997:
                *a3 = 0;
                *(a3 + 1) = 0;
                v1739 = *(a3 + 3);
                if (v1739)
                {
                  if (v453)
                  {
                    (*(*v1739 + 16))(v1739);
                    v453 = *(a3 + 1);
                  }
                }

                else
                {
                  v453 = 0;
                }
              }

LABEL_2999:
              *a3 = 0;
              *(a3 + 1) = 0;
              v1740 = *(a3 + 3);
              if (v1740 && v453)
              {
                (*(*v1740 + 16))(v1740);
              }

              v771 = *a3;
              v772 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v773 = *(a3 + 3);
              if (!v773)
              {
                goto LABEL_461;
              }

              goto LABEL_2887;
            case 0x54A:
              v276 = *(a3 + 1);
              v718 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v719 = *a3;
              v720 = v718 - *a3;
              v17 = v276 >= v720;
              v721 = v276 - v720;
              if (!v17 || v721 <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v718 + 1;
              if (!v718)
              {
                goto LABEL_2581;
              }

              v723 = *v718;
              v724 = (v718 + 7) & 0xFFFFFFFFFFFFFFFCLL;
              if (v276 < v724 - v719 || v276 - (v724 - v719) <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v724 + 4;
              if (!v724)
              {
                goto LABEL_2581;
              }

              *buf = v723;
              *&buf[8] = v724;
              buf[16] = 1;
              WebKit::RemoteGraphicsContextGL::vertexAttrib1fv(this, v723, &buf[8]);
              goto LABEL_461;
            case 0x54B:
              v462 = *(a3 + 1);
              v463 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
              v464 = *a3;
              v465 = v463 - *a3;
              v17 = v462 >= v465;
              v466 = v462 - v465;
              if (!v17 || v466 <= 3)
              {
                goto LABEL_2992;
              }

              *(a3 + 2) = v463 + 4;
              if (!v463)
              {
                goto LABEL_2994;
              }

              v468 = ((v463 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v462 < v468 - v464 || v462 - (v468 - v464) <= 3)
              {
                goto LABEL_2992;
              }

              *(a3 + 2) = v468 + 1;
              if (!v468)
              {
                goto LABEL_2994;
              }

              v470 = *v468;
              v471 = ((v468 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v462 < v471 - v464 || v462 - (v471 - v464) <= 3)
              {
LABEL_2992:
                *a3 = 0;
                *(a3 + 1) = 0;
                v1737 = *(a3 + 3);
                if (v1737)
                {
                  if (v462)
                  {
                    (*(*v1737 + 16))(v1737);
                    v462 = *(a3 + 1);
                  }
                }

                else
                {
                  v462 = 0;
                }
              }

              else
              {
                *(a3 + 2) = v471 + 1;
                if (v471)
                {
                  v472 = *v471;
                  v6 = *(this + 7);
                  if (v6)
                  {
                    ++*(v6 + 2);
                    WebCore::GraphicsContextGLANGLE::vertexAttrib2f(v6, v470, v472);
                    goto LABEL_459;
                  }

                  WebCore::GraphicsContextGLANGLE::vertexAttrib2f(0, v470, v472);
                  goto LABEL_461;
                }
              }

LABEL_2994:
              *a3 = 0;
              *(a3 + 1) = 0;
              v1738 = *(a3 + 3);
              if (v1738 && v462)
              {
                (*(*v1738 + 16))(v1738);
              }

              v771 = *a3;
              v772 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v773 = *(a3 + 3);
              if (!v773)
              {
                goto LABEL_461;
              }

              goto LABEL_2887;
            case 0x54C:
              v276 = *(a3 + 1);
              v401 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v402 = *a3;
              v403 = v401 - *a3;
              v17 = v276 >= v403;
              v404 = v276 - v403;
              if (!v17 || v404 <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v401 + 1;
              if (!v401)
              {
                goto LABEL_2581;
              }

              v406 = *v401;
              v407 = (v401 + 7) & 0xFFFFFFFFFFFFFFFCLL;
              if (v276 < v407 - v402 || v276 - (v407 - v402) <= 7)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v407 + 8;
              if (!v407)
              {
                goto LABEL_2581;
              }

              *buf = v406;
              *&buf[8] = v407;
              buf[16] = 1;
              WebKit::RemoteGraphicsContextGL::vertexAttrib2fv(this, v406, &buf[8]);
              goto LABEL_461;
            case 0x54D:
              v705 = *(a3 + 1);
              v706 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v707 = *a3;
              v708 = v706 - *a3;
              v17 = v705 >= v708;
              v709 = v705 - v708;
              if (!v17 || v709 <= 3)
              {
                goto LABEL_2987;
              }

              *(a3 + 2) = v706 + 1;
              if (!v706)
              {
                goto LABEL_2989;
              }

              v711 = *v706;
              v712 = ((v706 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v705 < v712 - v707 || v705 - (v712 - v707) <= 3)
              {
                goto LABEL_2987;
              }

              *(a3 + 2) = v712 + 1;
              if (!v712)
              {
                goto LABEL_2989;
              }

              v714 = *v712;
              v715 = ((v712 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v705 < v715 - v707 || v705 - (v715 - v707) <= 3)
              {
                goto LABEL_2987;
              }

              *(a3 + 2) = v715 + 1;
              if (!v715)
              {
                goto LABEL_2989;
              }

              v716 = *v715;
              v717 = ((v715 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v705 < v717 - v707 || v705 - (v717 - v707) <= 3)
              {
LABEL_2987:
                *a3 = 0;
                *(a3 + 1) = 0;
                v1735 = *(a3 + 3);
                if (v1735)
                {
                  if (v705)
                  {
                    (*(*v1735 + 16))(v1735);
                    v705 = *(a3 + 1);
                  }
                }

                else
                {
                  v705 = 0;
                }
              }

              else
              {
                *(a3 + 2) = v717 + 1;
                if (v717)
                {
                  WebKit::RemoteGraphicsContextGL::vertexAttrib3f(this, v711, v714, v716, *v717);
                  goto LABEL_461;
                }
              }

LABEL_2989:
              *a3 = 0;
              *(a3 + 1) = 0;
              v1736 = *(a3 + 3);
              if (v1736 && v705)
              {
                (*(*v1736 + 16))(v1736);
              }

              v771 = *a3;
              v772 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v773 = *(a3 + 3);
              if (v773)
              {
                goto LABEL_2887;
              }

              goto LABEL_461;
            case 0x54E:
              v276 = *(a3 + 1);
              v633 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v634 = *a3;
              v635 = v633 - *a3;
              v17 = v276 >= v635;
              v636 = v276 - v635;
              if (!v17 || v636 <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v633 + 1;
              if (!v633)
              {
                goto LABEL_2581;
              }

              v638 = *v633;
              v639 = (v633 + 7) & 0xFFFFFFFFFFFFFFFCLL;
              if (v276 < v639 - v634 || v276 - (v639 - v634) <= 0xB)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v639 + 12;
              if (!v639)
              {
                goto LABEL_2581;
              }

              *buf = v638;
              *&buf[8] = v639;
              buf[16] = 1;
              WebKit::RemoteGraphicsContextGL::vertexAttrib3fv(this, v638, &buf[8]);
              goto LABEL_461;
            case 0x54F:
              v610 = *(a3 + 1);
              v611 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v612 = *a3;
              v613 = v611 - *a3;
              v17 = v610 >= v613;
              v614 = v610 - v613;
              if (!v17 || v614 <= 3)
              {
                goto LABEL_2982;
              }

              *(a3 + 2) = v611 + 1;
              if (!v611)
              {
                goto LABEL_2984;
              }

              v616 = *v611;
              v617 = ((v611 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v610 < v617 - v612 || v610 - (v617 - v612) <= 3)
              {
                goto LABEL_2982;
              }

              *(a3 + 2) = v617 + 1;
              if (!v617)
              {
                goto LABEL_2984;
              }

              v619 = *v617;
              v620 = ((v617 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v610 < v620 - v612 || v610 - (v620 - v612) <= 3)
              {
                goto LABEL_2982;
              }

              *(a3 + 2) = v620 + 1;
              if (!v620)
              {
                goto LABEL_2984;
              }

              v621 = *v620;
              v622 = ((v620 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v610 < v622 - v612 || v610 - (v622 - v612) <= 3)
              {
                goto LABEL_2982;
              }

              *(a3 + 2) = v622 + 1;
              if (!v622)
              {
                goto LABEL_2984;
              }

              v623 = *v622;
              v624 = ((v622 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v610 < v624 - v612 || v610 - (v624 - v612) <= 3)
              {
LABEL_2982:
                *a3 = 0;
                *(a3 + 1) = 0;
                v1733 = *(a3 + 3);
                if (v1733)
                {
                  if (v610)
                  {
                    (*(*v1733 + 16))(v1733);
                    v610 = *(a3 + 1);
                  }
                }

                else
                {
                  v610 = 0;
                }
              }

              else
              {
                *(a3 + 2) = v624 + 1;
                if (v624)
                {
                  WebKit::RemoteGraphicsContextGL::vertexAttrib4f(this, v616, v619, v621, v623, *v624);
                  goto LABEL_461;
                }
              }

LABEL_2984:
              *a3 = 0;
              *(a3 + 1) = 0;
              v1734 = *(a3 + 3);
              if (v1734 && v610)
              {
                (*(*v1734 + 16))(v1734);
              }

              v771 = *a3;
              v772 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v773 = *(a3 + 3);
              if (v773)
              {
                goto LABEL_2887;
              }

              goto LABEL_461;
            case 0x550:
              v276 = *(a3 + 1);
              v409 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v410 = *a3;
              v411 = v409 - *a3;
              v17 = v276 >= v411;
              v412 = v276 - v411;
              if (!v17 || v412 <= 3)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v409 + 1;
              if (!v409)
              {
                goto LABEL_2581;
              }

              v414 = *v409;
              v415 = (v409 + 7) & 0xFFFFFFFFFFFFFFFCLL;
              if (v276 < v415 - v410 || v276 - (v415 - v410) <= 0xF)
              {
                goto LABEL_2579;
              }

              *(a3 + 2) = v415 + 16;
              if (!v415)
              {
                goto LABEL_2581;
              }

              *buf = v414;
              *&buf[8] = v415;
              buf[16] = 1;
              WebKit::RemoteGraphicsContextGL::vertexAttrib4fv(this, v414, &buf[8]);
              goto LABEL_461;
            case 0x551:
              IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
              if ((v726 & 1) == 0)
              {
                goto LABEL_461;
              }

              v6 = *(this + 7);
              if (v6)
              {
                ++*(v6 + 2);
                WebCore::GraphicsContextGLANGLE::vertexAttribDivisor(v6);
                goto LABEL_459;
              }

              WebCore::GraphicsContextGLANGLE::vertexAttribDivisor(0);
              goto LABEL_461;
            case 0x557:
              v383 = *(a3 + 1);
              v384 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v385 = *a3;
              v386 = v384 - *a3;
              v17 = v383 >= v386;
              v387 = v383 - v386;
              if (!v17 || v387 <= 3)
              {
                goto LABEL_3014;
              }

              *(a3 + 2) = v384 + 1;
              if (!v384)
              {
                goto LABEL_3016;
              }

              v389 = *v384;
              v390 = ((v384 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v383 < v390 - v385 || v383 - (v390 - v385) <= 3)
              {
                goto LABEL_3014;
              }

              *(a3 + 2) = v390 + 1;
              if (!v390)
              {
                goto LABEL_3016;
              }

              v392 = *v390;
              v393 = ((v390 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v383 < v393 - v385 || v383 - (v393 - v385) <= 3)
              {
                goto LABEL_3014;
              }

              v394 = (v393 + 1);
              *(a3 + 2) = v393 + 1;
              if (!v393)
              {
                goto LABEL_3016;
              }

              if (v383 <= &v394[-v385])
              {
                *a3 = 0;
                *(a3 + 1) = 0;
                v1741 = *(a3 + 3);
                if (v1741)
                {
                  if (v383)
                  {
                    (*(*v1741 + 16))(v1741);
                    v383 = *(a3 + 1);
                  }
                }

                else
                {
                  v383 = 0;
                }
              }

              else
              {
                v395 = *v393;
                *(a3 + 2) = v393 + 5;
                if (v393 != -4)
                {
                  v396 = *v394;
                  if (v396 < 2)
                  {
                    v397 = v393 - v385 + 8;
                    v17 = v383 >= v397;
                    v398 = v383 - v397;
                    if (v17 && v398 > 3)
                    {
                      *(a3 + 2) = v393 + 3;
                      if (v393 == -8)
                      {
LABEL_3064:
                        v1690 = v383;
                        v1691 = v385;
LABEL_2891:
                        *a3 = 0;
                        *(a3 + 1) = 0;
                        v1693 = *(a3 + 3);
                        if (v1693 && v1690)
                        {
                          (*(*v1693 + 16))(v1693, v1691, v1690, v395);
                        }

LABEL_3017:
                        v771 = *a3;
                        v772 = *(a3 + 1);
                        *a3 = 0;
                        *(a3 + 1) = 0;
                        v773 = *(a3 + 3);
                        if (!v773)
                        {
                          goto LABEL_461;
                        }

                        goto LABEL_2887;
                      }

                      v399 = ((v393 + 19) & 0xFFFFFFFFFFFFFFF8);
                      if (v383 >= v399 - v385 && v383 - (v399 - v385) > 7)
                      {
                        v400 = v393[2];
                        *(a3 + 2) = v399 + 1;
                        if (v399)
                        {
                          WebKit::RemoteGraphicsContextGL::vertexAttribPointer(this, v389, v392, v395, v396 & 1, v400, *v399);
                          goto LABEL_461;
                        }

                        goto LABEL_3064;
                      }
                    }

                    v1690 = 0;
                    v1691 = 0;
                    *a3 = 0;
                    *(a3 + 1) = 0;
                    v1692 = *(a3 + 3);
                    if (v1692)
                    {
                      (*(*v1692 + 16))(v1692);
                      v1691 = *a3;
                      v1690 = *(a3 + 1);
                    }

                    goto LABEL_2891;
                  }

LABEL_3016:
                  *a3 = 0;
                  *(a3 + 1) = 0;
                  v1743 = *(a3 + 3);
                  if (v1743 && v383)
                  {
                    (*(*v1743 + 16))(v1743);
                  }

                  goto LABEL_3017;
                }
              }

LABEL_3014:
              *a3 = 0;
              *(a3 + 1) = 0;
              v1742 = *(a3 + 3);
              if (v1742)
              {
                if (v383)
                {
                  (*(*v1742 + 16))(v1742);
                  v383 = *(a3 + 1);
                }
              }

              else
              {
                v383 = 0;
              }

              goto LABEL_3016;
            case 0x558:
              IPC::Decoder::decode<std::tuple<int,int,int,int>>(buf, a3);
              if (buf[16] == 1)
              {
                WebKit::RemoteGraphicsContextGL::viewport(this, *buf, *&buf[4], *&buf[8], *&buf[12]);
              }

              goto LABEL_461;
            default:
              if (v5 != 1202)
              {
                if (v5 == 1219)
                {
                  v303 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                  if ((v303 & 0x100000000) == 0)
                  {
                    goto LABEL_461;
                  }

                  LODWORD(v1797[0]) = v303;
                  if (v303 > 0xFFFFFFFD)
                  {
                    goto LABEL_461;
                  }

                  v304 = *(this + 7);
                  if (v304)
                  {
                    ++*(v304 + 2);
                    VertexArray = WebCore::GraphicsContextGLANGLE::createVertexArray(v304);
                    if (*(v304 + 2) == 1)
                    {
                      (*(*v304 + 16))(v304);
                    }

                    else
                    {
                      --*(v304 + 2);
                    }
                  }

                  else
                  {
                    VertexArray = WebCore::GraphicsContextGLANGLE::createVertexArray(0);
                  }

                  LODWORD(v1802) = VertexArray;
                  if (!VertexArray)
                  {
                    goto LABEL_461;
                  }

                  goto LABEL_398;
                }

LABEL_674:
                if (*(a3 + 25) <= 0x504u)
                {
                  if (*(a3 + 25) > 0x4AEu)
                  {
                    if (*(a3 + 25) <= 0x4E0u)
                    {
                      switch(*(a3 + 25))
                      {
                        case 0x4AF:
                          v276 = *(a3 + 1);
                          v364 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                          v365 = *a3;
                          v366 = v364 - *a3;
                          v17 = v276 >= v366;
                          v367 = v276 - v366;
                          if (!v17 || v367 <= 3)
                          {
                            goto LABEL_2579;
                          }

                          *(a3 + 2) = v364 + 1;
                          if (!v364)
                          {
                            goto LABEL_2581;
                          }

                          v368 = *v364;
                          v369 = ((v364 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v276 < v369 - v365 || v276 - (v369 - v365) <= 3)
                          {
                            goto LABEL_2579;
                          }

                          *(a3 + 2) = v369 + 1;
                          if (!v369)
                          {
                            goto LABEL_2581;
                          }

                          v370 = *v369;
                          v371 = ((v369 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v276 < v371 - v365 || v276 - (v371 - v365) <= 3)
                          {
                            goto LABEL_2579;
                          }

                          *(a3 + 2) = v371 + 1;
                          if (!v371)
                          {
                            goto LABEL_2581;
                          }

                          v372 = *v371;
                          v373 = ((v371 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v276 < v373 - v365 || v276 - (v373 - v365) <= 3)
                          {
                            goto LABEL_2579;
                          }

                          *(a3 + 2) = v373 + 1;
                          if (!v373)
                          {
                            goto LABEL_2581;
                          }

                          v374 = *v373;
                          v375 = ((v373 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v276 < v375 - v365 || v276 - (v375 - v365) <= 3)
                          {
                            goto LABEL_2579;
                          }

                          *(a3 + 2) = v375 + 1;
                          if (!v375)
                          {
                            goto LABEL_2581;
                          }

                          v376 = *v375;
                          v377 = ((v375 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v276 < v377 - v365 || v276 - (v377 - v365) <= 3)
                          {
                            goto LABEL_2579;
                          }

                          *(a3 + 2) = v377 + 1;
                          if (!v377)
                          {
                            goto LABEL_2581;
                          }

                          v378 = *v377;
                          v379 = ((v377 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v276 < v379 - v365 || v276 - (v379 - v365) <= 3)
                          {
                            goto LABEL_2579;
                          }

                          *(a3 + 2) = v379 + 1;
                          if (!v379)
                          {
                            goto LABEL_2581;
                          }

                          v380 = *v379;
                          v381 = ((v379 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v276 < v381 - v365 || v276 - (v381 - v365) <= 3)
                          {
                            goto LABEL_2579;
                          }

                          *(a3 + 2) = v381 + 1;
                          if (!v381)
                          {
                            goto LABEL_2581;
                          }

                          v382 = *v381;
                          IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, v1797);
                          if ((v1798 & 1) == 0)
                          {
                            v1721 = *a3;
                            v1722 = *(a3 + 1);
                            *a3 = 0;
                            *(a3 + 1) = 0;
                            v1723 = *(a3 + 3);
                            if (!v1723)
                            {
                              goto LABEL_2582;
                            }

                            if (!v1722)
                            {
                              goto LABEL_2582;
                            }

                            (*(*v1723 + 16))(v1723, v1721);
                            if ((v1798 & 1) == 0)
                            {
                              goto LABEL_2582;
                            }
                          }

                          *buf = v368;
                          *&buf[4] = v370;
                          *&buf[8] = v372;
                          *&buf[12] = v374;
                          *&buf[16] = v376;
                          *&buf[20] = v378;
                          *&buf[24] = v380;
                          *&buf[28] = v382;
                          *&buf[32] = *v1797;
                          buf[48] = 1;
                          WebKit::RemoteGraphicsContextGL::compressedTexImage3D0(this);
                          goto LABEL_461;
                        case 0x4B0:
                          v550 = *(a3 + 1);
                          v862 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                          v863 = *a3;
                          v864 = v862 - *a3;
                          v17 = v550 >= v864;
                          v865 = v550 - v864;
                          if (!v17 || v865 <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v862 + 1;
                          if (!v862)
                          {
                            goto LABEL_3023;
                          }

                          v866 = *v862;
                          v867 = ((v862 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v550 < v867 - v863 || v550 - (v867 - v863) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v867 + 1;
                          if (!v867)
                          {
                            goto LABEL_3023;
                          }

                          v868 = *v867;
                          v869 = ((v867 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v550 < v869 - v863 || v550 - (v869 - v863) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v869 + 1;
                          if (!v869)
                          {
                            goto LABEL_3023;
                          }

                          v870 = *v869;
                          v871 = ((v869 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v550 < v871 - v863 || v550 - (v871 - v863) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v871 + 1;
                          if (!v871)
                          {
                            goto LABEL_3023;
                          }

                          v872 = *v871;
                          v873 = ((v871 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v550 < v873 - v863 || v550 - (v873 - v863) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v873 + 1;
                          if (!v873)
                          {
                            goto LABEL_3023;
                          }

                          v874 = *v873;
                          v875 = ((v873 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v550 < v875 - v863 || v550 - (v875 - v863) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v875 + 1;
                          if (!v875)
                          {
                            goto LABEL_3023;
                          }

                          v876 = *v875;
                          v877 = ((v875 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v550 < v877 - v863 || v550 - (v877 - v863) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v877 + 1;
                          if (!v877)
                          {
                            goto LABEL_3023;
                          }

                          v878 = *v877;
                          v879 = ((v877 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v550 < v879 - v863 || v550 - (v879 - v863) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v879 + 1;
                          if (!v879)
                          {
                            goto LABEL_3023;
                          }

                          v880 = *v879;
                          v881 = ((v879 + 11) & 0xFFFFFFFFFFFFFFF8);
                          if (v550 < v881 - v863 || v550 - (v881 - v863) <= 7)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v881 + 1;
                          if (!v881)
                          {
                            goto LABEL_3023;
                          }

                          WebKit::RemoteGraphicsContextGL::compressedTexImage3D1(this, v866, v868, v870, v872, v874, v876, v878, v880, *v881);
                          goto LABEL_461;
                        case 0x4B3:
                          v276 = *(a3 + 1);
                          v882 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                          v883 = *a3;
                          v884 = v882 - *a3;
                          v17 = v276 >= v884;
                          v885 = v276 - v884;
                          if (!v17 || v885 <= 3)
                          {
                            goto LABEL_2579;
                          }

                          *(a3 + 2) = v882 + 1;
                          if (!v882)
                          {
                            goto LABEL_2581;
                          }

                          v1794 = *v882;
                          v886 = ((v882 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v276 < v886 - v883 || v276 - (v886 - v883) <= 3)
                          {
                            goto LABEL_2579;
                          }

                          *(a3 + 2) = v886 + 1;
                          if (!v886)
                          {
                            goto LABEL_2581;
                          }

                          v1791 = *v886;
                          v887 = ((v886 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v276 < v887 - v883 || v276 - (v887 - v883) <= 3)
                          {
                            goto LABEL_2579;
                          }

                          *(a3 + 2) = v887 + 1;
                          if (!v887)
                          {
                            goto LABEL_2581;
                          }

                          v888 = *v887;
                          v889 = ((v887 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v276 < v889 - v883 || v276 - (v889 - v883) <= 3)
                          {
                            goto LABEL_2579;
                          }

                          *(a3 + 2) = v889 + 1;
                          if (!v889)
                          {
                            goto LABEL_2581;
                          }

                          v890 = *v889;
                          v891 = ((v889 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v276 < v891 - v883 || v276 - (v891 - v883) <= 3)
                          {
                            goto LABEL_2579;
                          }

                          *(a3 + 2) = v891 + 1;
                          if (!v891)
                          {
                            goto LABEL_2581;
                          }

                          v892 = *v891;
                          v893 = ((v891 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v276 < v893 - v883 || v276 - (v893 - v883) <= 3)
                          {
                            goto LABEL_2579;
                          }

                          *(a3 + 2) = v893 + 1;
                          if (!v893)
                          {
                            goto LABEL_2581;
                          }

                          v894 = *v893;
                          v895 = ((v893 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v276 < v895 - v883 || v276 - (v895 - v883) <= 3)
                          {
                            goto LABEL_2579;
                          }

                          *(a3 + 2) = v895 + 1;
                          if (!v895)
                          {
                            goto LABEL_2581;
                          }

                          v896 = *v895;
                          v897 = ((v895 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v276 < v897 - v883 || v276 - (v897 - v883) <= 3)
                          {
                            goto LABEL_2579;
                          }

                          *(a3 + 2) = v897 + 1;
                          if (!v897)
                          {
                            goto LABEL_2581;
                          }

                          v898 = *v897;
                          v899 = ((v897 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v276 < v899 - v883 || v276 - (v899 - v883) <= 3)
                          {
                            goto LABEL_2579;
                          }

                          *(a3 + 2) = v899 + 1;
                          if (!v899)
                          {
                            goto LABEL_2581;
                          }

                          v900 = *v899;
                          v901 = ((v899 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v276 < v901 - v883 || v276 - (v901 - v883) <= 3)
                          {
                            goto LABEL_2579;
                          }

                          *(a3 + 2) = v901 + 1;
                          if (!v901)
                          {
                            goto LABEL_2581;
                          }

                          v902 = *v901;
                          IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, v1797);
                          if ((v1798 & 1) == 0)
                          {
                            v1724 = *a3;
                            v1725 = *(a3 + 1);
                            *a3 = 0;
                            *(a3 + 1) = 0;
                            v1726 = *(a3 + 3);
                            if (!v1726)
                            {
                              goto LABEL_2582;
                            }

                            if (!v1725)
                            {
                              goto LABEL_2582;
                            }

                            (*(*v1726 + 16))(v1726, v1724);
                            if ((v1798 & 1) == 0)
                            {
                              goto LABEL_2582;
                            }
                          }

                          *buf = v1794;
                          *&buf[4] = v1791;
                          *&buf[8] = v888;
                          *&buf[12] = v890;
                          *&buf[16] = v892;
                          *&buf[20] = v894;
                          *&buf[24] = v896;
                          *&buf[28] = v898;
                          *&buf[32] = v900;
                          *&buf[36] = v902;
                          *&buf[40] = *v1797;
                          LOBYTE(v1805) = 1;
                          WebKit::RemoteGraphicsContextGL::compressedTexSubImage3D0(this);
                          goto LABEL_461;
                        case 0x4B4:
                          v550 = *(a3 + 1);
                          v834 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                          v835 = *a3;
                          v836 = v834 - *a3;
                          v17 = v550 >= v836;
                          v837 = v550 - v836;
                          if (!v17 || v837 <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v834 + 1;
                          if (!v834)
                          {
                            goto LABEL_3023;
                          }

                          v838 = *v834;
                          v839 = ((v834 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v550 < v839 - v835 || v550 - (v839 - v835) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v839 + 1;
                          if (!v839)
                          {
                            goto LABEL_3023;
                          }

                          v840 = *v839;
                          v841 = ((v839 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v550 < v841 - v835 || v550 - (v841 - v835) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v841 + 1;
                          if (!v841)
                          {
                            goto LABEL_3023;
                          }

                          v842 = *v841;
                          v843 = ((v841 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v550 < v843 - v835 || v550 - (v843 - v835) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v843 + 1;
                          if (!v843)
                          {
                            goto LABEL_3023;
                          }

                          v844 = *v843;
                          v845 = ((v843 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v550 < v845 - v835 || v550 - (v845 - v835) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v845 + 1;
                          if (!v845)
                          {
                            goto LABEL_3023;
                          }

                          v846 = *v845;
                          v847 = ((v845 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v550 < v847 - v835 || v550 - (v847 - v835) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v847 + 1;
                          if (!v847)
                          {
                            goto LABEL_3023;
                          }

                          v848 = *v847;
                          v849 = ((v847 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v550 < v849 - v835 || v550 - (v849 - v835) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v849 + 1;
                          if (!v849)
                          {
                            goto LABEL_3023;
                          }

                          v850 = *v849;
                          v851 = ((v849 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v550 < v851 - v835 || v550 - (v851 - v835) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v851 + 1;
                          if (!v851)
                          {
                            goto LABEL_3023;
                          }

                          v852 = *v851;
                          v853 = ((v851 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v550 < v853 - v835 || v550 - (v853 - v835) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v853 + 1;
                          if (!v853)
                          {
                            goto LABEL_3023;
                          }

                          v854 = *v853;
                          v855 = ((v853 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v550 < v855 - v835 || v550 - (v855 - v835) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v855 + 1;
                          if (!v855)
                          {
                            goto LABEL_3023;
                          }

                          v856 = *v855;
                          v857 = ((v855 + 11) & 0xFFFFFFFFFFFFFFF8);
                          if (v550 < v857 - v835 || v550 - (v857 - v835) <= 7)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v857 + 1;
                          if (!v857)
                          {
                            goto LABEL_3023;
                          }

                          WebKit::RemoteGraphicsContextGL::compressedTexSubImage3D1(this, v838, v840, v842, v844, v846, v848, v850, v852, v854, v856, *v857);
                          goto LABEL_461;
                        case 0x4B5:
                          v903 = *(a3 + 1);
                          v904 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                          v905 = *a3;
                          v906 = v904 - *a3;
                          v17 = v903 >= v906;
                          v907 = v903 - v906;
                          if (!v17 || v907 <= 3)
                          {
                            goto LABEL_3293;
                          }

                          *(a3 + 2) = v904 + 1;
                          if (!v904)
                          {
                            goto LABEL_3295;
                          }

                          v908 = *v904;
                          v909 = ((v904 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v903 < v909 - v905 || v903 - (v909 - v905) <= 3)
                          {
                            goto LABEL_3293;
                          }

                          *(a3 + 2) = v909 + 1;
                          if (!v909)
                          {
                            goto LABEL_3295;
                          }

                          v910 = *v909;
                          v911 = ((v909 + 11) & 0xFFFFFFFFFFFFFFF8);
                          if (v903 < v911 - v905 || v903 - (v911 - v905) <= 7)
                          {
                            goto LABEL_3293;
                          }

                          *(a3 + 2) = v911 + 1;
                          if (!v911)
                          {
                            goto LABEL_3295;
                          }

                          v912 = *v911;
                          v913 = ((v911 + 15) & 0xFFFFFFFFFFFFFFF8);
                          if (v903 < v913 - v905 || v903 - (v913 - v905) <= 7)
                          {
                            goto LABEL_3293;
                          }

                          *(a3 + 2) = v913 + 1;
                          if (!v913)
                          {
                            goto LABEL_3295;
                          }

                          v914 = *v913;
                          v915 = ((v913 + 15) & 0xFFFFFFFFFFFFFFF8);
                          if (v903 < v915 - v905 || v903 - (v915 - v905) <= 7)
                          {
                            goto LABEL_3293;
                          }

                          *(a3 + 2) = v915 + 1;
                          if (!v915)
                          {
                            goto LABEL_3295;
                          }

                          WebKit::RemoteGraphicsContextGL::copyBufferSubData(this, v908, v910, v912, v914, *v915);
                          goto LABEL_461;
                        case 0x4B8:
                          v550 = *(a3 + 1);
                          v814 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                          v815 = *a3;
                          v816 = v814 - *a3;
                          v17 = v550 >= v816;
                          v817 = v550 - v816;
                          if (!v17 || v817 <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v814 + 1;
                          if (!v814)
                          {
                            goto LABEL_3023;
                          }

                          v818 = *v814;
                          v819 = ((v814 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v550 < v819 - v815 || v550 - (v819 - v815) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v819 + 1;
                          if (!v819)
                          {
                            goto LABEL_3023;
                          }

                          v820 = *v819;
                          v821 = ((v819 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v550 < v821 - v815 || v550 - (v821 - v815) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v821 + 1;
                          if (!v821)
                          {
                            goto LABEL_3023;
                          }

                          v822 = *v821;
                          v823 = ((v821 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v550 < v823 - v815 || v550 - (v823 - v815) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v823 + 1;
                          if (!v823)
                          {
                            goto LABEL_3023;
                          }

                          v824 = *v823;
                          v825 = ((v823 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v550 < v825 - v815 || v550 - (v825 - v815) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v825 + 1;
                          if (!v825)
                          {
                            goto LABEL_3023;
                          }

                          v826 = *v825;
                          v827 = ((v825 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v550 < v827 - v815 || v550 - (v827 - v815) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v827 + 1;
                          if (!v827)
                          {
                            goto LABEL_3023;
                          }

                          v828 = *v827;
                          v829 = ((v827 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v550 < v829 - v815 || v550 - (v829 - v815) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v829 + 1;
                          if (!v829)
                          {
                            goto LABEL_3023;
                          }

                          v830 = *v829;
                          v831 = ((v829 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v550 < v831 - v815 || v550 - (v831 - v815) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v831 + 1;
                          if (!v831)
                          {
                            goto LABEL_3023;
                          }

                          v832 = *v831;
                          v833 = ((v831 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v550 < v833 - v815 || v550 - (v833 - v815) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v833 + 1;
                          if (!v833)
                          {
                            goto LABEL_3023;
                          }

                          WebKit::RemoteGraphicsContextGL::copyTexSubImage3D(this, v818, v820, v822, v824, v826, v828, v830, v832, *v833);
                          goto LABEL_461;
                        case 0x4BC:
                          v916 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v916 & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          LODWORD(v1797[0]) = v916;
                          if (v916 > 0xFFFFFFFD)
                          {
                            goto LABEL_461;
                          }

                          v860 = *(this + 7);
                          if (v860)
                          {
                            ++*(v860 + 2);
                            Query = WebCore::GraphicsContextGLANGLE::createQuery(v860);
                            goto LABEL_1670;
                          }

                          Sampler = WebCore::GraphicsContextGLANGLE::createQuery(0);
                          goto LABEL_2745;
                        case 0x4BF:
                          v859 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v859 & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          LODWORD(v1797[0]) = v859;
                          if (v859 > 0xFFFFFFFD)
                          {
                            goto LABEL_461;
                          }

                          v860 = *(this + 7);
                          if (v860)
                          {
                            ++*(v860 + 2);
                            Query = WebCore::GraphicsContextGLANGLE::createSampler(v860);
                            goto LABEL_1670;
                          }

                          Sampler = WebCore::GraphicsContextGLANGLE::createSampler(0);
                          goto LABEL_2745;
                        case 0x4C2:
                          v917 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v917 & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          LODWORD(v1797[0]) = v917;
                          if (v917 > 0xFFFFFFFD)
                          {
                            goto LABEL_461;
                          }

                          v860 = *(this + 7);
                          if (v860)
                          {
                            ++*(v860 + 2);
                            Query = WebCore::GraphicsContextGLANGLE::createTransformFeedback(v860);
                            goto LABEL_1670;
                          }

                          Sampler = WebCore::GraphicsContextGLANGLE::createTransformFeedback(0);
                          goto LABEL_2745;
                        case 0x4C9:
                          v813 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v813 & 0x100000000) == 0 || (v813 + 2) < 3)
                          {
                            goto LABEL_461;
                          }

                          WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(this + 27, v813);
                          v6 = *(this + 7);
                          if (v6)
                          {
                            ++*(v6 + 2);
                            WebCore::GraphicsContextGLANGLE::deleteQuery(v6);
                            goto LABEL_1173;
                          }

                          WebCore::GraphicsContextGLANGLE::deleteQuery(0);
                          goto LABEL_461;
                        case 0x4CC:
                          v811 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v811 & 0x100000000) == 0 || (v811 + 2) < 3)
                          {
                            goto LABEL_461;
                          }

                          WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(this + 27, v811);
                          v6 = *(this + 7);
                          if (v6)
                          {
                            ++*(v6 + 2);
                            WebCore::GraphicsContextGLANGLE::deleteSampler(v6);
                            goto LABEL_1173;
                          }

                          WebCore::GraphicsContextGLANGLE::deleteSampler(0);
                          goto LABEL_461;
                        case 0x4CE:
                          v919 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
                          if ((v920 & 1) == 0)
                          {
                            goto LABEL_461;
                          }

                          v6 = *(this + 7);
                          if (v6)
                          {
                            ++*(v6 + 2);
                            WebCore::GraphicsContextGLANGLE::deleteSync(v6, v919);
                            goto LABEL_1173;
                          }

                          WebCore::GraphicsContextGLANGLE::deleteSync(0, v919);
                          goto LABEL_461;
                        case 0x4D0:
                          v858 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v858 & 0x100000000) == 0 || (v858 + 2) < 3)
                          {
                            goto LABEL_461;
                          }

                          WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(this + 27, v858);
                          v6 = *(this + 7);
                          if (v6)
                          {
                            ++*(v6 + 2);
                            WebCore::GraphicsContextGLANGLE::deleteTransformFeedback(v6);
                            goto LABEL_1173;
                          }

                          WebCore::GraphicsContextGLANGLE::deleteTransformFeedback(0);
                          goto LABEL_461;
                        case 0x4D1:
                          v812 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v812 & 0x100000000) == 0 || (v812 + 2) < 3)
                          {
                            goto LABEL_461;
                          }

                          WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(this + 27, v812);
                          v6 = *(this + 7);
                          if (v6)
                          {
                            ++*(v6 + 2);
                            WebCore::GraphicsContextGLANGLE::deleteVertexArray(v6);
                            goto LABEL_1173;
                          }

                          WebCore::GraphicsContextGLANGLE::deleteVertexArray(0);
                          break;
                        default:
                          goto LABEL_1493;
                      }

                      goto LABEL_461;
                    }

                    if (*(a3 + 25) <= 0x4ECu)
                    {
                      if (v5 != 1249)
                      {
                        if (v5 == 1253)
                        {
                          if ((IPC::Decoder::decode<std::tuple<unsigned int>>(a3) & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          v6 = *(this + 7);
                          if (!v6)
                          {
                            WebCore::GraphicsContextGLANGLE::endQuery(0);
                            goto LABEL_461;
                          }

                          ++*(v6 + 2);
                          WebCore::GraphicsContextGLANGLE::endQuery(v6);
                          goto LABEL_1173;
                        }

                        if (v5 == 1255)
                        {
                          v6 = *(this + 7);
                          if (!v6)
                          {
                            WebCore::GraphicsContextGLANGLE::endTransformFeedback(0);
                            goto LABEL_461;
                          }

                          ++*(v6 + 2);
                          WebCore::GraphicsContextGLANGLE::endTransformFeedback(v6);
                          goto LABEL_1173;
                        }

                        goto LABEL_1493;
                      }

                      v550 = *(a3 + 1);
                      v952 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                      v953 = *a3;
                      v954 = v952 - *a3;
                      v17 = v550 >= v954;
                      v955 = v550 - v954;
                      if (v17 && v955 > 3)
                      {
                        *(a3 + 2) = v952 + 1;
                        if (!v952)
                        {
                          goto LABEL_3023;
                        }

                        v956 = *v952;
                        v957 = ((v952 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                        if (v550 >= v957 - v953 && v550 - (v957 - v953) > 3)
                        {
                          *(a3 + 2) = v957 + 1;
                          if (!v957)
                          {
                            goto LABEL_3023;
                          }

                          v958 = *v957;
                          v959 = ((v957 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v550 >= v959 - v953 && v550 - (v959 - v953) > 3)
                          {
                            *(a3 + 2) = v959 + 1;
                            if (!v959)
                            {
                              goto LABEL_3023;
                            }

                            v960 = *v959;
                            v961 = ((v959 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                            if (v550 >= v961 - v953 && v550 - (v961 - v953) > 3)
                            {
                              *(a3 + 2) = v961 + 1;
                              if (!v961)
                              {
                                goto LABEL_3023;
                              }

                              v962 = *v961;
                              v963 = ((v961 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                              if (v550 >= v963 - v953 && v550 - (v963 - v953) > 3)
                              {
                                *(a3 + 2) = v963 + 1;
                                if (!v963)
                                {
                                  goto LABEL_3023;
                                }

                                v964 = *v963;
                                v965 = ((v963 + 11) & 0xFFFFFFFFFFFFFFF8);
                                if (v550 >= v965 - v953 && v550 - (v965 - v953) > 7)
                                {
                                  *(a3 + 2) = v965 + 1;
                                  if (v965)
                                  {
                                    WebKit::RemoteGraphicsContextGL::drawRangeElements(this, v956, v958, v960, v962, v964, *v965);
                                    goto LABEL_461;
                                  }

                                  goto LABEL_3023;
                                }
                              }
                            }
                          }
                        }
                      }

LABEL_3021:
                      *a3 = 0;
                      *(a3 + 1) = 0;
                      v1745 = *(a3 + 3);
                      if (v1745)
                      {
                        if (v550)
                        {
                          (*(*v1745 + 16))(v1745);
                          v550 = *(a3 + 1);
                        }
                      }

                      else
                      {
                        v550 = 0;
                      }

                      goto LABEL_3023;
                    }

                    if (v5 != 1261)
                    {
                      if (v5 == 1275)
                      {
                        v6 = *(this + 7);
                        if (!v6)
                        {
                          WebCore::GraphicsContextGLANGLE::pauseTransformFeedback(0);
                          goto LABEL_461;
                        }

                        ++*(v6 + 2);
                        WebCore::GraphicsContextGLANGLE::pauseTransformFeedback(v6);
                        goto LABEL_1173;
                      }

                      if (v5 == 1282)
                      {
                        if ((IPC::Decoder::decode<std::tuple<unsigned int>>(a3) & 0x100000000) == 0)
                        {
                          goto LABEL_461;
                        }

                        v6 = *(this + 7);
                        if (!v6)
                        {
                          WebCore::GraphicsContextGLANGLE::readBuffer(0);
                          goto LABEL_461;
                        }

                        ++*(v6 + 2);
                        WebCore::GraphicsContextGLANGLE::readBuffer(v6);
                        goto LABEL_1173;
                      }

                      goto LABEL_1493;
                    }

                    v550 = *(a3 + 1);
                    v966 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                    v967 = *a3;
                    v968 = v966 - *a3;
                    v17 = v550 >= v968;
                    v969 = v550 - v968;
                    if (!v17 || v969 <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v966 + 1;
                    if (!v966)
                    {
                      goto LABEL_3023;
                    }

                    v970 = *v966;
                    v971 = ((v966 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v971 - v967 || v550 - (v971 - v967) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v971 + 1;
                    if (!v971)
                    {
                      goto LABEL_3023;
                    }

                    v972 = *v971;
                    v973 = ((v971 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v973 - v967 || v550 - (v973 - v967) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v973 + 1;
                    if (!v973)
                    {
                      goto LABEL_3023;
                    }

                    v974 = *v973;
                    v975 = ((v973 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v975 - v967 || v550 - (v975 - v967) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v975 + 1;
                    if (!v975)
                    {
                      goto LABEL_3023;
                    }

                    v976 = *v975;
                    v977 = ((v975 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v977 - v967 || v550 - (v977 - v967) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v977 + 1;
                    if (v977)
                    {
                      WebKit::RemoteGraphicsContextGL::framebufferTextureLayer(this, v970, v972, v974, v976, *v977);
                      goto LABEL_461;
                    }

LABEL_3023:
                    *a3 = 0;
                    *(a3 + 1) = 0;
                    v1746 = *(a3 + 3);
                    if (v1746 && v550)
                    {
                      (*(*v1746 + 16))(v1746);
                    }

LABEL_3024:
                    v1747 = *a3;
                    v1748 = *(a3 + 1);
                    *a3 = 0;
                    *(a3 + 1) = 0;
                    v1749 = *(a3 + 3);
                    if (v1749 && v1748)
                    {
                      (*(*v1749 + 16))(v1749, v1747);
                    }

                    goto LABEL_461;
                  }

                  if (*(a3 + 25) <= 0x492u)
                  {
                    if (*(a3 + 25) > 0x48Cu)
                    {
                      switch(v5)
                      {
                        case 0x48Du:
                          v550 = *(a3 + 1);
                          v981 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                          v982 = *a3;
                          v983 = v981 - *a3;
                          v17 = v550 >= v983;
                          v984 = v550 - v983;
                          if (!v17 || v984 <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v981 + 1;
                          if (!v981)
                          {
                            goto LABEL_3023;
                          }

                          v985 = *v981;
                          v986 = ((v981 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v550 < v986 - v982 || v550 - (v986 - v982) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v986 + 1;
                          if (!v986)
                          {
                            goto LABEL_3023;
                          }

                          v987 = *v986;
                          v988 = ((v986 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v550 < v988 - v982 || v550 - (v988 - v982) <= 3)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v988 + 1;
                          if (!v988)
                          {
                            goto LABEL_3023;
                          }

                          v989 = *v988;
                          v990 = ((v988 + 11) & 0xFFFFFFFFFFFFFFF8);
                          if (v550 < v990 - v982 || v550 - (v990 - v982) <= 7)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v990 + 1;
                          if (!v990)
                          {
                            goto LABEL_3023;
                          }

                          v991 = *v990;
                          v992 = ((v990 + 15) & 0xFFFFFFFFFFFFFFF8);
                          if (v550 < v992 - v982 || v550 - (v992 - v982) <= 7)
                          {
                            goto LABEL_3021;
                          }

                          *(a3 + 2) = v992 + 1;
                          if (v992)
                          {
                            WebKit::RemoteGraphicsContextGL::bindBufferRange(this, v985, v987, v989, v991, *v992);
                            goto LABEL_461;
                          }

                          goto LABEL_3023;
                        case 0x490u:
                          v943 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                          if ((v944 & 1) == 0)
                          {
                            goto LABEL_461;
                          }

                          *buf = HIDWORD(v943);
                          if (v943 > 0xFFFFFFFDFFFFFFFFLL)
                          {
                            goto LABEL_461;
                          }

                          if (HIDWORD(v943))
                          {
                            *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
                          }

                          v274 = *(this + 7);
                          if (!v274)
                          {
                            WebCore::GraphicsContextGLANGLE::bindSampler(0);
                            goto LABEL_461;
                          }

                          ++*(v274 + 2);
                          WebCore::GraphicsContextGLANGLE::bindSampler(v274);
                          goto LABEL_2091;
                        case 0x492u:
                          v794 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                          if ((v795 & 1) == 0)
                          {
                            goto LABEL_461;
                          }

                          *buf = HIDWORD(v794);
                          if (v794 > 0xFFFFFFFDFFFFFFFFLL)
                          {
                            goto LABEL_461;
                          }

                          if (HIDWORD(v794))
                          {
                            *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
                          }

                          v274 = *(this + 7);
                          if (!v274)
                          {
                            WebCore::GraphicsContextGLANGLE::bindTransformFeedback(0);
                            goto LABEL_461;
                          }

                          ++*(v274 + 2);
                          WebCore::GraphicsContextGLANGLE::bindTransformFeedback(v274);
                          goto LABEL_2091;
                      }
                    }

                    else
                    {
                      switch(v5)
                      {
                        case 0x487u:
                          v978 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                          if ((v979 & 1) == 0)
                          {
                            goto LABEL_461;
                          }

                          *buf = HIDWORD(v978);
                          if (v978 > 0xFFFFFFFDFFFFFFFFLL)
                          {
                            goto LABEL_461;
                          }

                          if (HIDWORD(v978))
                          {
                            *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
                          }

                          v274 = *(this + 7);
                          if (!v274)
                          {
                            WebCore::GraphicsContextGLANGLE::beginQuery(0);
                            goto LABEL_461;
                          }

                          ++*(v274 + 2);
                          WebCore::GraphicsContextGLANGLE::beginQuery(v274);
                          goto LABEL_2091;
                        case 0x489u:
                          if ((IPC::Decoder::decode<std::tuple<unsigned int>>(a3) & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          v6 = *(this + 7);
                          if (!v6)
                          {
                            WebCore::GraphicsContextGLANGLE::beginTransformFeedback(0);
                            goto LABEL_461;
                          }

                          ++*(v6 + 2);
                          WebCore::GraphicsContextGLANGLE::beginTransformFeedback(v6);
                          goto LABEL_1173;
                        case 0x48Cu:
                          IPC::Decoder::decode<std::tuple<unsigned int,unsigned int,unsigned int>>(a3);
                          if ((v780 & 0x100000000) != 0)
                          {
                            *buf = v780;
                            if (v780 <= 0xFFFFFFFD)
                            {
                              if (v780)
                              {
                                *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
                              }

                              v1174 = *(this + 7);
                              if (v1174)
                              {
                                ++*(v1174 + 2);
                                WebCore::GraphicsContextGLANGLE::bindBufferBase(v1174);
LABEL_2116:
                                if (*(v1174 + 2) == 1)
                                {
                                  (*(*v1174 + 16))(v1174);
                                }

                                else
                                {
                                  --*(v1174 + 2);
                                }
                              }

                              else
                              {
                                WebCore::GraphicsContextGLANGLE::bindBufferBase(0);
                              }
                            }
                          }

                          goto LABEL_461;
                      }
                    }

LABEL_1493:
                    if (*(a3 + 25) > 0x505u)
                    {
                      switch(*(a3 + 25))
                      {
                        case 0xFBD:
                          v806 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v806 & 0x100000000) != 0)
                          {
                            v807 = *(a3 + 8);
                            if (!v807)
                            {
                              __break(0xC471u);
                              JUMPOUT(0x19D911C3CLL);
                            }

                            v808 = v806;
                            v809 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                            *v809 = &unk_1F10EC710;
                            v809[1] = v807;
                            v809[2] = a2;
                            *buf = v809;
                            WebKit::RemoteGraphicsContextGL::checkFramebufferStatus(this, v808, buf);
                            v810 = *buf;
                            if (*buf)
                            {
                              goto LABEL_2704;
                            }
                          }

                          goto LABEL_461;
                        case 0xFBE:
                        case 0xFC1:
                        case 0xFC4:
                        case 0xFC5:
                        case 0xFC6:
                        case 0xFCE:
                        case 0xFD1:
                        case 0xFD5:
                        case 0xFD8:
                        case 0xFD9:
                        case 0xFDA:
                        case 0xFDB:
                        case 0xFDC:
                        case 0xFDE:
                        case 0xFDF:
                        case 0xFE5:
                        case 0xFE8:
                        case 0xFE9:
                        case 0xFEA:
                        case 0xFEB:
                        case 0xFF5:
                        case 0xFF6:
                        case 0xFF8:
                        case 0xFFA:
                        case 0xFFC:
                        case 0xFFD:
                          goto LABEL_2210;
                        case 0xFBF:
                          IPC::Decoder::decode<WebKit::SharedVideoFrame>(a3, v1797);
                          if (v1801 != 1)
                          {
                            buf[0] = 0;
                            v1811 = 0;
                            goto LABEL_2915;
                          }

                          v1306 = *(a3 + 1);
                          v1307 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                          v1308 = *a3;
                          v1309 = v1307 - *a3;
                          v17 = v1306 >= v1309;
                          v1310 = v1306 - v1309;
                          if (!v17 || v1310 <= 3)
                          {
                            goto LABEL_3269;
                          }

                          *(a3 + 2) = v1307 + 1;
                          if (!v1307)
                          {
                            goto LABEL_3271;
                          }

                          v1796 = *v1307;
                          v1311 = ((v1307 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v1306 < v1311 - v1308 || v1306 - (v1311 - v1308) <= 3)
                          {
                            goto LABEL_3269;
                          }

                          *(a3 + 2) = v1311 + 1;
                          if (!v1311)
                          {
                            goto LABEL_3271;
                          }

                          v1312 = *v1311;
                          v1313 = ((v1311 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v1306 < v1313 - v1308 || v1306 - (v1313 - v1308) <= 3)
                          {
                            goto LABEL_3269;
                          }

                          *(a3 + 2) = v1313 + 1;
                          if (!v1313)
                          {
                            goto LABEL_3271;
                          }

                          v1314 = *v1313;
                          v1315 = ((v1313 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v1306 < v1315 - v1308 || v1306 - (v1315 - v1308) <= 3)
                          {
                            goto LABEL_3269;
                          }

                          *(a3 + 2) = v1315 + 1;
                          if (!v1315)
                          {
                            goto LABEL_3271;
                          }

                          v1316 = *v1315;
                          v1317 = ((v1315 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v1306 < v1317 - v1308 || v1306 - (v1317 - v1308) <= 3)
                          {
                            goto LABEL_3269;
                          }

                          *(a3 + 2) = v1317 + 1;
                          if (!v1317)
                          {
                            goto LABEL_3271;
                          }

                          v1318 = *v1317;
                          v1319 = (v1317 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                          if (v1306 < v1319 - v1308 || v1306 - (v1319 - v1308) <= 3)
                          {
                            goto LABEL_3269;
                          }

                          v1320 = (v1319 + 4);
                          *(a3 + 2) = v1319 + 4;
                          if (!v1319)
                          {
                            goto LABEL_3271;
                          }

                          if (v1306 <= &v1320[-v1308])
                          {
                            *a3 = 0;
                            *(a3 + 1) = 0;
                            v1769 = *(a3 + 3);
                            if (v1769)
                            {
                              if (v1306)
                              {
                                (*(*v1769 + 16))(v1769);
                                v1306 = *(a3 + 1);
                              }
                            }

                            else
                            {
                              v1306 = 0;
                            }
                          }

                          else
                          {
                            v1321 = *v1319;
                            *(a3 + 2) = v1319 + 5;
                            if (v1319 != -4)
                            {
                              v1322 = *v1320;
                              if (v1322 < 2)
                              {
                                if (v1306 <= v1319 + 5 - v1308)
                                {
                                  v1770 = 0;
                                  v1771 = 0;
                                  *a3 = 0;
                                  *(a3 + 1) = 0;
                                  v1772 = *(a3 + 3);
                                  if (v1772)
                                  {
                                    (*(*v1772 + 16))(v1772);
                                    v1770 = 0;
                                    v1773 = *a3;
                                    v1774 = *(a3 + 1);
                                    v1775 = *(a3 + 3);
                                    *a3 = 0;
                                    *(a3 + 1) = 0;
                                    v1771 = 0;
                                    if (v1775)
                                    {
                                      if (v1774)
                                      {
                                        (*(*v1775 + 16))(v1775, v1773);
                                        v1771 = *a3;
                                        v1770 = *(a3 + 1);
                                      }
                                    }
                                  }
                                }

                                else
                                {
                                  *(a3 + 2) = v1319 + 6;
                                  v1323 = *(v1319 + 5);
                                  if (v1323 < 2)
                                  {
                                    std::__tuple_leaf<0ul,WebKit::SharedVideoFrame,false>::__tuple_leaf[abi:sn200100]<WebKit::SharedVideoFrame,0>(buf, v1797);
                                    *&buf[48] = v1796;
                                    *&buf[52] = v1312;
                                    v1805 = v1314;
                                    v1806 = v1316;
                                    v1807 = v1318;
                                    v1808 = v1321;
                                    v1809 = v1322;
                                    v1324 = 1;
                                    v1810 = v1323;
                                    goto LABEL_2395;
                                  }

                                  v1770 = v1306;
                                  v1771 = v1308;
                                }

                                *a3 = 0;
                                *(a3 + 1) = 0;
                                v1776 = *(a3 + 3);
                                if (v1776 && v1770)
                                {
                                  (*(*v1776 + 16))(v1776, v1771, v1770);
                                }

LABEL_3272:
                                v1324 = 0;
                                buf[0] = 0;
LABEL_2395:
                                v1811 = v1324;
                                if ((v1801 & 1) != 0 && v1800 == 2)
                                {
                                  WTF::MachSendRight::~MachSendRight((&v1798 + 8));
                                  v1324 = v1811;
                                }

                                if (v1324)
                                {
                                  goto LABEL_2399;
                                }

LABEL_2915:
                                v1696 = *a3;
                                v1697 = *(a3 + 1);
                                *a3 = 0;
                                *(a3 + 1) = 0;
                                v1698 = *(a3 + 3);
                                if (!v1698)
                                {
                                  goto LABEL_461;
                                }

                                if (!v1697)
                                {
                                  goto LABEL_461;
                                }

                                (*(*v1698 + 16))(v1698, v1696);
                                if ((v1811 & 1) == 0)
                                {
                                  goto LABEL_461;
                                }

LABEL_2399:
                                v1325 = *(a3 + 8);
                                if (!v1325)
                                {
                                  __break(0xC471u);
                                  JUMPOUT(0x19D911DD0);
                                }

                                v1326 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                                *v1326 = &unk_1F10EC648;
                                v1326[1] = v1325;
                                v1326[2] = a2;
                                v1797[0] = v1326;
                                WebKit::RemoteGraphicsContextGL::copyTextureFromVideoFrame(this, buf, *&buf[48], *&buf[52], v1805, v1806, v1807, v1808, v1809, v1810, v1797);
                                v1327 = v1797[0];
                                v1797[0] = 0;
                                if (v1327)
                                {
                                  (*(*v1327 + 8))(v1327);
                                }

                                if ((v1811 & 1) != 0 && buf[40] == 2)
                                {
                                  v1328 = &buf[24];
                                  goto LABEL_2567;
                                }

                                goto LABEL_461;
                              }

LABEL_3271:
                              *a3 = 0;
                              *(a3 + 1) = 0;
                              v1783 = *(a3 + 3);
                              if (v1783 && v1306)
                              {
                                (*(*v1783 + 16))(v1783);
                              }

                              goto LABEL_3272;
                            }
                          }

LABEL_3269:
                          *a3 = 0;
                          *(a3 + 1) = 0;
                          v1782 = *(a3 + 3);
                          if (v1782)
                          {
                            if (v1306)
                            {
                              (*(*v1782 + 16))(v1782);
                              v1306 = *(a3 + 1);
                            }
                          }

                          else
                          {
                            v1306 = 0;
                          }

                          goto LABEL_3271;
                        case 0xFC0:
                          v1329 = IPC::Decoder::decode<WebCore::GraphicsContextGLSurfaceBuffer>(a3);
                          if (v1329 < 0x100u)
                          {
                            goto LABEL_3296;
                          }

                          v1330 = v1329;
                          v1331 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
                          if ((v1332 & 1) == 0)
                          {
                            goto LABEL_3296;
                          }

                          v1333 = *(a3 + 8);
                          if (!v1333)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911DF0);
                          }

                          v1334 = v1331;
                          v1335 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                          *v1335 = &unk_1F10EC5F8;
                          v1335[1] = v1333;
                          v1335[2] = a2;
                          *buf = v1335;
                          WebKit::RemoteGraphicsContextGL::drawSurfaceBufferToImageBuffer(this, v1330 & 1, v1334, buf);
                          v1287 = *buf;
                          *buf = 0;
                          if (v1287)
                          {
                            goto LABEL_2517;
                          }

                          goto LABEL_461;
                        case 0xFC2:
                          v1356 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                          if ((v1357 & 1) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1358 = *(a3 + 8);
                          if (!v1358)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911EB0);
                          }

                          v1359 = v1356;
                          v1360 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                          *v1360 = &unk_1F10EC738;
                          v1360[1] = v1358;
                          v1360[2] = a2;
                          *buf = v1360;
                          WebKit::RemoteGraphicsContextGL::getActiveAttrib(this, v1359, HIDWORD(v1359), buf);
                          goto LABEL_2432;
                        case 0xFC3:
                          v1361 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                          if ((v1362 & 1) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1363 = *(a3 + 8);
                          if (!v1363)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911ED0);
                          }

                          v1364 = v1361;
                          v1365 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                          *v1365 = &unk_1F10EC760;
                          v1365[1] = v1363;
                          v1365[2] = a2;
                          *buf = v1365;
                          WebKit::RemoteGraphicsContextGL::getActiveUniform(this, v1364, HIDWORD(v1364), buf);
LABEL_2432:
                          v810 = *buf;
                          if (*buf)
                          {
                            goto LABEL_2704;
                          }

                          goto LABEL_461;
                        case 0xFC7:
                          IPC::Decoder::decode<std::tuple<unsigned int,WTF::String>>(buf, a3);
                          if (buf[16] == 1)
                          {
                            v1382 = *(a3 + 8);
                            if (!v1382)
                            {
                              __break(0xC471u);
                              JUMPOUT(0x19D911F90);
                            }

                            v1383 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                            *v1383 = &unk_1F10EC788;
                            v1383[1] = v1382;
                            v1383[2] = a2;
                            v1797[0] = v1383;
                            WebKit::RemoteGraphicsContextGL::getAttribLocation(this, *buf, &buf[8], v1797);
                            if (v1797[0])
                            {
                              (*(*v1797[0] + 8))(v1797[0]);
                            }

                            if (buf[16])
                            {
                              v146 = *&buf[8];
                              *&buf[8] = 0;
                              if (v146)
                              {
                                if (atomic_fetch_add_explicit(v146, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  goto LABEL_2466;
                                }
                              }
                            }
                          }

                          goto LABEL_461;
                        case 0xFC8:
                          IPC::Decoder::decode<std::tuple<unsigned int,unsigned long long>>(buf, a3);
                          if (buf[16] == 1)
                          {
                            v1336 = *(a3 + 8);
                            if (!v1336)
                            {
                              __break(0xC471u);
                              JUMPOUT(0x19D911E10);
                            }

                            v1337 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                            *v1337 = &unk_1F10EC8F0;
                            v1337[1] = v1336;
                            v1337[2] = a2;
                            v1797[0] = v1337;
                            WebKit::RemoteGraphicsContextGL::getBooleanv(this, *buf, *&buf[8], v1797);
                            v1338 = v1797[0];
                            if (v1797[0])
                            {
                              goto LABEL_2660;
                            }
                          }

                          goto LABEL_461;
                        case 0xFC9:
                          v1384 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                          if ((v1385 & 1) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1386 = *(a3 + 8);
                          if (!v1386)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911FB0);
                          }

                          v1387 = v1384;
                          v1388 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                          *v1388 = &unk_1F10EC7B0;
                          v1388[1] = v1386;
                          v1388[2] = a2;
                          *buf = v1388;
                          WebKit::RemoteGraphicsContextGL::getBufferParameteri(this, v1387, HIDWORD(v1387), buf);
                          goto LABEL_2491;
                        case 0xFCA:
                          v903 = *(a3 + 1);
                          v1288 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                          v1289 = *a3;
                          v1290 = v1288 - *a3;
                          v17 = v903 >= v1290;
                          v1291 = v903 - v1290;
                          if (!v17 || v1291 <= 3)
                          {
                            goto LABEL_3293;
                          }

                          *(a3 + 2) = v1288 + 1;
                          if (!v1288)
                          {
                            goto LABEL_3295;
                          }

                          v1292 = *v1288;
                          v1293 = ((v1288 + 11) & 0xFFFFFFFFFFFFFFF8);
                          if (v903 < v1293 - v1289 || v903 - (v1293 - v1289) <= 7)
                          {
                            goto LABEL_3293;
                          }

                          *(a3 + 2) = v1293 + 1;
                          if (!v1293)
                          {
                            goto LABEL_3295;
                          }

                          v1294 = *v1293;
                          v1295 = ((v1293 + 15) & 0xFFFFFFFFFFFFFFF8);
                          if (v903 < v1295 - v1289 || v903 - (v1295 - v1289) <= 7)
                          {
                            goto LABEL_3293;
                          }

                          *(a3 + 2) = v1295 + 1;
                          if (!v1295)
                          {
                            goto LABEL_3295;
                          }

                          v1296 = *(a3 + 8);
                          if (!v1296)
                          {
                            goto LABEL_3187;
                          }

                          v1297 = *v1295;
                          v1298 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                          *v1298 = &unk_1F10EC670;
                          v1298[1] = v1296;
                          v1298[2] = a2;
                          *buf = v1298;
                          WebKit::RemoteGraphicsContextGL::getBufferSubDataInline(this, v1292, v1294, v1297, buf);
                          v1287 = *buf;
                          *buf = 0;
                          if (v1287)
                          {
                            goto LABEL_2517;
                          }

                          goto LABEL_461;
                        case 0xFCB:
                          v1389 = *(a3 + 1);
                          v1390 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                          v1391 = *a3;
                          v1392 = v1390 - *a3;
                          v17 = v1389 >= v1392;
                          v1393 = v1389 - v1392;
                          if (!v17 || v1393 <= 3)
                          {
                            goto LABEL_3126;
                          }

                          *(a3 + 2) = v1390 + 1;
                          if (!v1390)
                          {
                            goto LABEL_3128;
                          }

                          v1394 = *v1390;
                          v1395 = ((v1390 + 11) & 0xFFFFFFFFFFFFFFF8);
                          if (v1389 < v1395 - v1391 || v1389 - (v1395 - v1391) <= 7)
                          {
                            goto LABEL_3126;
                          }

                          *(a3 + 2) = v1395 + 1;
                          if (!v1395)
                          {
                            goto LABEL_3128;
                          }

                          v1396 = *v1395;
                          v1397 = ((v1395 + 15) & 0xFFFFFFFFFFFFFFF8);
                          if (v1389 < v1397 - v1391 || v1389 - (v1397 - v1391) <= 7)
                          {
LABEL_3126:
                            *a3 = 0;
                            *(a3 + 1) = 0;
                            v1759 = *(a3 + 3);
                            if (v1759)
                            {
                              if (v1389)
                              {
                                (*(*v1759 + 16))(v1759);
                                v1389 = *(a3 + 1);
                              }
                            }

                            else
                            {
                              v1389 = 0;
                            }
                          }

                          else
                          {
                            *(a3 + 2) = v1397 + 1;
                            if (v1397)
                            {
                              v1398 = *v1397;
                              IPC::ArgumentCoder<WebCore::SharedMemoryHandle,void>::decode(a3, v1797);
                              if (v1798 & 1) != 0 || (v1709 = *a3, v1710 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v1711 = *(a3 + 3)) != 0) && v1710 && ((*(*v1711 + 16))(v1711, v1709), (v1798))
                              {
                                *buf = v1394;
                                *&buf[8] = v1396;
                                *&buf[16] = v1398;
                                WTF::MachSendRight::MachSendRight();
                                *&buf[32] = v1797[1];
                                buf[40] = 1;
                                if ((v1798 & 1) == 0)
                                {
                                  goto LABEL_2483;
                                }

                                WTF::MachSendRight::~MachSendRight(v1797);
                                if (buf[40])
                                {
                                  goto LABEL_2483;
                                }

LABEL_2948:
                                v1712 = *a3;
                                v1713 = *(a3 + 1);
                                *a3 = 0;
                                *(a3 + 1) = 0;
                                v1714 = *(a3 + 3);
                                if (!v1714)
                                {
                                  goto LABEL_461;
                                }

                                if (!v1713)
                                {
                                  goto LABEL_461;
                                }

                                (*(*v1714 + 16))(v1714, v1712);
                                if ((buf[40] & 1) == 0)
                                {
                                  goto LABEL_461;
                                }

LABEL_2483:
                                v1399 = *(a3 + 8);
                                if (!v1399)
                                {
                                  __break(0xC471u);
                                  JUMPOUT(0x19D911FD0);
                                }

                                v1400 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                                *v1400 = &unk_1F10EC698;
                                v1400[1] = v1399;
                                v1400[2] = a2;
                                *&v1802 = v1400;
                                v1401 = *buf;
                                v1402 = *&buf[8];
                                v1403 = *&buf[16];
                                WTF::MachSendRight::MachSendRight();
                                v1797[1] = *&buf[32];
                                WebKit::RemoteGraphicsContextGL::getBufferSubDataSharedMemory(this, v1401, v1402, v1403, v1797, &v1802);
                                WTF::MachSendRight::~MachSendRight(v1797);
                                v1404 = v1802;
                                *&v1802 = 0;
                                if (v1404)
                                {
                                  (*(*v1404 + 8))(v1404);
                                }

                                if (buf[40])
                                {
                                  v1328 = &buf[24];
                                  goto LABEL_2567;
                                }

                                goto LABEL_461;
                              }

LABEL_2947:
                              buf[0] = 0;
                              buf[40] = 0;
                              goto LABEL_2948;
                            }
                          }

LABEL_3128:
                          *a3 = 0;
                          *(a3 + 1) = 0;
                          v1760 = *(a3 + 3);
                          if (v1760 && v1389)
                          {
                            (*(*v1760 + 16))(v1760);
                          }

                          goto LABEL_2947;
                        case 0xFCC:
                          v1339 = *(a3 + 8);
                          if (!v1339)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911E30);
                          }

                          v1340 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                          *v1340 = &unk_1F10EC5D0;
                          v1340[1] = v1339;
                          v1340[2] = a2;
                          *buf = v1340;
                          WebKit::RemoteGraphicsContextGL::getErrors(this, buf);
                          v1287 = *buf;
                          *buf = 0;
                          if (v1287)
                          {
                            goto LABEL_2517;
                          }

                          goto LABEL_461;
                        case 0xFCD:
                          IPC::Decoder::decode<std::tuple<unsigned int,unsigned long long>>(buf, a3);
                          if (buf[16] != 1)
                          {
                            goto LABEL_461;
                          }

                          v1366 = *(a3 + 8);
                          if (!v1366)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911EF0);
                          }

                          v1367 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                          *v1367 = &unk_1F10EC800;
                          v1367[1] = v1366;
                          v1367[2] = a2;
                          v1797[0] = v1367;
                          WebKit::RemoteGraphicsContextGL::getFloatv(this, *buf, *&buf[8], v1797);
                          goto LABEL_2437;
                        case 0xFCF:
                          v1341 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int,unsigned int>>(a3);
                          if ((v1342 & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1343 = *(a3 + 8);
                          if (!v1343)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911E50);
                          }

                          v1344 = v1341;
                          v1345 = v1342;
                          v1346 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                          *v1346 = &unk_1F10EC918;
                          v1346[1] = v1343;
                          v1346[2] = a2;
                          *buf = v1346;
                          WebKit::RemoteGraphicsContextGL::getFramebufferAttachmentParameteri(this, v1344, HIDWORD(v1344), v1345, buf);
                          goto LABEL_2491;
                        case 0xFD0:
                          v1418 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v1418 & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1419 = *(a3 + 8);
                          if (!v1419)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D912050);
                          }

                          v1420 = v1418;
                          v1421 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                          *v1421 = &unk_1F10EC878;
                          v1421[1] = v1419;
                          v1421[2] = a2;
                          *buf = v1421;
                          WebKit::RemoteGraphicsContextGL::getInteger64(this, v1420, buf);
                          goto LABEL_2505;
                        case 0xFD2:
                          v1299 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                          if ((v1300 & 1) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1301 = *(a3 + 8);
                          if (!v1301)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911D90);
                          }

                          v1302 = v1299;
                          v1303 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                          *v1303 = &unk_1F10EC8A0;
                          v1303[1] = v1301;
                          v1303[2] = a2;
                          *buf = v1303;
                          WebKit::RemoteGraphicsContextGL::getInteger64i(this, v1302, HIDWORD(v1302), buf);
LABEL_2505:
                          v810 = *buf;
                          if (*buf)
                          {
                            goto LABEL_2704;
                          }

                          goto LABEL_461;
                        case 0xFD3:
                          v1422 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                          if (v1423)
                          {
                            v1424 = *(a3 + 8);
                            if (!v1424)
                            {
                              __break(0xC471u);
                              JUMPOUT(0x19D912070);
                            }

                            v1425 = v1422;
                            v1426 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                            *v1426 = &unk_1F10EC850;
                            v1426[1] = v1424;
                            v1426[2] = a2;
                            *buf = v1426;
                            WebKit::RemoteGraphicsContextGL::getIntegeri_v(this, v1425, HIDWORD(v1425), buf);
                            v810 = *buf;
                            if (*buf)
                            {
                              goto LABEL_2704;
                            }
                          }

                          goto LABEL_461;
                        case 0xFD4:
                          IPC::Decoder::decode<std::tuple<unsigned int,unsigned long long>>(buf, a3);
                          if (buf[16] != 1)
                          {
                            goto LABEL_461;
                          }

                          v1304 = *(a3 + 8);
                          if (!v1304)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911DB0);
                          }

                          v1305 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                          *v1305 = &unk_1F10EC828;
                          v1305[1] = v1304;
                          v1305[2] = a2;
                          v1797[0] = v1305;
                          WebKit::RemoteGraphicsContextGL::getIntegerv(this, *buf, *&buf[8], v1797);
                          goto LABEL_2457;
                        case 0xFD6:
                          v1347 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v1347 & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1348 = *(a3 + 8);
                          if (!v1348)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911E70);
                          }

                          v1349 = v1347;
                          v1350 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                          *v1350 = &unk_1F10EC940;
                          v1350[1] = v1348;
                          v1350[2] = a2;
                          *buf = v1350;
                          WebKit::RemoteGraphicsContextGL::getProgramInfoLog(this, v1349, buf);
                          goto LABEL_2496;
                        case 0xFD7:
                          v1405 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                          if ((v1406 & 1) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1407 = *(a3 + 8);
                          if (!v1407)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911FF0);
                          }

                          v1408 = v1405;
                          v1409 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                          *v1409 = &unk_1F10EC8C8;
                          v1409[1] = v1407;
                          v1409[2] = a2;
                          *buf = v1409;
                          WebKit::RemoteGraphicsContextGL::getProgrami(this, v1408, HIDWORD(v1408), buf);
                          goto LABEL_2491;
                        case 0xFDD:
                          v1351 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                          if ((v1352 & 1) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1353 = *(a3 + 8);
                          if (!v1353)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911E90);
                          }

                          v1354 = v1351;
                          v1355 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                          *v1355 = &unk_1F10EC968;
                          v1355[1] = v1353;
                          v1355[2] = a2;
                          *buf = v1355;
                          WebKit::RemoteGraphicsContextGL::getRenderbufferParameteri(this, v1354, HIDWORD(v1354), buf);
                          goto LABEL_2491;
                        case 0xFE0:
                          v1265 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v1265 & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1266 = *(a3 + 8);
                          if (!v1266)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911CFCLL);
                          }

                          v1267 = v1265;
                          v1268 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                          *v1268 = &unk_1F10EC9B8;
                          v1268[1] = v1266;
                          v1268[2] = a2;
                          *buf = v1268;
                          WebKit::RemoteGraphicsContextGL::getShaderInfoLog(this, v1267, buf);
                          goto LABEL_2496;
                        case 0xFE1:
                          v1254 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                          if (v1255)
                          {
                            v1256 = *(a3 + 8);
                            if (!v1256)
                            {
                              __break(0xC471u);
                              JUMPOUT(0x19D911C9CLL);
                            }

                            v1257 = v1254;
                            v1258 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                            *v1258 = &unk_1F10EC9E0;
                            v1258[1] = v1256;
                            v1258[2] = a2;
                            *buf = v1258;
                            WebKit::RemoteGraphicsContextGL::getShaderPrecisionFormat(this, v1257, HIDWORD(v1257), buf);
                            v810 = *buf;
                            if (*buf)
                            {
                              goto LABEL_2704;
                            }
                          }

                          goto LABEL_461;
                        case 0xFE2:
                          v1410 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v1410 & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1411 = *(a3 + 8);
                          if (!v1411)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D912010);
                          }

                          v1412 = v1410;
                          v1413 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                          *v1413 = &unk_1F10ECA08;
                          v1413[1] = v1411;
                          v1413[2] = a2;
                          *buf = v1413;
                          WebKit::RemoteGraphicsContextGL::getShaderSource(this, v1412, buf);
                          goto LABEL_2496;
                        case 0xFE3:
                          v1368 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                          if ((v1369 & 1) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1370 = *(a3 + 8);
                          if (!v1370)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911F10);
                          }

                          v1371 = v1368;
                          v1372 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                          *v1372 = &unk_1F10EC990;
                          v1372[1] = v1370;
                          v1372[2] = a2;
                          *buf = v1372;
                          WebKit::RemoteGraphicsContextGL::getShaderi(this, v1371, HIDWORD(v1371), buf);
                          goto LABEL_2491;
                        case 0xFE4:
                          v1373 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v1373 & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1374 = *(a3 + 8);
                          if (!v1374)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911F30);
                          }

                          v1375 = v1373;
                          v1376 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                          *v1376 = &unk_1F10EC7D8;
                          v1376[1] = v1374;
                          v1376[2] = a2;
                          *buf = v1376;
                          WebKit::RemoteGraphicsContextGL::getString(this, v1375, buf);
LABEL_2496:
                          v810 = *buf;
                          if (*buf)
                          {
                            goto LABEL_2704;
                          }

                          goto LABEL_461;
                        case 0xFE6:
                          v1431 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                          if (v1432)
                          {
                            v1433 = *(a3 + 8);
                            if (!v1433)
                            {
                              __break(0xC471u);
                              JUMPOUT(0x19D9120B0);
                            }

                            v1434 = v1431;
                            v1435 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                            *v1435 = &unk_1F10ECA30;
                            v1435[1] = v1433;
                            v1435[2] = a2;
                            *buf = v1435;
                            WebKit::RemoteGraphicsContextGL::getTexParameterf(this, v1434, HIDWORD(v1434), buf);
                            v1287 = *buf;
                            if (*buf)
                            {
                              goto LABEL_2517;
                            }
                          }

                          goto LABEL_461;
                        case 0xFE7:
                          v1269 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                          if ((v1270 & 1) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1271 = *(a3 + 8);
                          if (!v1271)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911D1CLL);
                          }

                          v1272 = v1269;
                          v1273 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                          *v1273 = &unk_1F10ECA58;
                          v1273[1] = v1271;
                          v1273[2] = a2;
                          *buf = v1273;
                          WebKit::RemoteGraphicsContextGL::getTexParameteri(this, v1272, HIDWORD(v1272), buf);
LABEL_2491:
                          v810 = *buf;
                          if (*buf)
                          {
                            goto LABEL_2704;
                          }

                          goto LABEL_461;
                        case 0xFEC:
                          IPC::Decoder::decode<std::tuple<unsigned int,WTF::String>>(buf, a3);
                          if (buf[16] == 1)
                          {
                            v1377 = *(a3 + 8);
                            if (!v1377)
                            {
                              __break(0xC471u);
                              JUMPOUT(0x19D911F50);
                            }

                            v1378 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                            *v1378 = &unk_1F10ECAF8;
                            v1378[1] = v1377;
                            v1378[2] = a2;
                            v1797[0] = v1378;
                            WebKit::RemoteGraphicsContextGL::getUniformLocation(this, *buf, &buf[8], v1797);
LABEL_2448:
                            v1379 = v1797[0];
                            if (v1797[0])
                            {
LABEL_2449:
                              (*(*v1797[0] + 8))(v1379);
                            }

LABEL_2450:
                            if (buf[16])
                            {
                              v146 = *&buf[8];
                              *&buf[8] = 0;
                              if (v146)
                              {
                                if (atomic_fetch_add_explicit(v146, 0xFFFFFFFE, memory_order_relaxed) == 2)
                                {
                                  goto LABEL_2466;
                                }
                              }
                            }
                          }

                          goto LABEL_461;
                        case 0xFED:
                          IPC::Decoder::decode<std::tuple<unsigned int,int,unsigned long long>>(buf, a3);
                          if (buf[16] != 1)
                          {
                            goto LABEL_461;
                          }

                          v1259 = *(a3 + 8);
                          if (!v1259)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911CBCLL);
                          }

                          v1260 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                          *v1260 = &unk_1F10ECA80;
                          v1260[1] = v1259;
                          v1260[2] = a2;
                          v1797[0] = v1260;
                          WebKit::RemoteGraphicsContextGL::getUniformfv(this, *buf, *&buf[4], *&buf[8], v1797);
LABEL_2437:
                          v1338 = v1797[0];
                          if (v1797[0])
                          {
                            goto LABEL_2660;
                          }

                          goto LABEL_461;
                        case 0xFEE:
                          IPC::Decoder::decode<std::tuple<unsigned int,int,unsigned long long>>(buf, a3);
                          if (buf[16] != 1)
                          {
                            goto LABEL_461;
                          }

                          v1380 = *(a3 + 8);
                          if (!v1380)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911F70);
                          }

                          v1381 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                          *v1381 = &unk_1F10ECAA8;
                          v1381[1] = v1380;
                          v1381[2] = a2;
                          v1797[0] = v1381;
                          WebKit::RemoteGraphicsContextGL::getUniformiv(this, *buf, *&buf[4], *&buf[8], v1797);
LABEL_2457:
                          v1338 = v1797[0];
                          if (v1797[0])
                          {
LABEL_2660:
                            (*(*v1797[0] + 8))(v1338);
                          }

                          goto LABEL_461;
                        case 0xFEF:
                          IPC::Decoder::decode<std::tuple<unsigned int,int,unsigned long long>>(buf, a3);
                          if (buf[16] == 1)
                          {
                            v1436 = *(a3 + 8);
                            if (!v1436)
                            {
                              __break(0xC471u);
                              JUMPOUT(0x19D9120D0);
                            }

                            v1437 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                            *v1437 = &unk_1F10ECAD0;
                            v1437[1] = v1436;
                            v1437[2] = a2;
                            v1797[0] = v1437;
                            WebKit::RemoteGraphicsContextGL::getUniformuiv(this, *buf, *&buf[4], *&buf[8], v1797);
                            v1338 = v1797[0];
                            if (v1797[0])
                            {
                              goto LABEL_2660;
                            }
                          }

                          goto LABEL_461;
                        case 0xFF0:
                          v1438 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                          if (v1439)
                          {
                            v1440 = *(a3 + 8);
                            if (!v1440)
                            {
                              __break(0xC471u);
                              JUMPOUT(0x19D9120F0);
                            }

                            v1441 = v1438;
                            v1442 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                            *v1442 = &unk_1F10ECB20;
                            v1442[1] = v1440;
                            v1442[2] = a2;
                            *buf = v1442;
                            WebKit::RemoteGraphicsContextGL::getVertexAttribOffset(this, v1441, HIDWORD(v1441), buf);
LABEL_2525:
                            v810 = *buf;
                            if (*buf)
                            {
                              goto LABEL_2704;
                            }
                          }

                          goto LABEL_461;
                        case 0xFF1:
                          v1443 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v1443 & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1444 = *(a3 + 8);
                          if (!v1444)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D912110);
                          }

                          v1445 = v1443;
                          v1446 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                          *v1446 = &unk_1F10ECB48;
                          v1446[1] = v1444;
                          v1446[2] = a2;
                          *buf = v1446;
                          WebKit::RemoteGraphicsContextGL::isBuffer(this, v1445, buf);
                          goto LABEL_2559;
                        case 0xFF2:
                          v1447 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v1447 & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1448 = *(a3 + 8);
                          if (!v1448)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D912130);
                          }

                          v1449 = v1447;
                          v1450 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                          *v1450 = &unk_1F10ECB70;
                          v1450[1] = v1448;
                          v1450[2] = a2;
                          *buf = v1450;
                          WebKit::RemoteGraphicsContextGL::isEnabled(this, v1449, buf);
                          goto LABEL_2559;
                        case 0xFF3:
                          v1250 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v1250 & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1251 = *(a3 + 8);
                          if (!v1251)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911C7CLL);
                          }

                          v1252 = v1250;
                          v1253 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                          *v1253 = &unk_1F10ECB98;
                          v1253[1] = v1251;
                          v1253[2] = a2;
                          *buf = v1253;
                          WebKit::RemoteGraphicsContextGL::isFramebuffer(this, v1252, buf);
                          goto LABEL_2559;
                        case 0xFF4:
                          v1261 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v1261 & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1262 = *(a3 + 8);
                          if (!v1262)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D911CDCLL);
                          }

                          v1263 = v1261;
                          v1264 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                          *v1264 = &unk_1F10ECBC0;
                          v1264[1] = v1262;
                          v1264[2] = a2;
                          *buf = v1264;
                          WebKit::RemoteGraphicsContextGL::isProgram(this, v1263, buf);
                          goto LABEL_2559;
                        case 0xFF7:
                          v1427 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v1427 & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1428 = *(a3 + 8);
                          if (!v1428)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D912090);
                          }

                          v1429 = v1427;
                          v1430 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                          *v1430 = &unk_1F10ECBE8;
                          v1430[1] = v1428;
                          v1430[2] = a2;
                          *buf = v1430;
                          WebKit::RemoteGraphicsContextGL::isRenderbuffer(this, v1429, buf);
                          goto LABEL_2559;
                        case 0xFF9:
                          v1451 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v1451 & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1452 = *(a3 + 8);
                          if (!v1452)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D912150);
                          }

                          v1453 = v1451;
                          v1454 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                          *v1454 = &unk_1F10ECC10;
                          v1454[1] = v1452;
                          v1454[2] = a2;
                          *buf = v1454;
                          WebKit::RemoteGraphicsContextGL::isShader(this, v1453, buf);
                          goto LABEL_2559;
                        case 0xFFB:
                          v1473 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                          if ((v1473 & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          v1474 = *(a3 + 8);
                          if (!v1474)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D912190);
                          }

                          v1475 = v1473;
                          v1476 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                          *v1476 = &unk_1F10ECC38;
                          v1476[1] = v1474;
                          v1476[2] = a2;
                          *buf = v1476;
                          WebKit::RemoteGraphicsContextGL::isTexture(this, v1475, buf);
LABEL_2559:
                          v810 = *buf;
                          if (*buf)
                          {
LABEL_2704:
                            (*(**buf + 8))(v810);
                          }

                          goto LABEL_461;
                        case 0xFFE:
                          IPC::Decoder::decode<std::tuple<IPC::Semaphore>>(a3, buf);
                          if (buf[8] != 1)
                          {
                            goto LABEL_461;
                          }

                          v1477 = *(a3 + 8);
                          if (!v1477)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D9121B0);
                          }

                          v1478 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                          *v1478 = &unk_1F10EC5A8;
                          v1478[1] = v1477;
                          v1478[2] = a2;
                          v1797[0] = v1478;
                          (*(*this + 48))(this, buf, v1797);
                          v1479 = v1797[0];
                          v1797[0] = 0;
                          if (v1479)
                          {
                            (*(*v1479 + 8))(v1479);
                          }

                          if ((buf[8] & 1) == 0)
                          {
                            goto LABEL_461;
                          }

                          IPC::Semaphore::destroy(buf);
                          v1328 = buf;
                          goto LABEL_2567;
                        case 0xFFF:
                          IPC::Decoder::decode<WebCore::IntRect>(a3, buf);
                          if (buf[16] != 1)
                          {
                            goto LABEL_3296;
                          }

                          v903 = *(a3 + 1);
                          v1274 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                          v1275 = *a3;
                          v1276 = v1274 - *a3;
                          v17 = v903 >= v1276;
                          v1277 = v903 - v1276;
                          if (!v17 || v1277 <= 3)
                          {
                            goto LABEL_3293;
                          }

                          *(a3 + 2) = v1274 + 1;
                          if (!v1274)
                          {
                            goto LABEL_3295;
                          }

                          v1278 = *v1274;
                          v1279 = ((v1274 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v903 < v1279 - v1275 || v903 - (v1279 - v1275) <= 3)
                          {
                            goto LABEL_3293;
                          }

                          v1280 = (v1279 + 1);
                          *(a3 + 2) = v1279 + 1;
                          if (!v1279)
                          {
                            goto LABEL_3295;
                          }

                          if (v903 <= &v1280[-v1275])
                          {
                            *a3 = 0;
                            *(a3 + 1) = 0;
                            v1779 = *(a3 + 3);
                            if (v1779)
                            {
                              if (v903)
                              {
                                (*(*v1779 + 16))(v1779);
                                v903 = *(a3 + 1);
                              }
                            }

                            else
                            {
                              v903 = 0;
                            }
                          }

                          else
                          {
                            v1281 = *v1279;
                            *(a3 + 2) = v1279 + 5;
                            if (v1279 != -4)
                            {
                              v1282 = *v1280;
                              if (v1282 < 2)
                              {
                                v1283 = *(a3 + 8);
                                if (v1283)
                                {
                                  v1284 = *buf;
                                  v1285 = *&buf[8];
                                  v1286 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                                  *v1286 = &unk_1F10EC6C0;
                                  v1286[1] = v1283;
                                  v1286[2] = a2;
                                  *buf = v1286;
                                  WebKit::RemoteGraphicsContextGL::readPixelsInline(this, v1284, v1285, v1278, v1281, v1282 & 1, buf);
                                  v1287 = *buf;
                                  *buf = 0;
                                  if (v1287)
                                  {
LABEL_2517:
                                    (*(*v1287 + 8))(v1287);
                                  }

                                  goto LABEL_461;
                                }

                                __break(0xC471u);
LABEL_3186:
                                __break(1u);
LABEL_3187:
                                __break(0xC471u);
                                JUMPOUT(0x19D911D70);
                              }

                              goto LABEL_3295;
                            }
                          }

                          goto LABEL_3293;
                        case 0x1000:
                          IPC::Decoder::decode<WebCore::IntRect>(a3, &v1802);
                          if ((v1803 & 1) == 0)
                          {
                            goto LABEL_2953;
                          }

                          v1455 = *(a3 + 1);
                          v1456 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                          v1457 = *a3;
                          v1458 = v1456 - *a3;
                          v17 = v1455 >= v1458;
                          v1459 = v1455 - v1458;
                          if (!v17 || v1459 <= 3)
                          {
                            goto LABEL_3275;
                          }

                          *(a3 + 2) = v1456 + 1;
                          if (!v1456)
                          {
                            goto LABEL_3277;
                          }

                          v1460 = *v1456;
                          v1461 = ((v1456 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v1455 < v1461 - v1457 || v1455 - (v1461 - v1457) <= 3)
                          {
                            goto LABEL_3275;
                          }

                          v1462 = (v1461 + 1);
                          *(a3 + 2) = v1461 + 1;
                          if (!v1461)
                          {
                            goto LABEL_3277;
                          }

                          if (v1455 <= &v1462[-v1457])
                          {
                            *a3 = 0;
                            *(a3 + 1) = 0;
                            v1777 = *(a3 + 3);
                            if (v1777)
                            {
                              if (v1455)
                              {
                                (*(*v1777 + 16))(v1777);
                                v1455 = *(a3 + 1);
                              }
                            }

                            else
                            {
                              v1455 = 0;
                            }
                          }

                          else
                          {
                            v1463 = *v1461;
                            *(a3 + 2) = v1461 + 5;
                            if (v1461 != -4)
                            {
                              v1464 = *v1462;
                              if (v1464 < 2)
                              {
                                IPC::ArgumentCoder<WebCore::SharedMemoryHandle,void>::decode(a3, v1797);
                                if (v1798 & 1) != 0 || (v1715 = *a3, v1716 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v1717 = *(a3 + 3)) != 0) && v1716 && ((*(*v1717 + 16))(v1717, v1715), (v1798))
                                {
                                  if ((v1803 & 1) == 0)
                                  {
                                    goto LABEL_3186;
                                  }

                                  *buf = v1802;
                                  *&buf[16] = v1460;
                                  *&buf[20] = v1463;
                                  buf[24] = v1464;
                                  WTF::MachSendRight::MachSendRight();
                                  *&buf[40] = v1797[1];
                                  buf[48] = 1;
                                  if (v1798 & 1) == 0 || (WTF::MachSendRight::~MachSendRight(v1797), (buf[48]))
                                  {
LABEL_2551:
                                    v1465 = *(a3 + 8);
                                    if (!v1465)
                                    {
                                      __break(0xC471u);
                                      JUMPOUT(0x19D912170);
                                    }

                                    v1466 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                                    *v1466 = &unk_1F10EC6E8;
                                    v1466[1] = v1465;
                                    v1466[2] = a2;
                                    *&v1802 = v1466;
                                    v1467 = *buf;
                                    v1468 = *&buf[8];
                                    v1469 = *&buf[16];
                                    v1470 = *&buf[20];
                                    v1471 = buf[24];
                                    WTF::MachSendRight::MachSendRight();
                                    v1797[1] = *&buf[40];
                                    WebKit::RemoteGraphicsContextGL::readPixelsSharedMemory(this, v1467, v1468, v1469, v1470, v1471, v1797, &v1802);
                                    WTF::MachSendRight::~MachSendRight(v1797);
                                    v1472 = v1802;
                                    *&v1802 = 0;
                                    if (v1472)
                                    {
                                      (*(*v1472 + 8))(v1472);
                                    }

                                    if (buf[48])
                                    {
                                      v1328 = &buf[32];
LABEL_2567:
                                      WTF::MachSendRight::~MachSendRight(v1328);
                                    }

                                    goto LABEL_461;
                                  }

LABEL_2954:
                                  v1718 = *a3;
                                  v1719 = *(a3 + 1);
                                  *a3 = 0;
                                  *(a3 + 1) = 0;
                                  v1720 = *(a3 + 3);
                                  if (!v1720)
                                  {
                                    goto LABEL_461;
                                  }

                                  if (!v1719)
                                  {
                                    goto LABEL_461;
                                  }

                                  (*(*v1720 + 16))(v1720, v1718);
                                  if ((buf[48] & 1) == 0)
                                  {
                                    goto LABEL_461;
                                  }

                                  goto LABEL_2551;
                                }

LABEL_2953:
                                buf[0] = 0;
                                buf[48] = 0;
                                goto LABEL_2954;
                              }

LABEL_3277:
                              *a3 = 0;
                              *(a3 + 1) = 0;
                              v1785 = *(a3 + 3);
                              if (v1785 && v1455)
                              {
                                (*(*v1785 + 16))(v1785);
                              }

                              goto LABEL_2953;
                            }
                          }

LABEL_3275:
                          *a3 = 0;
                          *(a3 + 1) = 0;
                          v1784 = *(a3 + 3);
                          if (v1784)
                          {
                            if (v1455)
                            {
                              (*(*v1784 + 16))(v1784);
                              v1455 = *(a3 + 1);
                            }
                          }

                          else
                          {
                            v1455 = 0;
                          }

                          goto LABEL_3277;
                        case 0x1001:
                          v1414 = IPC::Decoder::decode<WebCore::GraphicsContextGLSurfaceBuffer>(a3);
                          if (v1414 <= 0xFFu)
                          {
                            goto LABEL_3296;
                          }

                          v1415 = *(a3 + 8);
                          if (!v1415)
                          {
                            __break(0xC471u);
                            JUMPOUT(0x19D912030);
                          }

                          v1416 = v1414;
                          v1417 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                          *v1417 = &unk_1F10EC620;
                          v1417[1] = v1415;
                          v1417[2] = a2;
                          *buf = v1417;
                          WebKit::RemoteGraphicsContextGL::surfaceBufferToVideoFrame(this, v1416 & 1, buf);
                          v1287 = *buf;
                          *buf = 0;
                          if (v1287)
                          {
                            goto LABEL_2517;
                          }

                          goto LABEL_461;
                        default:
                          if (v5 == 1286)
                          {
                            IPC::Decoder::decode<std::tuple<unsigned int,int,unsigned int,int,int>>(buf, a3);
                            if (buf[20] == 1)
                            {
                              WebKit::RemoteGraphicsContextGL::renderbufferStorageMultisampleANGLE(this, *buf, *&buf[4], *&buf[8], *&buf[12], *&buf[16]);
                            }

                            goto LABEL_461;
                          }

                          if (v5 != 1293)
                          {
                            goto LABEL_2210;
                          }

                          IPC::ArgumentCoder<std::tuple<WebCore::DestinationColorSpace>,void>::decode<IPC::Decoder>(a3, buf);
                          if (buf[8] & 1) != 0 || (v1699 = *a3, v1700 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v1701 = *(a3 + 3)) != 0) && v1700 && ((*(*v1701 + 16))(v1701, v1699), (buf[8]))
                          {
                            WebKit::RemoteGraphicsContextGL::setDrawingBufferColorSpace(this, buf);
                            if (buf[8])
                            {
                              v1185 = *buf;
                              *buf = 0;
                              if (v1185)
                              {
                                CFRelease(v1185);
                              }
                            }
                          }

                          goto LABEL_461;
                      }
                    }

                    if (*(a3 + 25) > 0x4C9u)
                    {
                      if (*(a3 + 25) <= 0x4E5u)
                      {
                        if (*(a3 + 25) > 0x4DAu)
                        {
                          if (v5 != 1243)
                          {
                            if (v5 != 1248)
                            {
                              if (v5 == 1252)
                              {
                                IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                                if ((v1175 & 1) == 0)
                                {
                                  goto LABEL_461;
                                }

                                v6 = *(this + 7);
                                if (!v6)
                                {
                                  WebCore::GraphicsContextGLANGLE::enableiOES(0);
                                  goto LABEL_461;
                                }

                                ++*(v6 + 2);
                                WebCore::GraphicsContextGLANGLE::enableiOES(v6);
                                goto LABEL_1173;
                              }

                              goto LABEL_2210;
                            }

                            v1186 = *(a3 + 1);
                            v1198 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                            v1188 = *a3;
                            v1199 = v1198 - *a3;
                            v17 = v1186 >= v1199;
                            v1200 = v1186 - v1199;
                            if (v17 && v1200 > 3)
                            {
                              *(a3 + 2) = v1198 + 1;
                              if (!v1198)
                              {
                                goto LABEL_3262;
                              }

                              v1201 = *v1198;
                              v1202 = ((v1198 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                              if (v1186 >= v1202 - v1188 && v1186 - (v1202 - v1188) > 3)
                              {
                                *(a3 + 2) = v1202 + 1;
                                if (!v1202)
                                {
                                  goto LABEL_3262;
                                }

                                v1203 = *v1202;
                                v1204 = ((v1202 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                                if (v1186 >= v1204 - v1188 && v1186 - (v1204 - v1188) > 3)
                                {
                                  *(a3 + 2) = v1204 + 1;
                                  if (!v1204)
                                  {
                                    goto LABEL_3262;
                                  }

                                  v1205 = *v1204;
                                  v1206 = ((v1204 + 11) & 0xFFFFFFFFFFFFFFF8);
                                  if (v1186 >= v1206 - v1188 && v1186 - (v1206 - v1188) > 7)
                                  {
                                    *(a3 + 2) = v1206 + 1;
                                    if (!v1206)
                                    {
                                      goto LABEL_3262;
                                    }

                                    v1207 = *v1206;
                                    v1208 = (v1206 + 11) & 0xFFFFFFFFFFFFFFF8;
                                    if (v1186 >= v1208 - v1188 && v1186 - (v1208 - v1188) > 3)
                                    {
                                      v1209 = (v1208 | 4);
                                      *(a3 + 2) = v1208 | 4;
                                      if (!v1208)
                                      {
                                        goto LABEL_3262;
                                      }

                                      if (v1186 < v1209 - v1188 || v1186 - (v1209 - v1188) <= 3)
                                      {
                                        *a3 = 0;
                                        *(a3 + 1) = 0;
                                        v1757 = *(a3 + 3);
                                        if (!v1757)
                                        {
                                          goto LABEL_2623;
                                        }

                                        if (!v1186)
                                        {
                                          goto LABEL_2623;
                                        }

                                        (*(*v1757 + 16))(v1757);
                                        v1188 = *a3;
                                        v1186 = *(a3 + 1);
                                        v1758 = *(a3 + 3);
                                        *a3 = 0;
                                        *(a3 + 1) = 0;
                                        if (!v1758)
                                        {
                                          goto LABEL_2623;
                                        }

                                        goto LABEL_3263;
                                      }

                                      v1210 = *v1208;
                                      *(a3 + 2) = v1208 + 8;
                                      v1211 = (v1208 + 11) & 0xFFFFFFFFFFFFFFF8;
                                      if (v1186 >= v1211 - v1188 && v1186 - (v1211 - v1188) > 3)
                                      {
                                        v1212 = *v1209;
                                        *(a3 + 2) = v1211 | 4;
                                        if (v1211)
                                        {
                                          WebKit::RemoteGraphicsContextGL::drawElementsInstancedBaseVertexBaseInstanceANGLE(this, v1201, v1203, v1205, v1207, v1210, v1212, *v1211);
                                          goto LABEL_461;
                                        }

                                        goto LABEL_3262;
                                      }
                                    }
                                  }
                                }
                              }
                            }

LABEL_3259:
                            *a3 = 0;
                            *(a3 + 1) = 0;
                            v1781 = *(a3 + 3);
                            if (v1781)
                            {
                              if (v1186)
                              {
                                (*(*v1781 + 16))(v1781);
                                v1188 = *a3;
                                v1186 = *(a3 + 1);
                                goto LABEL_3262;
                              }
                            }

                            else
                            {
                              v1186 = 0;
                            }

                            v1188 = 0;
                            goto LABEL_3262;
                          }

                          v1186 = *(a3 + 1);
                          v1219 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                          v1188 = *a3;
                          v1220 = v1219 - *a3;
                          v17 = v1186 >= v1220;
                          v1221 = v1186 - v1220;
                          if (!v17 || v1221 <= 3)
                          {
                            goto LABEL_3259;
                          }

                          *(a3 + 2) = v1219 + 1;
                          if (!v1219)
                          {
                            goto LABEL_3262;
                          }

                          v1222 = *v1219;
                          v1223 = ((v1219 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v1186 < v1223 - v1188 || v1186 - (v1223 - v1188) <= 3)
                          {
                            goto LABEL_3259;
                          }

                          *(a3 + 2) = v1223 + 1;
                          if (!v1223)
                          {
                            goto LABEL_3262;
                          }

                          v1224 = *v1223;
                          v1225 = ((v1223 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v1186 < v1225 - v1188 || v1186 - (v1225 - v1188) <= 3)
                          {
                            goto LABEL_3259;
                          }

                          *(a3 + 2) = v1225 + 1;
                          if (!v1225)
                          {
                            goto LABEL_3262;
                          }

                          v1226 = *v1225;
                          v1227 = ((v1225 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v1186 < v1227 - v1188 || v1186 - (v1227 - v1188) <= 3)
                          {
                            goto LABEL_3259;
                          }

                          *(a3 + 2) = v1227 + 1;
                          if (!v1227)
                          {
                            goto LABEL_3262;
                          }

                          v1228 = *v1227;
                          v1229 = ((v1227 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v1186 < v1229 - v1188 || v1186 - (v1229 - v1188) <= 3)
                          {
                            goto LABEL_3259;
                          }

                          *(a3 + 2) = v1229 + 1;
                          if (v1229)
                          {
                            WebKit::RemoteGraphicsContextGL::drawArraysInstancedBaseInstanceANGLE(this, v1222, v1224, v1226, v1228, *v1229);
                            goto LABEL_461;
                          }

LABEL_3262:
                          *a3 = 0;
                          *(a3 + 1) = 0;
                          v1758 = *(a3 + 3);
                          if (!v1758)
                          {
                            goto LABEL_2623;
                          }

LABEL_3263:
                          if (v1186)
                          {
                            (*(*v1758 + 16))(v1758, v1188);
                          }

                          goto LABEL_2623;
                        }

                        if (v5 != 1226)
                        {
                          if (v5 == 1240)
                          {
                            IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                            if ((v1183 & 1) == 0)
                            {
                              goto LABEL_461;
                            }

                            v6 = *(this + 7);
                            if (!v6)
                            {
                              WebCore::GraphicsContextGLANGLE::disableiOES(0);
                              goto LABEL_461;
                            }

                            ++*(v6 + 2);
                            WebCore::GraphicsContextGLANGLE::disableiOES(v6);
                            goto LABEL_1173;
                          }

LABEL_2210:
                          switch(*(a3 + 25))
                          {
                            case 0xFBE:
                              v1186 = *(a3 + 1);
                              v1187 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
                              v1188 = *a3;
                              v1189 = v1187 - *a3;
                              v17 = v1186 >= v1189;
                              v1190 = v1186 - v1189;
                              if (!v17 || v1190 <= 7)
                              {
                                goto LABEL_3259;
                              }

                              *(a3 + 2) = v1187 + 1;
                              if (!v1187)
                              {
                                goto LABEL_3262;
                              }

                              v1191 = *v1187;
                              v1192 = (v1187 + 11) & 0xFFFFFFFFFFFFFFF8;
                              if (v1186 < v1192 - v1188 || v1186 - (v1192 - v1188) <= 3)
                              {
                                goto LABEL_3259;
                              }

                              *(a3 + 2) = v1192 | 4;
                              if (!v1192)
                              {
                                goto LABEL_3262;
                              }

                              v1193 = *v1192;
                              v1194 = ((v1192 + 11) & 0xFFFFFFFFFFFFFFF8);
                              if (v1186 < v1194 - v1188 || v1186 - (v1194 - v1188) <= 7)
                              {
                                goto LABEL_3259;
                              }

                              *(a3 + 2) = v1194 + 1;
                              if (!v1194)
                              {
                                goto LABEL_3262;
                              }

                              v1195 = *(a3 + 8);
                              if (!v1195)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D911C5CLL);
                              }

                              v1196 = *v1194;
                              v1197 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                              *v1197 = &unk_1F10ECDF0;
                              v1197[1] = v1195;
                              v1197[2] = a2;
                              *buf = v1197;
                              WebKit::RemoteGraphicsContextGL::clientWaitSync(this, v1191, v1193, v1196, buf);
LABEL_2670:
                              v810 = *buf;
                              if (*buf)
                              {
                                goto LABEL_2704;
                              }

                              goto LABEL_461;
                            case 0xFC1:
                              v1506 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                              if ((v1507 & 1) == 0)
                              {
                                goto LABEL_461;
                              }

                              v1508 = *(a3 + 8);
                              if (!v1508)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D9121D0);
                              }

                              v1509 = v1506;
                              v1510 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                              *v1510 = &unk_1F10ECDA0;
                              v1510[1] = v1508;
                              v1510[2] = a2;
                              *buf = v1510;
                              WebKit::RemoteGraphicsContextGL::fenceSync(this, v1509, HIDWORD(v1509), buf);
                              goto LABEL_2525;
                            case 0xFC4:
                              v1511 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                              if ((v1512 & 1) == 0)
                              {
                                goto LABEL_461;
                              }

                              v1513 = *(a3 + 8);
                              if (!v1513)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D9121F0);
                              }

                              v1514 = v1511;
                              v1515 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                              *v1515 = &unk_1F10ECF08;
                              v1515[1] = v1513;
                              v1515[2] = a2;
                              *buf = v1515;
                              WebKit::RemoteGraphicsContextGL::getActiveUniformBlockName(this, v1514, HIDWORD(v1514), buf);
                              goto LABEL_2703;
                            case 0xFC5:
                              IPC::Decoder::decode<std::tuple<unsigned int,unsigned int,unsigned int,unsigned long long>>(buf, a3);
                              if (buf[24] != 1)
                              {
                                goto LABEL_461;
                              }

                              v1516 = *(a3 + 8);
                              if (!v1516)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D912210);
                              }

                              v1517 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                              *v1517 = &unk_1F10ECF30;
                              v1517[1] = v1516;
                              v1517[2] = a2;
                              v1797[0] = v1517;
                              WebKit::RemoteGraphicsContextGL::getActiveUniformBlockiv(this, *buf, *&buf[4], *&buf[8], *&buf[16], v1797);
                              goto LABEL_2659;
                            case 0xFC6:
                              v1518 = *(a3 + 1);
                              v1519 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                              v1520 = v1519 - *a3;
                              v17 = v1518 >= v1520;
                              v1521 = v1518 - v1520;
                              if (!v17 || v1521 <= 3)
                              {
                                goto LABEL_3171;
                              }

                              *(a3 + 2) = v1519 + 1;
                              if (!v1519)
                              {
                                goto LABEL_3280;
                              }

                              v1522 = *v1519;
                              IPC::VectorArgumentCoder<true,unsigned int,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a3, v1797);
                              if ((v1798 & 1) == 0)
                              {
                                v1702 = *a3;
                                v1703 = *(a3 + 1);
                                *a3 = 0;
                                *(a3 + 1) = 0;
                                v1704 = *(a3 + 3);
                                if (!v1704)
                                {
                                  goto LABEL_2924;
                                }

                                if (!v1703)
                                {
                                  goto LABEL_2924;
                                }

                                (*(*v1704 + 16))(v1704, v1702);
                                if ((v1798 & 1) == 0)
                                {
                                  goto LABEL_2924;
                                }
                              }

                              v1523 = *(a3 + 1);
                              v1524 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                              v1525 = *a3;
                              v1526 = v1524 - *a3;
                              v17 = v1523 >= v1526;
                              v1527 = v1523 - v1526;
                              if (v17 && v1527 > 3)
                              {
                                *(a3 + 2) = v1524 + 1;
                                if (v1524)
                                {
                                  v1528 = *v1524;
                                  *buf = v1522;
                                  *&buf[8] = v1797[0];
                                  *&buf[16] = v1797[1];
                                  *&buf[24] = v1528;
                                  buf[32] = 1;
                                  v1529 = *(a3 + 8);
                                  if (!v1529)
                                  {
                                    __break(0xC471u);
                                    JUMPOUT(0x19D912244);
                                  }

                                  v1530 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                                  *v1530 = &unk_1F10ECEB8;
                                  v1530[1] = v1529;
                                  v1530[2] = a2;
                                  v1797[0] = v1530;
                                  WebKit::RemoteGraphicsContextGL::getActiveUniforms(this, *buf, &buf[8], *&buf[24], v1797);
                                  if (v1797[0])
                                  {
                                    (*(*v1797[0] + 8))(v1797[0]);
                                  }

                                  if (buf[32])
                                  {
                                    v1532 = *&buf[8];
                                    if (*&buf[8])
                                    {
                                      *&buf[8] = 0;
                                      *&buf[16] = 0;
                                      WTF::fastFree(v1532, v1531);
                                    }
                                  }

                                  goto LABEL_461;
                                }
                              }

                              else
                              {
                                *a3 = 0;
                                *(a3 + 1) = 0;
                                v1780 = *(a3 + 3);
                                if (v1780)
                                {
                                  if (v1523)
                                  {
                                    (*(*v1780 + 16))(v1780);
                                    v1525 = *a3;
                                    v1523 = *(a3 + 1);
                                    goto LABEL_3304;
                                  }
                                }

                                else
                                {
                                  v1523 = 0;
                                }

                                v1525 = 0;
                              }

LABEL_3304:
                              *a3 = 0;
                              *(a3 + 1) = 0;
                              v1789 = *(a3 + 3);
                              if (v1789 && v1523)
                              {
                                (*(*v1789 + 16))(v1789);
                              }

                              if (v1798)
                              {
                                v1790 = v1797[0];
                                if (v1797[0])
                                {
                                  v1797[0] = 0;
                                  LODWORD(v1797[1]) = 0;
                                  WTF::fastFree(v1790, v1525);
                                }
                              }

                              goto LABEL_2924;
                            case 0xFCE:
                              IPC::Decoder::decode<std::tuple<unsigned int,WTF::String>>(buf, a3);
                              if (buf[16] != 1)
                              {
                                goto LABEL_461;
                              }

                              v1533 = *(a3 + 8);
                              if (!v1533)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D912264);
                              }

                              v1534 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                              *v1534 = &unk_1F10ECC88;
                              v1534[1] = v1533;
                              v1534[2] = a2;
                              v1797[0] = v1534;
                              WebKit::RemoteGraphicsContextGL::getFragDataLocation(this, *buf, &buf[8], v1797);
                              goto LABEL_2448;
                            case 0xFD1:
                              v1535 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                              if ((v1535 & 0x100000000) != 0)
                              {
                                v1536 = *(a3 + 8);
                                if (!v1536)
                                {
                                  __break(0xC471u);
                                  JUMPOUT(0x19D912284);
                                }

                                v1537 = v1535;
                                v1538 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                                *v1538 = &unk_1F10ED020;
                                v1538[1] = v1536;
                                v1538[2] = a2;
                                *buf = v1538;
                                WebKit::RemoteGraphicsContextGL::getInteger64EXT(this, v1537, buf);
                                v810 = *buf;
                                if (*buf)
                                {
                                  goto LABEL_2704;
                                }
                              }

                              goto LABEL_461;
                            case 0xFD5:
                              IPC::Decoder::decode<std::tuple<unsigned int,unsigned int,unsigned int,unsigned long long>>(buf, a3);
                              if (buf[24] != 1)
                              {
                                goto LABEL_461;
                              }

                              v1539 = *(a3 + 8);
                              if (!v1539)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D9122A4);
                              }

                              v1540 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                              *v1540 = &unk_1F10ED048;
                              v1540[1] = v1539;
                              v1540[2] = a2;
                              v1797[0] = v1540;
                              WebKit::RemoteGraphicsContextGL::getInternalformativ(this, *buf, *&buf[4], *&buf[8], *&buf[16], v1797);
LABEL_2659:
                              v1338 = v1797[0];
                              if (v1797[0])
                              {
                                goto LABEL_2660;
                              }

                              goto LABEL_461;
                            case 0xFD8:
                              v1541 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                              if ((v1542 & 1) == 0)
                              {
                                goto LABEL_461;
                              }

                              v1543 = *(a3 + 8);
                              if (!v1543)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D9122C4);
                              }

                              v1544 = v1541;
                              v1545 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                              *v1545 = &unk_1F10ECCD8;
                              v1545[1] = v1543;
                              v1545[2] = a2;
                              *buf = v1545;
                              WebKit::RemoteGraphicsContextGL::getQuery(this, v1544, HIDWORD(v1544), buf);
                              goto LABEL_2694;
                            case 0xFD9:
                              v1546 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                              if ((v1547 & 1) == 0)
                              {
                                goto LABEL_461;
                              }

                              v1548 = *(a3 + 8);
                              if (!v1548)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D9122E4);
                              }

                              v1549 = v1546;
                              v1550 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                              *v1550 = &unk_1F10ECFD0;
                              v1550[1] = v1548;
                              v1550[2] = a2;
                              *buf = v1550;
                              WebKit::RemoteGraphicsContextGL::getQueryObjectiEXT(this, v1549, HIDWORD(v1549), buf);
                              goto LABEL_2694;
                            case 0xFDA:
                              v1551 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                              if ((v1552 & 1) == 0)
                              {
                                goto LABEL_461;
                              }

                              v1553 = *(a3 + 8);
                              if (!v1553)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D912304);
                              }

                              v1554 = v1551;
                              v1555 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                              *v1555 = &unk_1F10ECD00;
                              v1555[1] = v1553;
                              v1555[2] = a2;
                              *buf = v1555;
                              WebKit::RemoteGraphicsContextGL::getQueryObjectui(this, v1554, HIDWORD(v1554), buf);
                              goto LABEL_2670;
                            case 0xFDB:
                              v1556 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                              if ((v1557 & 1) == 0)
                              {
                                goto LABEL_461;
                              }

                              v1558 = *(a3 + 8);
                              if (!v1558)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D912324);
                              }

                              v1559 = v1556;
                              v1560 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                              *v1560 = &unk_1F10ECFF8;
                              v1560[1] = v1558;
                              v1560[2] = a2;
                              *buf = v1560;
                              WebKit::RemoteGraphicsContextGL::getQueryObjectui64EXT(this, v1559, HIDWORD(v1559), buf);
                              goto LABEL_2525;
                            case 0xFDC:
                              v1561 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                              if ((v1562 & 1) == 0)
                              {
                                goto LABEL_461;
                              }

                              v1563 = *(a3 + 8);
                              if (!v1563)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D912344);
                              }

                              v1564 = v1561;
                              v1565 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                              *v1565 = &unk_1F10ECFA8;
                              v1565[1] = v1563;
                              v1565[2] = a2;
                              *buf = v1565;
                              WebKit::RemoteGraphicsContextGL::getQueryiEXT(this, v1564, HIDWORD(v1564), buf);
                              goto LABEL_2694;
                            case 0xFDE:
                              v1566 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                              if (v1567)
                              {
                                v1568 = *(a3 + 8);
                                if (!v1568)
                                {
                                  __break(0xC471u);
                                  JUMPOUT(0x19D912364);
                                }

                                v1569 = v1566;
                                v1570 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                                *v1570 = &unk_1F10ECD50;
                                v1570[1] = v1568;
                                v1570[2] = a2;
                                *buf = v1570;
                                WebKit::RemoteGraphicsContextGL::getSamplerParameterf(this, v1569, HIDWORD(v1569), buf);
                                v1287 = *buf;
                                if (*buf)
                                {
                                  goto LABEL_2517;
                                }
                              }

                              goto LABEL_461;
                            case 0xFDF:
                              v1571 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                              if ((v1572 & 1) == 0)
                              {
                                goto LABEL_461;
                              }

                              v1573 = *(a3 + 8);
                              if (!v1573)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D912384);
                              }

                              v1574 = v1571;
                              v1575 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                              *v1575 = &unk_1F10ECD78;
                              v1575[1] = v1573;
                              v1575[2] = a2;
                              *buf = v1575;
                              WebKit::RemoteGraphicsContextGL::getSamplerParameteri(this, v1574, HIDWORD(v1574), buf);
                              goto LABEL_2694;
                            case 0xFE5:
                              v1186 = *(a3 + 1);
                              v1576 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
                              v1188 = *a3;
                              v1577 = v1576 - *a3;
                              v17 = v1186 >= v1577;
                              v1578 = v1186 - v1577;
                              if (!v17 || v1578 <= 7)
                              {
                                goto LABEL_3259;
                              }

                              *(a3 + 2) = v1576 + 1;
                              if (!v1576)
                              {
                                goto LABEL_3262;
                              }

                              v1579 = *v1576;
                              v1580 = (v1576 + 11) & 0xFFFFFFFFFFFFFFF8;
                              if (v1186 < v1580 - v1188 || v1186 - (v1580 - v1188) <= 3)
                              {
                                goto LABEL_3259;
                              }

                              *(a3 + 2) = v1580 | 4;
                              if (!v1580)
                              {
                                goto LABEL_3262;
                              }

                              v1581 = *(a3 + 8);
                              if (!v1581)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D9123A4);
                              }

                              v1582 = *v1580;
                              v1583 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                              *v1583 = &unk_1F10ECE18;
                              v1583[1] = v1581;
                              v1583[2] = a2;
                              *buf = v1583;
                              WebKit::RemoteGraphicsContextGL::getSynci(this, v1579, v1582, buf);
LABEL_2694:
                              v810 = *buf;
                              if (*buf)
                              {
                                goto LABEL_2704;
                              }

                              goto LABEL_461;
                            case 0xFE8:
                              v1584 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                              if (v1585)
                              {
                                v1586 = *(a3 + 8);
                                if (!v1586)
                                {
                                  __break(0xC471u);
                                  JUMPOUT(0x19D9123C4);
                                }

                                v1587 = v1584;
                                v1588 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                                *v1588 = &unk_1F10ECE68;
                                v1588[1] = v1586;
                                v1588[2] = a2;
                                *buf = v1588;
                                WebKit::RemoteGraphicsContextGL::getTransformFeedbackVarying(this, v1587, HIDWORD(v1587), buf);
                                v810 = *buf;
                                if (*buf)
                                {
                                  goto LABEL_2704;
                                }
                              }

                              goto LABEL_461;
                            case 0xFE9:
                              v1589 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                              if ((v1589 & 0x100000000) == 0)
                              {
                                goto LABEL_461;
                              }

                              v1590 = *(a3 + 8);
                              if (!v1590)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D9123E4);
                              }

                              v1591 = v1589;
                              v1592 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                              *v1592 = &unk_1F10ECF58;
                              v1592[1] = v1590;
                              v1592[2] = a2;
                              *buf = v1592;
                              WebKit::RemoteGraphicsContextGL::getTranslatedShaderSourceANGLE(this, v1591, buf);
LABEL_2703:
                              v810 = *buf;
                              if (*buf)
                              {
                                goto LABEL_2704;
                              }

                              goto LABEL_461;
                            case 0xFEA:
                              IPC::Decoder::decode<std::tuple<unsigned int,WTF::String>>(buf, a3);
                              if (buf[16] != 1)
                              {
                                goto LABEL_461;
                              }

                              v1593 = *(a3 + 8);
                              if (!v1593)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D912404);
                              }

                              v1594 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                              *v1594 = &unk_1F10ECEE0;
                              v1594[1] = v1593;
                              v1594[2] = a2;
                              v1797[0] = v1594;
                              WebKit::RemoteGraphicsContextGL::getUniformBlockIndex(this, *buf, &buf[8], v1797);
                              v1379 = v1797[0];
                              if (v1797[0])
                              {
                                goto LABEL_2449;
                              }

                              goto LABEL_2450;
                            case 0xFEB:
                              v1518 = *(a3 + 1);
                              v1595 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                              v1596 = v1595 - *a3;
                              v17 = v1518 >= v1596;
                              v1597 = v1518 - v1596;
                              if (v17 && v1597 > 3)
                              {
                                *(a3 + 2) = v1595 + 1;
                                if (v1595)
                                {
                                  v1598 = *v1595;
                                  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a3, v1797);
                                  if (v1798 & 1) != 0 || (v1750 = *a3, v1751 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v1752 = *(a3 + 3)) != 0) && v1751 && ((*(*v1752 + 16))(v1752, v1750), (v1798))
                                  {
                                    *buf = v1598;
                                    *&buf[8] = v1797[0];
                                    v1600 = v1797[1];
                                    v1797[0] = 0;
                                    v1797[1] = 0;
                                    *&buf[16] = v1600;
                                    buf[24] = 1;
                                    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v1797, v1599);
                                    v1601 = *(a3 + 8);
                                    if (!v1601)
                                    {
                                      __break(0xC471u);
                                      JUMPOUT(0x19D912424);
                                    }

                                    v1602 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                                    *v1602 = &unk_1F10ECE90;
                                    v1602[1] = v1601;
                                    v1602[2] = a2;
                                    v1797[0] = v1602;
                                    WebKit::RemoteGraphicsContextGL::getUniformIndices(this, *buf, &buf[8], v1797);
                                    if (v1797[0])
                                    {
                                      (*(*v1797[0] + 8))(v1797[0]);
                                    }

                                    if ((buf[24] & 1) == 0)
                                    {
                                      goto LABEL_461;
                                    }

LABEL_1864:
                                    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&buf[8], v1047);
                                    goto LABEL_461;
                                  }

LABEL_2924:
                                  v1485 = *a3;
                                  v1705 = *(a3 + 1);
                                  *a3 = 0;
                                  *(a3 + 1) = 0;
                                  v1487 = *(a3 + 3);
                                  if (!v1487 || !v1705)
                                  {
                                    goto LABEL_461;
                                  }

                                  goto LABEL_2926;
                                }
                              }

                              else
                              {
LABEL_3171:
                                *a3 = 0;
                                *(a3 + 1) = 0;
                                v1778 = *(a3 + 3);
                                if (v1778)
                                {
                                  if (v1518)
                                  {
                                    (*(*v1778 + 16))(v1778);
                                    v1518 = *(a3 + 1);
                                  }
                                }

                                else
                                {
                                  v1518 = 0;
                                }
                              }

LABEL_3280:
                              *a3 = 0;
                              *(a3 + 1) = 0;
                              v1786 = *(a3 + 3);
                              if (v1786 && v1518)
                              {
                                (*(*v1786 + 16))(v1786);
                              }

                              goto LABEL_2924;
                            case 0xFF5:
                              v1603 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                              if ((v1603 & 0x100000000) == 0)
                              {
                                goto LABEL_461;
                              }

                              v1604 = *(a3 + 8);
                              if (!v1604)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D912444);
                              }

                              v1605 = v1603;
                              v1606 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                              *v1606 = &unk_1F10ECCB0;
                              v1606[1] = v1604;
                              v1606[2] = a2;
                              *buf = v1606;
                              WebKit::RemoteGraphicsContextGL::isQuery(this, v1605, buf);
                              goto LABEL_2559;
                            case 0xFF6:
                              v1607 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                              if ((v1607 & 0x100000000) == 0)
                              {
                                goto LABEL_461;
                              }

                              v1608 = *(a3 + 8);
                              if (!v1608)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D912464);
                              }

                              v1609 = v1607;
                              v1610 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                              *v1610 = &unk_1F10ECF80;
                              v1610[1] = v1608;
                              v1610[2] = a2;
                              *buf = v1610;
                              WebKit::RemoteGraphicsContextGL::isQueryEXT(this, v1609, buf);
                              goto LABEL_2559;
                            case 0xFF8:
                              v1611 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                              if ((v1611 & 0x100000000) == 0)
                              {
                                goto LABEL_461;
                              }

                              v1612 = *(a3 + 8);
                              if (!v1612)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D912484);
                              }

                              v1613 = v1611;
                              v1614 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                              *v1614 = &unk_1F10ECD28;
                              v1614[1] = v1612;
                              v1614[2] = a2;
                              *buf = v1614;
                              WebKit::RemoteGraphicsContextGL::isSampler(this, v1613, buf);
                              goto LABEL_2559;
                            case 0xFFA:
                              v1615 = IPC::Decoder::decode<std::tuple<unsigned long long>>(a3);
                              if ((v1616 & 1) == 0)
                              {
                                goto LABEL_461;
                              }

                              v1617 = *(a3 + 8);
                              if (!v1617)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D9124A4);
                              }

                              v1618 = v1615;
                              v1619 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                              *v1619 = &unk_1F10ECDC8;
                              v1619[1] = v1617;
                              v1619[2] = a2;
                              *buf = v1619;
                              WebKit::RemoteGraphicsContextGL::isSync(this, v1618, buf);
                              goto LABEL_2559;
                            case 0xFFC:
                              v1620 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                              if ((v1620 & 0x100000000) == 0)
                              {
                                goto LABEL_461;
                              }

                              v1621 = *(a3 + 8);
                              if (!v1621)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D9124C4);
                              }

                              v1622 = v1620;
                              v1623 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                              *v1623 = &unk_1F10ECE40;
                              v1623[1] = v1621;
                              v1623[2] = a2;
                              *buf = v1623;
                              WebKit::RemoteGraphicsContextGL::isTransformFeedback(this, v1622, buf);
                              goto LABEL_2559;
                            case 0xFFD:
                              v1624 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                              if ((v1624 & 0x100000000) == 0)
                              {
                                goto LABEL_461;
                              }

                              v1625 = *(a3 + 8);
                              if (!v1625)
                              {
                                __break(0xC471u);
                                JUMPOUT(0x19D9124E4);
                              }

                              v1626 = v1624;
                              v1627 = WTF::fastMalloc(atomic_fetch_add(a2 + 2, 1u), 0x18);
                              *v1627 = &unk_1F10ECC60;
                              v1627[1] = v1625;
                              v1627[2] = a2;
                              *buf = v1627;
                              WebKit::RemoteGraphicsContextGL::isVertexArray(this, v1626, buf);
                              goto LABEL_2559;
                            default:
                              v1504 = qword_1ED6416C8;
                              if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
                              {
                                if (v5 >= 0x107F)
                                {
                                  v1674 = 4223;
                                }

                                else
                                {
                                  v1674 = v5;
                                }

                                v1675 = (&IPC::Detail::messageDescriptions)[3 * v1674];
                                v1676 = *(a3 + 7);
                                *buf = 136315394;
                                *&buf[4] = v1675;
                                *&buf[12] = 2048;
                                *&buf[14] = v1676;
                                _os_log_error_impl(&dword_19D52D000, v1504, OS_LOG_TYPE_ERROR, "Unhandled stream message %s to %llu", buf, 0x16u);
                              }

                              goto LABEL_2623;
                          }
                        }

                        v1218 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                        if ((v1218 & 0x100000000) == 0 || (v1218 + 2) < 3)
                        {
                          goto LABEL_461;
                        }

                        WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(this + 27, v1218);
                        v6 = *(this + 7);
                        if (!v6)
                        {
                          WebCore::GraphicsContextGLANGLE::deleteQueryEXT(0);
                          goto LABEL_461;
                        }

                        ++*(v6 + 2);
                        WebCore::GraphicsContextGLANGLE::deleteQueryEXT(v6);
                        goto LABEL_1173;
                      }

                      if (*(a3 + 25) <= 0x4FEu)
                      {
                        if (v5 == 1254)
                        {
                          if ((IPC::Decoder::decode<std::tuple<unsigned int>>(a3) & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          v6 = *(this + 7);
                          if (!v6)
                          {
                            WebCore::GraphicsContextGLANGLE::endQueryEXT(0);
                            goto LABEL_461;
                          }

                          ++*(v6 + 2);
                          WebCore::GraphicsContextGLANGLE::endQueryEXT(v6);
                        }

                        else
                        {
                          if (v5 != 1277)
                          {
                            goto LABEL_2210;
                          }

                          IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                          if ((v1184 & 1) == 0)
                          {
                            goto LABEL_461;
                          }

                          v6 = *(this + 7);
                          if (!v6)
                          {
                            WebCore::GraphicsContextGLANGLE::polygonModeANGLE(0);
                            goto LABEL_461;
                          }

                          ++*(v6 + 2);
                          WebCore::GraphicsContextGLANGLE::polygonModeANGLE(v6);
                        }

                        goto LABEL_1173;
                      }

                      if (v5 == 1279)
                      {
                        v1186 = *(a3 + 1);
                        v1239 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                        v1188 = *a3;
                        v1240 = v1239 - *a3;
                        v17 = v1186 >= v1240;
                        v1241 = v1186 - v1240;
                        if (!v17 || v1241 <= 3)
                        {
                          goto LABEL_3259;
                        }

                        *(a3 + 2) = v1239 + 1;
                        if (!v1239)
                        {
                          goto LABEL_3262;
                        }

                        v1242 = *v1239;
                        v1243 = ((v1239 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                        if (v1186 < v1243 - v1188 || v1186 - (v1243 - v1188) <= 3)
                        {
                          goto LABEL_3259;
                        }

                        *(a3 + 2) = v1243 + 1;
                        if (!v1243)
                        {
                          goto LABEL_3262;
                        }

                        v1244 = *v1243;
                        v1245 = ((v1243 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                        if (v1186 < v1245 - v1188 || v1186 - (v1245 - v1188) <= 3)
                        {
                          goto LABEL_3259;
                        }

                        *(a3 + 2) = v1245 + 1;
                        if (v1245)
                        {
                          v1246 = *v1245;
                          v6 = *(this + 7);
                          if (!v6)
                          {
                            WebCore::GraphicsContextGLANGLE::polygonOffsetClampEXT(0, v1242, v1244, v1246);
                            goto LABEL_461;
                          }

                          ++*(v6 + 2);
                          WebCore::GraphicsContextGLANGLE::polygonOffsetClampEXT(v6, v1242, v1244, v1246);
                          goto LABEL_1173;
                        }

                        goto LABEL_3262;
                      }

                      if (v5 == 1280)
                      {
                        if ((IPC::Decoder::decode<std::tuple<unsigned int>>(a3) & 0x100000000) == 0)
                        {
                          goto LABEL_461;
                        }

                        v6 = *(this + 7);
                        if (!v6)
                        {
                          WebCore::GraphicsContextGLANGLE::provokingVertexANGLE(0);
                          goto LABEL_461;
                        }

                        ++*(v6 + 2);
                        WebCore::GraphicsContextGLANGLE::provokingVertexANGLE(v6);
                        goto LABEL_1173;
                      }

                      if (v5 != 1281)
                      {
                        goto LABEL_2210;
                      }

                      v1179 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                      if ((v1180 & 1) == 0)
                      {
                        goto LABEL_461;
                      }

                      *buf = v1179;
                      if (v1179 > 0xFFFFFFFD)
                      {
                        goto LABEL_461;
                      }

                      if (v1179)
                      {
                        *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
                      }

                      v274 = *(this + 7);
                      if (!v274)
                      {
                        WebCore::GraphicsContextGLANGLE::queryCounterEXT(0);
                        goto LABEL_461;
                      }

                      ++*(v274 + 2);
                      WebCore::GraphicsContextGLANGLE::queryCounterEXT(v274);
LABEL_2091:
                      if (*(v274 + 2) == 1)
                      {
LABEL_705:
                        (*(*v274 + 16))(v274);
                      }

                      else
                      {
                        --*(v274 + 2);
                      }

                      goto LABEL_461;
                    }

                    if (*(a3 + 25) <= 0x49Bu)
                    {
                      if (*(a3 + 25) > 0x497u)
                      {
                        if (v5 != 1176)
                        {
                          if (v5 == 1179)
                          {
                            IPC::Decoder::decode<std::tuple<unsigned int,int,unsigned int,int,int>>(buf, a3);
                            if (buf[20] == 1)
                            {
                              WebKit::RemoteGraphicsContextGL::blendFuncSeparateiOES(this, *buf, *&buf[4], *&buf[8], *&buf[12], *&buf[16]);
                            }

                            goto LABEL_461;
                          }

                          goto LABEL_2210;
                        }

                        IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                        if ((v1216 & 1) == 0)
                        {
                          goto LABEL_461;
                        }

                        v6 = *(this + 7);
                        if (!v6)
                        {
                          WebCore::GraphicsContextGLANGLE::blendEquationiOES(0);
                          goto LABEL_461;
                        }

                        ++*(v6 + 2);
                        WebCore::GraphicsContextGLANGLE::blendEquationiOES(v6);
                        goto LABEL_1173;
                      }

                      if (v5 != 1160)
                      {
                        if (v5 == 1175)
                        {
                          IPC::Decoder::decode<std::tuple<unsigned int,unsigned int,unsigned int>>(a3);
                          if ((v1181 & 0x100000000) == 0)
                          {
                            goto LABEL_461;
                          }

                          v6 = *(this + 7);
                          if (!v6)
                          {
                            WebCore::GraphicsContextGLANGLE::blendEquationSeparateiOES(0);
                            goto LABEL_461;
                          }

                          ++*(v6 + 2);
                          WebCore::GraphicsContextGLANGLE::blendEquationSeparateiOES(v6);
                          goto LABEL_1173;
                        }

                        goto LABEL_2210;
                      }

                      v1214 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                      if ((v1215 & 1) == 0)
                      {
                        goto LABEL_461;
                      }

                      *buf = HIDWORD(v1214);
                      if (v1214 > 0xFFFFFFFDFFFFFFFFLL)
                      {
                        goto LABEL_461;
                      }

                      if (HIDWORD(v1214))
                      {
                        *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
                      }

                      v274 = *(this + 7);
                      if (!v274)
                      {
                        WebCore::GraphicsContextGLANGLE::beginQueryEXT(0);
                        goto LABEL_461;
                      }

                      ++*(v274 + 2);
                      WebCore::GraphicsContextGLANGLE::beginQueryEXT(v274);
                      goto LABEL_2091;
                    }

                    if (*(a3 + 25) <= 0x4AAu)
                    {
                      if (v5 != 1180)
                      {
                        if (v5 == 1193)
                        {
                          IPC::Decoder::decode<std::tuple<unsigned int,unsigned int>>(a3);
                          if ((v1182 & 1) == 0)
                          {
                            goto LABEL_461;
                          }

                          v6 = *(this + 7);
                          if (!v6)
                          {
                            WebCore::GraphicsContextGLANGLE::clipControlEXT(0);
                            goto LABEL_461;
                          }

                          ++*(v6 + 2);
                          WebCore::GraphicsContextGLANGLE::clipControlEXT(v6);
                          goto LABEL_1173;
                        }

                        goto LABEL_2210;
                      }

                      IPC::Decoder::decode<std::tuple<unsigned int,unsigned int,unsigned int>>(a3);
                      if ((v1217 & 0x100000000) == 0)
                      {
                        goto LABEL_461;
                      }

                      v6 = *(this + 7);
                      if (!v6)
                      {
                        WebCore::GraphicsContextGLANGLE::blendFunciOES(0);
                        goto LABEL_461;
                      }

                      ++*(v6 + 2);
                      WebCore::GraphicsContextGLANGLE::blendFunciOES(v6);
LABEL_1173:
                      if (*(v6 + 2) == 1)
                      {
LABEL_552:
                        (*(*v6 + 16))(v6);
                      }

                      else
                      {
                        --*(v6 + 2);
                      }

                      goto LABEL_461;
                    }

                    if (v5 != 1195)
                    {
                      if (v5 == 1213)
                      {
                        v1213 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                        if ((v1213 & 0x100000000) == 0)
                        {
                          goto LABEL_461;
                        }

                        LODWORD(v1797[0]) = v1213;
                        if (v1213 > 0xFFFFFFFD)
                        {
                          goto LABEL_461;
                        }

                        v860 = *(this + 7);
                        if (v860)
                        {
                          ++*(v860 + 2);
                          Query = WebCore::GraphicsContextGLANGLE::createQueryEXT(v860);
LABEL_1670:
                          v918 = Query;
                          if (*(v860 + 2) == 1)
                          {
                            (*(*v860 + 16))(v860);
                          }

                          else
                          {
                            --*(v860 + 2);
                          }
                        }

                        else
                        {
                          Sampler = WebCore::GraphicsContextGLANGLE::createQueryEXT(0);
LABEL_2745:
                          v918 = Sampler;
                        }

                        LODWORD(v1802) = v918;
                        if (!v918)
                        {
                          goto LABEL_461;
                        }

LABEL_398:
                        WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<unsigned int &>(buf, this + 27, v1797, &v1802);
                        goto LABEL_461;
                      }

                      if (v5 != 1222)
                      {
                        goto LABEL_2210;
                      }

                      v1176 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                      if ((v1176 & 0x100000000) == 0)
                      {
                        goto LABEL_461;
                      }

                      v1177 = v1176;
                      if ((WebKit::RemoteGraphicsContextGL::webXREnabled(this) & 1) == 0)
                      {
                        v1178 = *(this + 6);
                        if (v1178)
                        {
                          atomic_fetch_add((v1178 + 8), 1u);
                          *(v1178 + 168) = 1;
                          if (atomic_fetch_add((v1178 + 8), 0xFFFFFFFF) == 1)
                          {
                            atomic_store(1u, (v1178 + 8));
                            (*(*v1178 + 8))(v1178);
                          }
                        }
                      }

                      if ((v1177 + 2) < 3)
                      {
                        goto LABEL_461;
                      }

                      WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(this + 27, v1177);
                      v6 = *(this + 7);
                      if (!v6)
                      {
                        WebCore::GraphicsContextGLANGLE::deleteExternalSync(0);
                        goto LABEL_461;
                      }

                      ++*(v6 + 2);
                      WebCore::GraphicsContextGLANGLE::deleteExternalSync(v6);
                      goto LABEL_1173;
                    }

                    v1186 = *(a3 + 1);
                    v1230 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
                    v1188 = *a3;
                    v1231 = v1230 - *a3;
                    v17 = v1186 >= v1231;
                    v1232 = v1186 - v1231;
                    if (!v17 || v1232 <= 3)
                    {
                      goto LABEL_3259;
                    }

                    v1233 = (v1230 + 4);
                    *(a3 + 2) = v1230 + 4;
                    if (!v1230)
                    {
                      goto LABEL_3262;
                    }

                    if (v1186 <= &v1233[-v1188])
                    {
                      *a3 = 0;
                      *(a3 + 1) = 0;
                      v1768 = *(a3 + 3);
                      if (v1768)
                      {
                        if (v1186)
                        {
                          (*(*v1768 + 16))(v1768);
                          v1186 = *(a3 + 1);
                        }
                      }

                      else
                      {
                        v1186 = 0;
                      }

                      goto LABEL_3259;
                    }

                    v1234 = *v1230;
                    *(a3 + 2) = v1230 + 5;
                    if (v1230 == -4)
                    {
                      goto LABEL_3259;
                    }

                    v1235 = *v1233;
                    if (v1235 >= 2)
                    {
                      goto LABEL_3262;
                    }

                    if (v1186 <= v1230 + 5 - v1188)
                    {
                      goto LABEL_3145;
                    }

                    *(a3 + 2) = v1230 + 6;
                    v1236 = *(v1230 + 5);
                    if (v1236 < 2)
                    {
                      if (v1186 <= v1230 + 6 - v1188)
                      {
                        goto LABEL_3145;
                      }

                      *(a3 + 2) = v1230 + 7;
                      v1237 = *(v1230 + 6);
                      if (v1237 < 2)
                      {
                        if (v1186 > v1230 + 7 - v1188)
                        {
                          *(a3 + 2) = v1230 + 8;
                          v1238 = *(v1230 + 7);
                          if (v1238 < 2)
                          {
                            WebKit::RemoteGraphicsContextGL::colorMaskiOES(this, v1234, v1235 != 0, v1236 != 0, v1237 != 0, v1238 != 0);
                            goto LABEL_461;
                          }

                          goto LABEL_3153;
                        }

LABEL_3145:
                        v1761 = 0;
                        v1762 = 0;
                        *a3 = 0;
                        *(a3 + 1) = 0;
                        v1763 = *(a3 + 3);
                        if (v1763)
                        {
                          (*(*v1763 + 16))(v1763);
                          v1761 = 0;
                          v1764 = *a3;
                          v1765 = *(a3 + 1);
                          v1766 = *(a3 + 3);
                          *a3 = 0;
                          *(a3 + 1) = 0;
                          v1762 = 0;
                          if (v1766)
                          {
                            if (v1765)
                            {
                              (*(*v1766 + 16))(v1766, v1764);
                              v1762 = *a3;
                              v1761 = *(a3 + 1);
                            }
                          }
                        }

                        goto LABEL_3154;
                      }
                    }

LABEL_3153:
                    v1761 = v1186;
                    v1762 = v1188;
LABEL_3154:
                    *a3 = 0;
                    *(a3 + 1) = 0;
                    v1767 = *(a3 + 3);
                    if (v1767 && v1761)
                    {
                      (*(*v1767 + 16))(v1767, v1762, v1761);
                    }

LABEL_2623:
                    v1485 = *a3;
                    v1505 = *(a3 + 1);
                    *a3 = 0;
                    *(a3 + 1) = 0;
                    v1487 = *(a3 + 3);
                    if (!v1487)
                    {
                      goto LABEL_461;
                    }

LABEL_3297:
                    if (!v1505)
                    {
                      goto LABEL_461;
                    }

LABEL_2926:
                    (*(*v1487 + 16))(v1487, v1485);
                    goto LABEL_461;
                  }

                  if (*(a3 + 25) <= 0x4A2u)
                  {
                    if (v5 == 1171)
                    {
                      v980 = IPC::Decoder::decode<std::tuple<unsigned int>>(a3);
                      if ((v980 & 0x100000000) != 0)
                      {
                        *buf = v980;
                        if (v980 <= 0xFFFFFFFD)
                        {
                          if (v980)
                          {
                            *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
                          }

                          v275 = *(this + 7);
                          if (v275)
                          {
                            ++*(v275 + 2);
                            WebCore::GraphicsContextGLANGLE::bindVertexArray(v275);
LABEL_537:
                            if (*(v275 + 2) == 1)
                            {
                              (*(*v275 + 16))(v275);
                            }

                            else
                            {
                              --*(v275 + 2);
                            }
                          }

                          else
                          {
                            WebCore::GraphicsContextGLANGLE::bindVertexArray(0);
                          }
                        }
                      }

                      goto LABEL_461;
                    }

                    if (v5 != 1181)
                    {
                      if (v5 != 1186)
                      {
                        goto LABEL_1493;
                      }

                      v550 = *(a3 + 1);
                      v781 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                      v782 = *a3;
                      v783 = v781 - *a3;
                      v17 = v550 >= v783;
                      v784 = v550 - v783;
                      if (v17 && v784 > 3)
                      {
                        *(a3 + 2) = v781 + 1;
                        if (!v781)
                        {
                          goto LABEL_3023;
                        }

                        v785 = *v781;
                        v786 = ((v781 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                        if (v550 >= v786 - v782 && v550 - (v786 - v782) > 3)
                        {
                          *(a3 + 2) = v786 + 1;
                          if (!v786)
                          {
                            goto LABEL_3023;
                          }

                          v787 = *v786;
                          v788 = ((v786 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v550 >= v788 - v782 && v550 - (v788 - v782) > 3)
                          {
                            *(a3 + 2) = v788 + 1;
                            if (!v788)
                            {
                              goto LABEL_3023;
                            }

                            v789 = *v788;
                            v790 = ((v788 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                            if (v550 >= v790 - v782 && v550 - (v790 - v782) > 3)
                            {
                              *(a3 + 2) = v790 + 1;
                              if (v790)
                              {
                                WebKit::RemoteGraphicsContextGL::clearBufferfi(this, v785, v787, v789, *v790);
                                goto LABEL_461;
                              }

                              goto LABEL_3023;
                            }
                          }
                        }
                      }

                      goto LABEL_3021;
                    }

                    v903 = *(a3 + 1);
                    v921 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                    v922 = *a3;
                    v923 = v921 - *a3;
                    v17 = v903 >= v923;
                    v924 = v903 - v923;
                    if (v17 && v924 > 3)
                    {
                      *(a3 + 2) = v921 + 1;
                      if (!v921)
                      {
                        goto LABEL_3295;
                      }

                      v925 = *v921;
                      v926 = ((v921 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                      if (v903 >= v926 - v922 && v903 - (v926 - v922) > 3)
                      {
                        *(a3 + 2) = v926 + 1;
                        if (!v926)
                        {
                          goto LABEL_3295;
                        }

                        v927 = *v926;
                        v928 = ((v926 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                        if (v903 >= v928 - v922 && v903 - (v928 - v922) > 3)
                        {
                          *(a3 + 2) = v928 + 1;
                          if (!v928)
                          {
                            goto LABEL_3295;
                          }

                          v929 = *v928;
                          v930 = ((v928 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v903 >= v930 - v922 && v903 - (v930 - v922) > 3)
                          {
                            *(a3 + 2) = v930 + 1;
                            if (!v930)
                            {
                              goto LABEL_3295;
                            }

                            v931 = *v930;
                            v932 = ((v930 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                            if (v903 >= v932 - v922 && v903 - (v932 - v922) > 3)
                            {
                              *(a3 + 2) = v932 + 1;
                              if (!v932)
                              {
                                goto LABEL_3295;
                              }

                              v933 = *v932;
                              v934 = ((v932 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                              if (v903 >= v934 - v922 && v903 - (v934 - v922) > 3)
                              {
                                *(a3 + 2) = v934 + 1;
                                if (!v934)
                                {
                                  goto LABEL_3295;
                                }

                                v935 = *v934;
                                v936 = ((v934 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                                if (v903 >= v936 - v922 && v903 - (v936 - v922) > 3)
                                {
                                  *(a3 + 2) = v936 + 1;
                                  if (!v936)
                                  {
                                    goto LABEL_3295;
                                  }

                                  v937 = *v936;
                                  v938 = ((v936 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                                  if (v903 >= v938 - v922 && v903 - (v938 - v922) > 3)
                                  {
                                    *(a3 + 2) = v938 + 1;
                                    if (!v938)
                                    {
                                      goto LABEL_3295;
                                    }

                                    v939 = *v938;
                                    v940 = ((v938 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                                    if (v903 >= v940 - v922 && v903 - (v940 - v922) > 3)
                                    {
                                      *(a3 + 2) = v940 + 1;
                                      if (v940)
                                      {
                                        v941 = *v940;
                                        v942 = ((v940 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                                        if (v903 >= v942 - v922 && v903 - (v942 - v922) > 3)
                                        {
                                          *(a3 + 2) = v942 + 1;
                                          if (v942)
                                          {
                                            WebKit::RemoteGraphicsContextGL::blitFramebuffer(this, v925, v927, v929, v931, v933, v935, v937, v939, v941, *v942);
                                            goto LABEL_461;
                                          }

                                          goto LABEL_3295;
                                        }

                                        goto LABEL_3293;
                                      }

LABEL_3295:
                                      *a3 = 0;
                                      *(a3 + 1) = 0;
                                      v1788 = *(a3 + 3);
                                      if (v1788 && v903)
                                      {
                                        (*(*v1788 + 16))(v1788);
                                      }

LABEL_3296:
                                      v1485 = *a3;
                                      v1505 = *(a3 + 1);
                                      *a3 = 0;
                                      *(a3 + 1) = 0;
                                      v1487 = *(a3 + 3);
                                      if (!v1487)
                                      {
                                        goto LABEL_461;
                                      }

                                      goto LABEL_3297;
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }

LABEL_3293:
                    *a3 = 0;
                    *(a3 + 1) = 0;
                    v1787 = *(a3 + 3);
                    if (v1787)
                    {
                      if (v903)
                      {
                        (*(*v1787 + 16))(v1787);
                        v903 = *(a3 + 1);
                      }
                    }

                    else
                    {
                      v903 = 0;
                    }

                    goto LABEL_3295;
                  }

                  switch(v5)
                  {
                    case 0x4A3u:
                      v276 = *(a3 + 1);
                      v993 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                      v994 = *a3;
                      v995 = v993 - *a3;
                      v17 = v276 >= v995;
                      v996 = v276 - v995;
                      if (v17 && v996 > 3)
                      {
                        *(a3 + 2) = v993 + 1;
                        if (!v993)
                        {
                          goto LABEL_2581;
                        }

                        v997 = *v993;
                        v998 = ((v993 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                        if (v276 >= v998 - v994 && v276 - (v998 - v994) > 3)
                        {
                          *(a3 + 2) = v998 + 1;
                          if (v998)
                          {
                            v999 = *v998;
                            IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, v1797);
                            if (v1798 & 1) != 0 || (v1493 = *a3, v1494 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v1495 = *(a3 + 3)) != 0) && v1494 && ((*(*v1495 + 16))(v1495, v1493), (v1798))
                            {
                              *buf = v997;
                              *&buf[4] = v999;
                              *&buf[8] = *v1797;
                              buf[24] = 1;
                              WebKit::RemoteGraphicsContextGL::clearBufferfv(this, v997, v999, &buf[8]);
                              goto LABEL_461;
                            }

                            goto LABEL_2582;
                          }

                          goto LABEL_2581;
                        }
                      }

                      break;
                    case 0x4A4u:
                      v276 = *(a3 + 1);
                      v945 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                      v946 = *a3;
                      v947 = v945 - *a3;
                      v17 = v276 >= v947;
                      v948 = v276 - v947;
                      if (v17 && v948 > 3)
                      {
                        *(a3 + 2) = v945 + 1;
                        if (!v945)
                        {
                          goto LABEL_2581;
                        }

                        v949 = *v945;
                        v950 = ((v945 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                        if (v276 >= v950 - v946 && v276 - (v950 - v946) > 3)
                        {
                          *(a3 + 2) = v950 + 1;
                          if (v950)
                          {
                            v951 = *v950;
                            IPC::ArgumentCoder<std::span<float const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, v1797);
                            if (v1798 & 1) != 0 || (v1677 = *a3, v1678 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v1679 = *(a3 + 3)) != 0) && v1678 && ((*(*v1679 + 16))(v1679, v1677), (v1798))
                            {
                              *buf = v949;
                              *&buf[4] = v951;
                              *&buf[8] = *v1797;
                              buf[24] = 1;
                              WebKit::RemoteGraphicsContextGL::clearBufferiv(this, v949, v951, &buf[8]);
                              goto LABEL_461;
                            }

                            goto LABEL_2582;
                          }

                          goto LABEL_2581;
                        }
                      }

                      break;
                    case 0x4A5u:
                      v276 = *(a3 + 1);
                      v796 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                      v797 = *a3;
                      v798 = v796 - *a3;
                      v17 = v276 >= v798;
                      v799 = v276 - v798;
                      if (v17 && v799 > 3)
                      {
                        *(a3 + 2) = v796 + 1;
                        if (!v796)
                        {
                          goto LABEL_2581;
                        }

                        v800 = *v796;
                        v801 = ((v796 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                        if (v276 >= v801 - v797 && v276 - (v801 - v797) > 3)
                        {
                          *(a3 + 2) = v801 + 1;
                          if (v801)
                          {
                            v802 = *v801;
                            IPC::ArgumentCoder<std::span<unsigned int const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, v1797);
                            if (v1798 & 1) != 0 || (v1480 = *a3, v1481 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v1482 = *(a3 + 3)) != 0) && v1481 && ((*(*v1482 + 16))(v1482, v1480), (v1798))
                            {
                              *buf = v800;
                              *&buf[4] = v802;
                              *&buf[8] = *v1797;
                              buf[24] = 1;
                              WebKit::RemoteGraphicsContextGL::clearBufferuiv(this, v800, v802, &buf[8]);
                              goto LABEL_461;
                            }

                            goto LABEL_2582;
                          }

                          goto LABEL_2581;
                        }
                      }

                      break;
                    default:
                      goto LABEL_1493;
                  }

LABEL_2579:
                  *a3 = 0;
                  *(a3 + 1) = 0;
                  v1483 = *(a3 + 3);
                  if (v1483)
                  {
                    if (v276)
                    {
                      (*(*v1483 + 16))(v1483);
                      v276 = *(a3 + 1);
                    }
                  }

                  else
                  {
                    v276 = 0;
                  }

LABEL_2581:
                  *a3 = 0;
                  *(a3 + 1) = 0;
                  v1484 = *(a3 + 3);
                  if (v1484)
                  {
LABEL_2939:
                    if (v276)
                    {
                      (*(*v1484 + 16))(v1484);
                    }
                  }

LABEL_2582:
                  v1485 = *a3;
                  v1486 = *(a3 + 1);
                  *a3 = 0;
                  *(a3 + 1) = 0;
                  v1487 = *(a3 + 3);
                  if (!v1487 || !v1486)
                  {
                    goto LABEL_461;
                  }

                  goto LABEL_2926;
                }

                if (*(a3 + 25) <= 0x50Au)
                {
                  switch(v5)
                  {
                    case 0x505u:
                      IPC::Decoder::decode<std::tuple<unsigned int,int,unsigned int,int,int>>(buf, a3);
                      if (buf[20] == 1)
                      {
                        WebKit::RemoteGraphicsContextGL::renderbufferStorageMultisample(this, *buf, *&buf[4], *&buf[8], *&buf[12], *&buf[16]);
                      }

                      goto LABEL_461;
                    case 0x508u:
                      v6 = *(this + 7);
                      if (!v6)
                      {
                        WebCore::GraphicsContextGLANGLE::resumeTransformFeedback(0);
                        goto LABEL_461;
                      }

                      ++*(v6 + 2);
                      WebCore::GraphicsContextGLANGLE::resumeTransformFeedback(v6);
                      goto LABEL_1173;
                    case 0x50Au:
                      v791 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int,float>>(a3);
                      if ((v792 & 0x100000000) == 0)
                      {
                        goto LABEL_461;
                      }

                      *buf = v791;
                      if (v791 > 0xFFFFFFFD)
                      {
                        goto LABEL_461;
                      }

                      v793 = *&v792;
                      if (v791)
                      {
                        *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
                      }

                      v274 = *(this + 7);
                      if (!v274)
                      {
                        WebCore::GraphicsContextGLANGLE::samplerParameterf(0, v793);
                        goto LABEL_461;
                      }

                      ++*(v274 + 2);
                      WebCore::GraphicsContextGLANGLE::samplerParameterf(v274, v793);
                      goto LABEL_2091;
                  }

                  goto LABEL_1493;
                }

                switch(*(a3 + 25))
                {
                  case 0x51A:
                    v276 = *(a3 + 1);
                    v748 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                    v749 = *a3;
                    v750 = v748 - *a3;
                    v17 = v276 >= v750;
                    v751 = v276 - v750;
                    if (!v17 || v751 <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v748 + 1;
                    if (!v748)
                    {
                      goto LABEL_2581;
                    }

                    v1793 = *v748;
                    v752 = ((v748 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v276 < v752 - v749 || v276 - (v752 - v749) <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v752 + 1;
                    if (!v752)
                    {
                      goto LABEL_2581;
                    }

                    v753 = *v752;
                    v754 = ((v752 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v276 < v754 - v749 || v276 - (v754 - v749) <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v754 + 1;
                    if (!v754)
                    {
                      goto LABEL_2581;
                    }

                    v755 = *v754;
                    v756 = ((v754 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v276 < v756 - v749 || v276 - (v756 - v749) <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v756 + 1;
                    if (!v756)
                    {
                      goto LABEL_2581;
                    }

                    v757 = *v756;
                    v758 = ((v756 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v276 < v758 - v749 || v276 - (v758 - v749) <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v758 + 1;
                    if (!v758)
                    {
                      goto LABEL_2581;
                    }

                    v759 = *v758;
                    v760 = ((v758 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v276 < v760 - v749 || v276 - (v760 - v749) <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v760 + 1;
                    if (!v760)
                    {
                      goto LABEL_2581;
                    }

                    v761 = *v760;
                    v762 = ((v760 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v276 < v762 - v749 || v276 - (v762 - v749) <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v762 + 1;
                    if (!v762)
                    {
                      goto LABEL_2581;
                    }

                    v763 = *v762;
                    v764 = ((v762 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v276 < v764 - v749 || v276 - (v764 - v749) <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v764 + 1;
                    if (!v764)
                    {
                      goto LABEL_2581;
                    }

                    v765 = *v764;
                    v766 = ((v764 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v276 < v766 - v749 || v276 - (v766 - v749) <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v766 + 1;
                    if (!v766)
                    {
                      goto LABEL_2581;
                    }

                    v767 = *v766;
                    IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, v1797);
                    if ((v1798 & 1) == 0)
                    {
                      v1727 = *a3;
                      v1728 = *(a3 + 1);
                      *a3 = 0;
                      *(a3 + 1) = 0;
                      v1729 = *(a3 + 3);
                      if (!v1729)
                      {
                        goto LABEL_2582;
                      }

                      if (!v1728)
                      {
                        goto LABEL_2582;
                      }

                      (*(*v1729 + 16))(v1729, v1727);
                      if ((v1798 & 1) == 0)
                      {
                        goto LABEL_2582;
                      }
                    }

                    *buf = v1793;
                    *&buf[4] = v753;
                    *&buf[8] = v755;
                    *&buf[12] = v757;
                    *&buf[16] = v759;
                    *&buf[20] = v761;
                    *&buf[24] = v763;
                    *&buf[28] = v765;
                    *&buf[32] = v767;
                    *&buf[40] = *v1797;
                    LOBYTE(v1805) = 1;
                    WebKit::RemoteGraphicsContextGL::texImage3D0(this);
                    goto LABEL_461;
                  case 0x51B:
                    v550 = *(a3 + 1);
                    v1098 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                    v1099 = *a3;
                    v1100 = v1098 - *a3;
                    v17 = v550 >= v1100;
                    v1101 = v550 - v1100;
                    if (!v17 || v1101 <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1098 + 1;
                    if (!v1098)
                    {
                      goto LABEL_3023;
                    }

                    v1102 = *v1098;
                    v1103 = ((v1098 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v1103 - v1099 || v550 - (v1103 - v1099) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1103 + 1;
                    if (!v1103)
                    {
                      goto LABEL_3023;
                    }

                    v1104 = *v1103;
                    v1105 = ((v1103 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v1105 - v1099 || v550 - (v1105 - v1099) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1105 + 1;
                    if (!v1105)
                    {
                      goto LABEL_3023;
                    }

                    v1106 = *v1105;
                    v1107 = ((v1105 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v1107 - v1099 || v550 - (v1107 - v1099) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1107 + 1;
                    if (!v1107)
                    {
                      goto LABEL_3023;
                    }

                    v1108 = *v1107;
                    v1109 = ((v1107 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v1109 - v1099 || v550 - (v1109 - v1099) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1109 + 1;
                    if (!v1109)
                    {
                      goto LABEL_3023;
                    }

                    v1110 = *v1109;
                    v1111 = ((v1109 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v1111 - v1099 || v550 - (v1111 - v1099) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1111 + 1;
                    if (!v1111)
                    {
                      goto LABEL_3023;
                    }

                    v1112 = *v1111;
                    v1113 = ((v1111 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v1113 - v1099 || v550 - (v1113 - v1099) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1113 + 1;
                    if (!v1113)
                    {
                      goto LABEL_3023;
                    }

                    v1114 = *v1113;
                    v1115 = ((v1113 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v1115 - v1099 || v550 - (v1115 - v1099) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1115 + 1;
                    if (!v1115)
                    {
                      goto LABEL_3023;
                    }

                    v1116 = *v1115;
                    v1117 = ((v1115 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v1117 - v1099 || v550 - (v1117 - v1099) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1117 + 1;
                    if (!v1117)
                    {
                      goto LABEL_3023;
                    }

                    v1118 = *v1117;
                    v1119 = ((v1117 + 11) & 0xFFFFFFFFFFFFFFF8);
                    if (v550 < v1119 - v1099 || v550 - (v1119 - v1099) <= 7)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1119 + 1;
                    if (!v1119)
                    {
                      goto LABEL_3023;
                    }

                    WebKit::RemoteGraphicsContextGL::texImage3D1(this, v1102, v1104, v1106, v1108, v1110, v1112, v1114, v1116, v1118, *v1119);
                    goto LABEL_461;
                  case 0x51C:
                  case 0x51D:
                  case 0x520:
                  case 0x521:
                  case 0x525:
                  case 0x526:
                  case 0x527:
                  case 0x528:
                  case 0x52B:
                  case 0x52C:
                  case 0x52D:
                  case 0x52E:
                  case 0x531:
                  case 0x532:
                  case 0x533:
                  case 0x534:
                  case 0x537:
                  case 0x538:
                  case 0x539:
                  case 0x53A:
                  case 0x53E:
                  case 0x541:
                  case 0x544:
                  case 0x547:
                  case 0x548:
                  case 0x549:
                  case 0x54A:
                  case 0x54B:
                  case 0x54C:
                  case 0x54D:
                  case 0x54E:
                  case 0x54F:
                  case 0x550:
                  case 0x551:
                  case 0x557:
                  case 0x558:
                    goto LABEL_1493;
                  case 0x51E:
                    IPC::Decoder::decode<std::tuple<unsigned int,int,unsigned int,int,int>>(buf, a3);
                    if (buf[20] == 1)
                    {
                      WebKit::RemoteGraphicsContextGL::texStorage2D(this, *buf, *&buf[4], *&buf[8], *&buf[12], *&buf[16]);
                    }

                    goto LABEL_461;
                  case 0x51F:
                    v550 = *(a3 + 1);
                    v1079 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                    v1080 = *a3;
                    v1081 = v1079 - *a3;
                    v17 = v550 >= v1081;
                    v1082 = v550 - v1081;
                    if (!v17 || v1082 <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1079 + 1;
                    if (!v1079)
                    {
                      goto LABEL_3023;
                    }

                    v1083 = *v1079;
                    v1084 = ((v1079 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v1084 - v1080 || v550 - (v1084 - v1080) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1084 + 1;
                    if (!v1084)
                    {
                      goto LABEL_3023;
                    }

                    v1085 = *v1084;
                    v1086 = ((v1084 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v1086 - v1080 || v550 - (v1086 - v1080) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1086 + 1;
                    if (!v1086)
                    {
                      goto LABEL_3023;
                    }

                    v1087 = *v1086;
                    v1088 = ((v1086 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v1088 - v1080 || v550 - (v1088 - v1080) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1088 + 1;
                    if (!v1088)
                    {
                      goto LABEL_3023;
                    }

                    v1089 = *v1088;
                    v1090 = ((v1088 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v1090 - v1080 || v550 - (v1090 - v1080) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1090 + 1;
                    if (!v1090)
                    {
                      goto LABEL_3023;
                    }

                    v1091 = *v1090;
                    v1092 = ((v1090 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v1092 - v1080 || v550 - (v1092 - v1080) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1092 + 1;
                    if (!v1092)
                    {
                      goto LABEL_3023;
                    }

                    WebKit::RemoteGraphicsContextGL::texStorage3D(this, v1083, v1085, v1087, v1089, v1091, *v1092);
                    goto LABEL_461;
                  case 0x522:
                    v276 = *(a3 + 1);
                    v1048 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                    v1049 = *a3;
                    v1050 = v1048 - *a3;
                    v17 = v276 >= v1050;
                    v1051 = v276 - v1050;
                    if (!v17 || v1051 <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v1048 + 1;
                    if (!v1048)
                    {
                      goto LABEL_2581;
                    }

                    v1795 = *v1048;
                    v1052 = ((v1048 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v276 < v1052 - v1049 || v276 - (v1052 - v1049) <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v1052 + 1;
                    if (!v1052)
                    {
                      goto LABEL_2581;
                    }

                    v1792 = *v1052;
                    v1053 = ((v1052 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v276 < v1053 - v1049 || v276 - (v1053 - v1049) <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v1053 + 1;
                    if (!v1053)
                    {
                      goto LABEL_2581;
                    }

                    v1054 = *v1053;
                    v1055 = ((v1053 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v276 < v1055 - v1049 || v276 - (v1055 - v1049) <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v1055 + 1;
                    if (!v1055)
                    {
                      goto LABEL_2581;
                    }

                    v1056 = *v1055;
                    v1057 = ((v1055 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v276 < v1057 - v1049 || v276 - (v1057 - v1049) <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v1057 + 1;
                    if (!v1057)
                    {
                      goto LABEL_2581;
                    }

                    v1058 = *v1057;
                    v1059 = ((v1057 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v276 < v1059 - v1049 || v276 - (v1059 - v1049) <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v1059 + 1;
                    if (!v1059)
                    {
                      goto LABEL_2581;
                    }

                    v1060 = *v1059;
                    v1061 = ((v1059 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v276 < v1061 - v1049 || v276 - (v1061 - v1049) <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v1061 + 1;
                    if (!v1061)
                    {
                      goto LABEL_2581;
                    }

                    v1062 = *v1061;
                    v1063 = ((v1061 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v276 < v1063 - v1049 || v276 - (v1063 - v1049) <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v1063 + 1;
                    if (!v1063)
                    {
                      goto LABEL_2581;
                    }

                    v1064 = *v1063;
                    v1065 = ((v1063 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v276 < v1065 - v1049 || v276 - (v1065 - v1049) <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v1065 + 1;
                    if (!v1065)
                    {
                      goto LABEL_2581;
                    }

                    v1066 = *v1065;
                    v1067 = ((v1065 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v276 < v1067 - v1049 || v276 - (v1067 - v1049) <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v1067 + 1;
                    if (!v1067)
                    {
                      goto LABEL_2581;
                    }

                    v1068 = *v1067;
                    IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, v1797);
                    if ((v1798 & 1) == 0)
                    {
                      v1730 = *a3;
                      v1731 = *(a3 + 1);
                      *a3 = 0;
                      *(a3 + 1) = 0;
                      v1732 = *(a3 + 3);
                      if (!v1732)
                      {
                        goto LABEL_2582;
                      }

                      if (!v1731)
                      {
                        goto LABEL_2582;
                      }

                      (*(*v1732 + 16))(v1732, v1730);
                      if ((v1798 & 1) == 0)
                      {
                        goto LABEL_2582;
                      }
                    }

                    *buf = v1795;
                    *&buf[4] = v1792;
                    *&buf[8] = v1054;
                    *&buf[12] = v1056;
                    *&buf[16] = v1058;
                    *&buf[20] = v1060;
                    *&buf[24] = v1062;
                    *&buf[28] = v1064;
                    *&buf[32] = v1066;
                    *&buf[36] = v1068;
                    *&buf[40] = *v1797;
                    LOBYTE(v1805) = 1;
                    WebKit::RemoteGraphicsContextGL::texSubImage3D0(this);
                    goto LABEL_461;
                  case 0x523:
                    v550 = *(a3 + 1);
                    v1120 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                    v1121 = *a3;
                    v1122 = v1120 - *a3;
                    v17 = v550 >= v1122;
                    v1123 = v550 - v1122;
                    if (!v17 || v1123 <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1120 + 1;
                    if (!v1120)
                    {
                      goto LABEL_3023;
                    }

                    v1124 = *v1120;
                    v1125 = ((v1120 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v1125 - v1121 || v550 - (v1125 - v1121) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1125 + 1;
                    if (!v1125)
                    {
                      goto LABEL_3023;
                    }

                    v1126 = *v1125;
                    v1127 = ((v1125 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v1127 - v1121 || v550 - (v1127 - v1121) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1127 + 1;
                    if (!v1127)
                    {
                      goto LABEL_3023;
                    }

                    v1128 = *v1127;
                    v1129 = ((v1127 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v1129 - v1121 || v550 - (v1129 - v1121) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1129 + 1;
                    if (!v1129)
                    {
                      goto LABEL_3023;
                    }

                    v1130 = *v1129;
                    v1131 = ((v1129 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v1131 - v1121 || v550 - (v1131 - v1121) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1131 + 1;
                    if (!v1131)
                    {
                      goto LABEL_3023;
                    }

                    v1132 = *v1131;
                    v1133 = ((v1131 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v1133 - v1121 || v550 - (v1133 - v1121) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1133 + 1;
                    if (!v1133)
                    {
                      goto LABEL_3023;
                    }

                    v1134 = *v1133;
                    v1135 = ((v1133 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v1135 - v1121 || v550 - (v1135 - v1121) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1135 + 1;
                    if (!v1135)
                    {
                      goto LABEL_3023;
                    }

                    v1136 = *v1135;
                    v1137 = ((v1135 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v1137 - v1121 || v550 - (v1137 - v1121) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1137 + 1;
                    if (!v1137)
                    {
                      goto LABEL_3023;
                    }

                    v1138 = *v1137;
                    v1139 = ((v1137 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v1139 - v1121 || v550 - (v1139 - v1121) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1139 + 1;
                    if (!v1139)
                    {
                      goto LABEL_3023;
                    }

                    v1140 = *v1139;
                    v1141 = ((v1139 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v1141 - v1121 || v550 - (v1141 - v1121) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1141 + 1;
                    if (!v1141)
                    {
                      goto LABEL_3023;
                    }

                    v1142 = *v1141;
                    v1143 = ((v1141 + 11) & 0xFFFFFFFFFFFFFFF8);
                    if (v550 < v1143 - v1121 || v550 - (v1143 - v1121) <= 7)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1143 + 1;
                    if (!v1143)
                    {
                      goto LABEL_3023;
                    }

                    WebKit::RemoteGraphicsContextGL::texSubImage3D1(this, v1124, v1126, v1128, v1130, v1132, v1134, v1136, v1138, v1140, v1142, *v1143);
                    goto LABEL_461;
                  case 0x524:
                    v1035 = *(a3 + 1);
                    v1036 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                    v1037 = v1036 - *a3;
                    v17 = v1035 >= v1037;
                    v1038 = v1035 - v1037;
                    if (v17 && v1038 > 3)
                    {
                      *(a3 + 2) = v1036 + 1;
                      if (v1036)
                      {
                        v1039 = *v1036;
                        IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a3, v1797);
                        if ((v1798 & 1) == 0)
                        {
                          v1662 = *a3;
                          v1663 = *(a3 + 1);
                          *a3 = 0;
                          *(a3 + 1) = 0;
                          v1664 = *(a3 + 3);
                          if (!v1664)
                          {
                            goto LABEL_2830;
                          }

                          if (!v1663)
                          {
                            goto LABEL_2830;
                          }

                          (*(*v1664 + 16))(v1664, v1662);
                          if ((v1798 & 1) == 0)
                          {
                            goto LABEL_2830;
                          }
                        }

                        v1040 = *(a3 + 1);
                        v1041 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                        v1042 = *a3;
                        v1043 = v1041 - *a3;
                        v17 = v1040 >= v1043;
                        v1044 = v1040 - v1043;
                        if (v17 && v1044 > 3)
                        {
                          *(a3 + 2) = v1041 + 1;
                          if (v1041)
                          {
                            v1045 = *v1041;
                            *buf = v1039;
                            *&buf[8] = v1797[0];
                            v1046 = v1797[1];
                            v1797[0] = 0;
                            v1797[1] = 0;
                            *&buf[16] = v1046;
                            *&buf[24] = v1045;
                            buf[32] = 1;
                            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v1797, v1042);
                            WebKit::RemoteGraphicsContextGL::transformFeedbackVaryings(this, v1039, &buf[8], v1045);
                            if ((buf[32] & 1) == 0)
                            {
                              goto LABEL_461;
                            }

                            goto LABEL_1864;
                          }

                          goto LABEL_3096;
                        }

                        *a3 = 0;
                        *(a3 + 1) = 0;
                        v1755 = *(a3 + 3);
                        if (v1755)
                        {
                          if (v1040)
                          {
                            (*(*v1755 + 16))(v1755);
                            v1042 = *a3;
                            v1040 = *(a3 + 1);
LABEL_3096:
                            *a3 = 0;
                            *(a3 + 1) = 0;
                            v1756 = *(a3 + 3);
                            if (v1756 && v1040)
                            {
                              (*(*v1756 + 16))(v1756);
                            }

                            if (v1798)
                            {
                              WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v1797, v1042);
                            }

                            goto LABEL_2830;
                          }
                        }

                        else
                        {
                          v1040 = 0;
                        }

                        v1042 = 0;
                        goto LABEL_3096;
                      }
                    }

                    else
                    {
                      *a3 = 0;
                      *(a3 + 1) = 0;
                      v1753 = *(a3 + 3);
                      if (v1753)
                      {
                        if (v1035)
                        {
                          (*(*v1753 + 16))(v1753);
                          v1035 = *(a3 + 1);
                        }
                      }

                      else
                      {
                        v1035 = 0;
                      }
                    }

                    *a3 = 0;
                    *(a3 + 1) = 0;
                    v1754 = *(a3 + 3);
                    if (v1754 && v1035)
                    {
                      (*(*v1754 + 16))(v1754);
                    }

LABEL_2830:
                    v1485 = *a3;
                    v1665 = *(a3 + 1);
                    *a3 = 0;
                    *(a3 + 1) = 0;
                    v1487 = *(a3 + 3);
                    if (v1487 && v1665)
                    {
                      goto LABEL_2926;
                    }

                    goto LABEL_461;
                  case 0x529:
                    v550 = *(a3 + 1);
                    v1093 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
                    v1094 = *a3;
                    v1095 = v1093 - *a3;
                    v17 = v550 >= v1095;
                    v1096 = v550 - v1095;
                    if (!v17 || v1096 <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1093 + 4;
                    if (!v1093)
                    {
                      goto LABEL_3023;
                    }

                    v1097 = (v1093 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                    if (v550 < v1097 - v1094 || v550 - (v1097 - v1094) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1097 + 4;
                    if (!v1097)
                    {
                      goto LABEL_3023;
                    }

                    v6 = *(this + 7);
                    if (v6)
                    {
                      ++*(v6 + 2);
                      WebCore::GraphicsContextGLANGLE::uniform1ui(v6);
                      goto LABEL_1173;
                    }

                    WebCore::GraphicsContextGLANGLE::uniform1ui(0);
                    goto LABEL_461;
                  case 0x52A:
                    IPC::Decoder::decode<std::tuple<int,std::span<unsigned int const,18446744073709551615ul>>>(buf, a3);
                    if (buf[24] != 1)
                    {
                      goto LABEL_461;
                    }

                    v275 = *(this + 7);
                    if (v275)
                    {
                      ++*(v275 + 2);
                      WebCore::GraphicsContextGLANGLE::uniform1uiv();
                      goto LABEL_537;
                    }

                    WebCore::GraphicsContextGLANGLE::uniform1uiv();
                    goto LABEL_461;
                  case 0x52F:
                    v550 = *(a3 + 1);
                    v1029 = (*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL;
                    v1030 = *a3;
                    v1031 = v1029 - *a3;
                    v17 = v550 >= v1031;
                    v1032 = v550 - v1031;
                    if (!v17 || v1032 <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1029 + 4;
                    if (!v1029)
                    {
                      goto LABEL_3023;
                    }

                    v1033 = (v1029 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                    if (v550 < v1033 - v1030 || v550 - (v1033 - v1030) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1033 + 4;
                    if (!v1033)
                    {
                      goto LABEL_3023;
                    }

                    v1034 = (v1033 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                    if (v550 < v1034 - v1030 || v550 - (v1034 - v1030) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1034 + 4;
                    if (!v1034)
                    {
                      goto LABEL_3023;
                    }

                    v6 = *(this + 7);
                    if (v6)
                    {
                      ++*(v6 + 2);
                      WebCore::GraphicsContextGLANGLE::uniform2ui(v6);
                      goto LABEL_1173;
                    }

                    WebCore::GraphicsContextGLANGLE::uniform2ui(0);
                    goto LABEL_461;
                  case 0x530:
                    IPC::Decoder::decode<std::tuple<int,std::span<unsigned int const,18446744073709551615ul>>>(buf, a3);
                    if (buf[24] != 1)
                    {
                      goto LABEL_461;
                    }

                    v275 = *(this + 7);
                    if (v275)
                    {
                      ++*(v275 + 2);
                      WebCore::GraphicsContextGLANGLE::uniform2uiv();
                      goto LABEL_537;
                    }

                    WebCore::GraphicsContextGLANGLE::uniform2uiv();
                    goto LABEL_461;
                  case 0x535:
                    v550 = *(a3 + 1);
                    v1069 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                    v1070 = *a3;
                    v1071 = v1069 - *a3;
                    v17 = v550 >= v1071;
                    v1072 = v550 - v1071;
                    if (!v17 || v1072 <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1069 + 1;
                    if (!v1069)
                    {
                      goto LABEL_3023;
                    }

                    v1073 = *v1069;
                    v1074 = ((v1069 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v1074 - v1070 || v550 - (v1074 - v1070) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1074 + 1;
                    if (!v1074)
                    {
                      goto LABEL_3023;
                    }

                    v1075 = *v1074;
                    v1076 = ((v1074 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v1076 - v1070 || v550 - (v1076 - v1070) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1076 + 1;
                    if (!v1076)
                    {
                      goto LABEL_3023;
                    }

                    v1077 = *v1076;
                    v1078 = ((v1076 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v1078 - v1070 || v550 - (v1078 - v1070) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1078 + 1;
                    if (!v1078)
                    {
                      goto LABEL_3023;
                    }

                    WebKit::RemoteGraphicsContextGL::uniform3ui(this, v1073, v1075, v1077, *v1078);
                    goto LABEL_461;
                  case 0x536:
                    IPC::Decoder::decode<std::tuple<int,std::span<unsigned int const,18446744073709551615ul>>>(buf, a3);
                    if (buf[24] != 1)
                    {
                      goto LABEL_461;
                    }

                    v275 = *(this + 7);
                    if (v275)
                    {
                      ++*(v275 + 2);
                      WebCore::GraphicsContextGLANGLE::uniform3uiv();
                      goto LABEL_537;
                    }

                    WebCore::GraphicsContextGLANGLE::uniform3uiv();
                    goto LABEL_461;
                  case 0x53B:
                    v550 = *(a3 + 1);
                    v1144 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                    v1145 = *a3;
                    v1146 = v1144 - *a3;
                    v17 = v550 >= v1146;
                    v1147 = v550 - v1146;
                    if (!v17 || v1147 <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1144 + 1;
                    if (!v1144)
                    {
                      goto LABEL_3023;
                    }

                    v1148 = *v1144;
                    v1149 = ((v1144 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v1149 - v1145 || v550 - (v1149 - v1145) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1149 + 1;
                    if (!v1149)
                    {
                      goto LABEL_3023;
                    }

                    v1150 = *v1149;
                    v1151 = ((v1149 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v1151 - v1145 || v550 - (v1151 - v1145) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1151 + 1;
                    if (!v1151)
                    {
                      goto LABEL_3023;
                    }

                    v1152 = *v1151;
                    v1153 = ((v1151 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v1153 - v1145 || v550 - (v1153 - v1145) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1153 + 1;
                    if (!v1153)
                    {
                      goto LABEL_3023;
                    }

                    v1154 = *v1153;
                    v1155 = ((v1153 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v1155 - v1145 || v550 - (v1155 - v1145) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1155 + 1;
                    if (!v1155)
                    {
                      goto LABEL_3023;
                    }

                    WebKit::RemoteGraphicsContextGL::uniform4ui(this, v1148, v1150, v1152, v1154, *v1155);
                    goto LABEL_461;
                  case 0x53C:
                    IPC::Decoder::decode<std::tuple<int,std::span<unsigned int const,18446744073709551615ul>>>(buf, a3);
                    if (buf[24] != 1)
                    {
                      goto LABEL_461;
                    }

                    v275 = *(this + 7);
                    if (v275)
                    {
                      ++*(v275 + 2);
                      WebCore::GraphicsContextGLANGLE::uniform4uiv();
                      goto LABEL_537;
                    }

                    WebCore::GraphicsContextGLANGLE::uniform4uiv();
                    goto LABEL_461;
                  case 0x53D:
                    v1015 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int,unsigned int>>(a3);
                    if ((v1016 & 0x100000000) == 0)
                    {
                      goto LABEL_461;
                    }

                    *buf = v1015;
                    if (v1015 > 0xFFFFFFFD)
                    {
                      goto LABEL_461;
                    }

                    if (v1015)
                    {
                      *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
                    }

                    v1174 = *(this + 7);
                    if (v1174)
                    {
                      ++*(v1174 + 2);
                      WebCore::GraphicsContextGLANGLE::uniformBlockBinding(v1174);
                      goto LABEL_2116;
                    }

                    WebCore::GraphicsContextGLANGLE::uniformBlockBinding(0);
                    goto LABEL_461;
                  case 0x53F:
                    IPC::Decoder::decode<std::tuple<int,BOOL,std::span<float const,18446744073709551615ul>>>(buf, a3);
                    if (buf[24] != 1)
                    {
                      goto LABEL_461;
                    }

                    v275 = *(this + 7);
                    if (v275)
                    {
                      ++*(v275 + 2);
                      WebCore::GraphicsContextGLANGLE::uniformMatrix2x3fv();
                      goto LABEL_537;
                    }

                    WebCore::GraphicsContextGLANGLE::uniformMatrix2x3fv();
                    goto LABEL_461;
                  case 0x540:
                    IPC::Decoder::decode<std::tuple<int,BOOL,std::span<float const,18446744073709551615ul>>>(buf, a3);
                    if (buf[24] != 1)
                    {
                      goto LABEL_461;
                    }

                    v275 = *(this + 7);
                    if (v275)
                    {
                      ++*(v275 + 2);
                      WebCore::GraphicsContextGLANGLE::uniformMatrix2x4fv();
                      goto LABEL_537;
                    }

                    WebCore::GraphicsContextGLANGLE::uniformMatrix2x4fv();
                    goto LABEL_461;
                  case 0x542:
                    IPC::Decoder::decode<std::tuple<int,BOOL,std::span<float const,18446744073709551615ul>>>(buf, a3);
                    if (buf[24] != 1)
                    {
                      goto LABEL_461;
                    }

                    v275 = *(this + 7);
                    if (v275)
                    {
                      ++*(v275 + 2);
                      WebCore::GraphicsContextGLANGLE::uniformMatrix3x2fv();
                      goto LABEL_537;
                    }

                    WebCore::GraphicsContextGLANGLE::uniformMatrix3x2fv();
                    goto LABEL_461;
                  case 0x543:
                    IPC::Decoder::decode<std::tuple<int,BOOL,std::span<float const,18446744073709551615ul>>>(buf, a3);
                    if (buf[24] != 1)
                    {
                      goto LABEL_461;
                    }

                    v275 = *(this + 7);
                    if (v275)
                    {
                      ++*(v275 + 2);
                      WebCore::GraphicsContextGLANGLE::uniformMatrix3x4fv();
                      goto LABEL_537;
                    }

                    WebCore::GraphicsContextGLANGLE::uniformMatrix3x4fv();
                    goto LABEL_461;
                  case 0x545:
                    IPC::Decoder::decode<std::tuple<int,BOOL,std::span<float const,18446744073709551615ul>>>(buf, a3);
                    if (buf[24] != 1)
                    {
                      goto LABEL_461;
                    }

                    v275 = *(this + 7);
                    if (v275)
                    {
                      ++*(v275 + 2);
                      WebCore::GraphicsContextGLANGLE::uniformMatrix4x2fv();
                      goto LABEL_537;
                    }

                    WebCore::GraphicsContextGLANGLE::uniformMatrix4x2fv();
                    goto LABEL_461;
                  case 0x546:
                    IPC::Decoder::decode<std::tuple<int,BOOL,std::span<float const,18446744073709551615ul>>>(buf, a3);
                    if (buf[24] != 1)
                    {
                      goto LABEL_461;
                    }

                    v275 = *(this + 7);
                    if (v275)
                    {
                      ++*(v275 + 2);
                      WebCore::GraphicsContextGLANGLE::uniformMatrix4x3fv();
                      goto LABEL_537;
                    }

                    WebCore::GraphicsContextGLANGLE::uniformMatrix4x3fv();
                    goto LABEL_461;
                  case 0x552:
                    v550 = *(a3 + 1);
                    v1017 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                    v1018 = *a3;
                    v1019 = v1017 - *a3;
                    v17 = v550 >= v1019;
                    v1020 = v550 - v1019;
                    if (!v17 || v1020 <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1017 + 1;
                    if (!v1017)
                    {
                      goto LABEL_3023;
                    }

                    v1021 = *v1017;
                    v1022 = ((v1017 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v1022 - v1018 || v550 - (v1022 - v1018) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1022 + 1;
                    if (!v1022)
                    {
                      goto LABEL_3023;
                    }

                    v1023 = *v1022;
                    v1024 = ((v1022 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v1024 - v1018 || v550 - (v1024 - v1018) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1024 + 1;
                    if (!v1024)
                    {
                      goto LABEL_3023;
                    }

                    v1025 = *v1024;
                    v1026 = ((v1024 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v1026 - v1018 || v550 - (v1026 - v1018) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1026 + 1;
                    if (!v1026)
                    {
                      goto LABEL_3023;
                    }

                    v1027 = *v1026;
                    v1028 = ((v1026 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v1028 - v1018 || v550 - (v1028 - v1018) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1028 + 1;
                    if (!v1028)
                    {
                      goto LABEL_3023;
                    }

                    WebKit::RemoteGraphicsContextGL::vertexAttribI4i(this, v1021, v1023, v1025, v1027, *v1028);
                    goto LABEL_461;
                  case 0x553:
                    v276 = *(a3 + 1);
                    v1009 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                    v1010 = v1009 - *a3;
                    v17 = v276 >= v1010;
                    v1011 = v276 - v1010;
                    if (!v17 || v1011 <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v1009 + 1;
                    if (!v1009)
                    {
                      goto LABEL_2581;
                    }

                    v1012 = *v1009;
                    v1013 = IPC::Decoder::decode<std::span<int const,4ul>>(a3);
                    if ((v1014 & 1) == 0)
                    {
                      goto LABEL_2582;
                    }

                    *buf = v1012;
                    *&buf[8] = v1013;
                    buf[16] = 1;
                    WebKit::RemoteGraphicsContextGL::vertexAttribI4iv(this, v1012, &buf[8]);
                    goto LABEL_461;
                  case 0x554:
                    IPC::Decoder::decode<std::tuple<unsigned int,int,unsigned int,int,int>>(buf, a3);
                    if (buf[20] == 1)
                    {
                      WebKit::RemoteGraphicsContextGL::vertexAttribI4ui(this, *buf, *&buf[4], *&buf[8], *&buf[12], *&buf[16]);
                    }

                    goto LABEL_461;
                  case 0x555:
                    v276 = *(a3 + 1);
                    v1156 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                    v1157 = *a3;
                    v1158 = v1156 - *a3;
                    v17 = v276 >= v1158;
                    v1159 = v276 - v1158;
                    if (!v17 || v1159 <= 3)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v1156 + 1;
                    if (!v1156)
                    {
                      goto LABEL_2581;
                    }

                    v1160 = *v1156;
                    v1161 = (v1156 + 7) & 0xFFFFFFFFFFFFFFFCLL;
                    if (v276 < v1161 - v1157 || v276 - (v1161 - v1157) <= 0xF)
                    {
                      goto LABEL_2579;
                    }

                    *(a3 + 2) = v1161 + 16;
                    if (!v1161)
                    {
                      goto LABEL_2581;
                    }

                    *buf = v1160;
                    *&buf[8] = v1161;
                    buf[16] = 1;
                    WebKit::RemoteGraphicsContextGL::vertexAttribI4uiv(this, v1160, &buf[8]);
                    goto LABEL_461;
                  case 0x556:
                    v550 = *(a3 + 1);
                    v1162 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                    v1163 = *a3;
                    v1164 = v1162 - *a3;
                    v17 = v550 >= v1164;
                    v1165 = v550 - v1164;
                    if (!v17 || v1165 <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1162 + 1;
                    if (!v1162)
                    {
                      goto LABEL_3023;
                    }

                    v1166 = *v1162;
                    v1167 = ((v1162 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v1167 - v1163 || v550 - (v1167 - v1163) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1167 + 1;
                    if (!v1167)
                    {
                      goto LABEL_3023;
                    }

                    v1168 = *v1167;
                    v1169 = ((v1167 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v1169 - v1163 || v550 - (v1169 - v1163) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1169 + 1;
                    if (!v1169)
                    {
                      goto LABEL_3023;
                    }

                    v1170 = *v1169;
                    v1171 = ((v1169 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v550 < v1171 - v1163 || v550 - (v1171 - v1163) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1171 + 1;
                    if (!v1171)
                    {
                      goto LABEL_3023;
                    }

                    v1172 = *v1171;
                    v1173 = ((v1171 + 11) & 0xFFFFFFFFFFFFFFF8);
                    if (v550 < v1173 - v1163 || v550 - (v1173 - v1163) <= 7)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1173 + 1;
                    if (!v1173)
                    {
                      goto LABEL_3023;
                    }

                    WebKit::RemoteGraphicsContextGL::vertexAttribIPointer(this, v1166, v1168, v1170, v1172, *v1173);
                    goto LABEL_461;
                  case 0x559:
                    v550 = *(a3 + 1);
                    v1000 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
                    v1001 = *a3;
                    v1002 = v1000 - *a3;
                    v17 = v550 >= v1002;
                    v1003 = v550 - v1002;
                    if (!v17 || v1003 <= 7)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1000 + 1;
                    if (!v1000)
                    {
                      goto LABEL_3023;
                    }

                    v1004 = *v1000;
                    v1005 = (v1000 + 11) & 0xFFFFFFFFFFFFFFF8;
                    if (v550 < v1005 - v1001 || v550 - (v1005 - v1001) <= 3)
                    {
                      goto LABEL_3021;
                    }

                    *(a3 + 2) = v1005 | 4;
                    if (!v1005)
                    {
                      goto LABEL_3023;
                    }

                    v1006 = *v1005;
                    v1007 = IPC::Decoder::decode<long long>(a3);
                    if ((v1008 & 1) == 0)
                    {
                      goto LABEL_3024;
                    }

                    WebKit::RemoteGraphicsContextGL::waitSync(this, v1004, v1006, v1007);
                    goto LABEL_461;
                  default:
                    if (v5 != 1291)
                    {
                      goto LABEL_1493;
                    }

                    v804 = IPC::Decoder::decode<std::tuple<unsigned int,unsigned int,float>>(a3);
                    if ((v805 & 0x100000000) == 0)
                    {
                      goto LABEL_461;
                    }

                    *buf = v804;
                    if (v804 > 0xFFFFFFFD)
                    {
                      goto LABEL_461;
                    }

                    if (v804)
                    {
                      *buf = WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,unsigned int,WTF::IntHash<unsigned int>,WTF::UnsignedWithZeroKeyHashTraits<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<unsigned int>>,unsigned int>(this + 27, buf);
                    }

                    v1174 = *(this + 7);
                    if (v1174)
                    {
                      ++*(v1174 + 2);
                      WebCore::GraphicsContextGLANGLE::samplerParameteri(v1174);
                      goto LABEL_2116;
                    }

                    WebCore::GraphicsContextGLANGLE::samplerParameteri(0);
                    goto LABEL_461;
                }
              }

              v727 = *(a3 + 1);
              v728 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v729 = *a3;
              v730 = v728 - *a3;
              v17 = v727 >= v730;
              v731 = v727 - v730;
              if (!v17 || v731 <= 3)
              {
                goto LABEL_2833;
              }

              *(a3 + 2) = v728 + 1;
              if (!v728)
              {
                goto LABEL_2835;
              }

              v732 = *v728;
              v733 = ((v728 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v727 < v733 - v729 || v727 - (v733 - v729) <= 3)
              {
                goto LABEL_2833;
              }

              *(a3 + 2) = v733 + 1;
              if (!v733)
              {
                goto LABEL_2835;
              }

              v734 = *v733;
              v735 = ((v733 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v727 < v735 - v729 || v727 - (v735 - v729) <= 3)
              {
                goto LABEL_2833;
              }

              *(a3 + 2) = v735 + 1;
              if (!v735)
              {
                goto LABEL_2835;
              }

              v736 = *v735;
              v737 = ((v735 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v727 < v737 - v729 || v727 - (v737 - v729) <= 3)
              {
                goto LABEL_2833;
              }

              *(a3 + 2) = v737 + 1;
              if (!v737)
              {
                goto LABEL_2835;
              }

              v738 = *v737;
              v739 = ((v737 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v727 < v739 - v729 || v727 - (v739 - v729) <= 3)
              {
                goto LABEL_2833;
              }

              *(a3 + 2) = v739 + 1;
              if (!v739)
              {
                goto LABEL_2835;
              }

              v740 = *v739;
              v741 = ((v739 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v727 < v741 - v729 || v727 - (v741 - v729) <= 3)
              {
                goto LABEL_2833;
              }

              *(a3 + 2) = v741 + 1;
              if (!v741)
              {
                goto LABEL_2835;
              }

              v742 = *v741;
              v743 = ((v741 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v727 < v743 - v729 || v727 - (v743 - v729) <= 3)
              {
                goto LABEL_2833;
              }

              *(a3 + 2) = v743 + 1;
              if (!v743)
              {
                goto LABEL_2835;
              }

              v744 = *v743;
              v745 = ((v743 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v727 < v745 - v729 || v727 - (v745 - v729) <= 3)
              {
                goto LABEL_2833;
              }

              *(a3 + 2) = v745 + 1;
              if (v745)
              {
                v746 = *v745;
                v747 = ((v745 + 11) & 0xFFFFFFFFFFFFFFF8);
                if (v727 < v747 - v729 || v727 - (v747 - v729) <= 7)
                {
LABEL_2833:
                  *a3 = 0;
                  *(a3 + 1) = 0;
                  v1666 = *(a3 + 3);
                  if (v1666)
                  {
                    if (v727)
                    {
                      (*(*v1666 + 16))(v1666);
                      v727 = *(a3 + 1);
                    }
                  }

                  else
                  {
                    v727 = 0;
                  }
                }

                else
                {
                  *(a3 + 2) = v747 + 1;
                  if (v747)
                  {
                    WebKit::RemoteGraphicsContextGL::compressedTexSubImage2D1(this, v732, v734, v736, v738, v740, v742, v744, v746, *v747);
                    goto LABEL_461;
                  }
                }
              }

LABEL_2835:
              *a3 = 0;
              *(a3 + 1) = 0;
              v1667 = *(a3 + 3);
              if (v1667 && v727)
              {
                (*(*v1667 + 16))(v1667);
              }

              v771 = *a3;
              v772 = *(a3 + 1);
              *a3 = 0;
              *(a3 + 1) = 0;
              v773 = *(a3 + 3);
              if (!v773)
              {
                goto LABEL_461;
              }

              goto LABEL_2887;
          }
        }

        if (*(a3 + 25) <= 0x4ACu)
        {
          if (v5 != 1182)
          {
            if (v5 == 1183)
            {
              v276 = *(a3 + 1);
              v306 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v307 = v306 - *a3;
              v17 = v276 >= v307;
              v308 = v276 - v307;
              if (v17 && v308 > 3)
              {
                *(a3 + 2) = v306 + 1;
                if (!v306)
                {
                  goto LABEL_2581;
                }

                v309 = *v306;
                IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, v1797);
                if ((v1798 & 1) == 0)
                {
                  v1636 = *a3;
                  v1637 = *(a3 + 1);
                  *a3 = 0;
                  *(a3 + 1) = 0;
                  v1638 = *(a3 + 3);
                  if (!v1638)
                  {
                    goto LABEL_2582;
                  }

                  if (!v1637)
                  {
                    goto LABEL_2582;
                  }

                  (*(*v1638 + 16))(v1638, v1636);
                  if ((v1798 & 1) == 0)
                  {
                    goto LABEL_2582;
                  }
                }

                v276 = *(a3 + 1);
                v310 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
                v311 = v310 - *a3;
                v17 = v276 >= v311;
                v312 = v276 - v311;
                if (v17 && v312 > 3)
                {
                  *(a3 + 2) = v310 + 1;
                  if (v310)
                  {
                    v313 = *v310;
                    *buf = v309;
                    *&buf[8] = *v1797;
                    *&buf[24] = v313;
                    buf[32] = 1;
                    WebKit::RemoteGraphicsContextGL::bufferData1(this, v309, &buf[8], v313);
                    goto LABEL_461;
                  }

                  goto LABEL_2581;
                }
              }

              goto LABEL_2579;
            }

            if (v5 == 1184)
            {
              v276 = *(a3 + 1);
              v277 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
              v278 = *a3;
              v279 = v277 - *a3;
              v17 = v276 >= v279;
              v280 = v276 - v279;
              if (v17 && v280 > 3)
              {
                *(a3 + 2) = v277 + 1;
                if (!v277)
                {
                  goto LABEL_2581;
                }

                v281 = *v277;
                v282 = ((v277 + 11) & 0xFFFFFFFFFFFFFFF8);
                if (v276 >= v282 - v278 && v276 - (v282 - v278) > 7)
                {
                  *(a3 + 2) = v282 + 1;
                  if (v282)
                  {
                    v283 = *v282;
                    IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, v1797);
                    if (v1798 & 1) != 0 || (v1633 = *a3, v1634 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v1635 = *(a3 + 3)) != 0) && v1634 && ((*(*v1635 + 16))(v1635, v1633), (v1798))
                    {
                      *buf = v281;
                      *&buf[8] = v283;
                      *&buf[16] = *v1797;
                      buf[32] = 1;
                      WebKit::RemoteGraphicsContextGL::bufferSubData(this, v281, v283, &buf[16]);
                      goto LABEL_461;
                    }

                    goto LABEL_2582;
                  }

                  goto LABEL_2581;
                }
              }

              goto LABEL_2579;
            }

            goto LABEL_674;
          }

          v333 = *(a3 + 1);
          v334 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
          v335 = *a3;
          v336 = v334 - *a3;
          v17 = v333 >= v336;
          v337 = v333 - v336;
          if (v17 && v337 > 3)
          {
            *(a3 + 2) = v334 + 1;
            if (!v334)
            {
              goto LABEL_2929;
            }

            v339 = *v334;
            v340 = ((v334 + 11) & 0xFFFFFFFFFFFFFFF8);
            if (v333 >= v340 - v335 && v333 - (v340 - v335) > 7)
            {
              *(a3 + 2) = v340 + 1;
              if (!v340)
              {
                goto LABEL_2929;
              }

              v342 = *v340;
              v343 = (v340 + 11) & 0xFFFFFFFFFFFFFFF8;
              if (v333 >= v343 - v335 && v333 - (v343 - v335) > 3)
              {
                *(a3 + 2) = v343 | 4;
                if (v343)
                {
                  WebKit::RemoteGraphicsContextGL::bufferData0(this, v339, v342, *v343);
                  goto LABEL_461;
                }

                goto LABEL_2929;
              }
            }
          }

          *a3 = 0;
          *(a3 + 1) = 0;
          v1706 = *(a3 + 3);
          if (v1706)
          {
            if (v333)
            {
              (*(*v1706 + 16))(v1706);
              v333 = *(a3 + 1);
            }
          }

          else
          {
            v333 = 0;
          }

LABEL_2929:
          *a3 = 0;
          *(a3 + 1) = 0;
          v1707 = *(a3 + 3);
          if (v1707 && v333)
          {
            (*(*v1707 + 16))(v1707);
          }

          v771 = *a3;
          v772 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v773 = *(a3 + 3);
          if (!v773)
          {
            goto LABEL_461;
          }

          goto LABEL_2887;
        }

        if (v5 == 1197)
        {
          v276 = *(a3 + 1);
          v344 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
          v345 = *a3;
          v346 = v344 - *a3;
          v17 = v276 >= v346;
          v347 = v276 - v346;
          if (v17 && v347 > 3)
          {
            *(a3 + 2) = v344 + 1;
            if (!v344)
            {
              goto LABEL_2581;
            }

            v349 = *v344;
            v350 = ((v344 + 7) & 0xFFFFFFFFFFFFFFFCLL);
            if (v276 >= v350 - v345 && v276 - (v350 - v345) > 3)
            {
              *(a3 + 2) = v350 + 1;
              if (!v350)
              {
                goto LABEL_2581;
              }

              v352 = *v350;
              v353 = ((v350 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v276 >= v353 - v345 && v276 - (v353 - v345) > 3)
              {
                *(a3 + 2) = v353 + 1;
                if (!v353)
                {
                  goto LABEL_2581;
                }

                v354 = *v353;
                v355 = ((v353 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                if (v276 >= v355 - v345 && v276 - (v355 - v345) > 3)
                {
                  *(a3 + 2) = v355 + 1;
                  if (!v355)
                  {
                    goto LABEL_2581;
                  }

                  v356 = *v355;
                  v357 = ((v355 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                  if (v276 >= v357 - v345 && v276 - (v357 - v345) > 3)
                  {
                    *(a3 + 2) = v357 + 1;
                    if (!v357)
                    {
                      goto LABEL_2581;
                    }

                    v358 = *v357;
                    v359 = ((v357 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v276 >= v359 - v345 && v276 - (v359 - v345) > 3)
                    {
                      *(a3 + 2) = v359 + 1;
                      if (!v359)
                      {
                        goto LABEL_2581;
                      }

                      v360 = *v359;
                      v361 = ((v359 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                      if (v276 >= v361 - v345 && v276 - (v361 - v345) > 3)
                      {
                        *(a3 + 2) = v361 + 1;
                        if (v361)
                        {
                          v362 = *v361;
                          IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, v1797);
                          if (v1798 & 1) != 0 || (v1639 = *a3, v1640 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v1641 = *(a3 + 3)) != 0) && v1640 && ((*(*v1641 + 16))(v1641, v1639), (v1798))
                          {
                            *buf = v349;
                            *&buf[4] = v352;
                            *&buf[8] = v354;
                            *&buf[12] = v356;
                            *&buf[16] = v358;
                            *&buf[20] = v360;
                            *&buf[24] = v362;
                            *&buf[32] = *v1797;
                            buf[48] = 1;
                            WebKit::RemoteGraphicsContextGL::compressedTexImage2D0(this);
                            goto LABEL_461;
                          }

                          goto LABEL_2582;
                        }

                        goto LABEL_2581;
                      }
                    }
                  }
                }
              }
            }
          }

          goto LABEL_2579;
        }

        if (v5 != 1198)
        {
          if (v5 == 1201)
          {
            v276 = *(a3 + 1);
            v284 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
            v285 = *a3;
            v286 = v284 - *a3;
            v17 = v276 >= v286;
            v287 = v276 - v286;
            if (v17 && v287 > 3)
            {
              *(a3 + 2) = v284 + 1;
              if (!v284)
              {
                goto LABEL_2581;
              }

              v288 = *v284;
              v289 = ((v284 + 7) & 0xFFFFFFFFFFFFFFFCLL);
              if (v276 >= v289 - v285 && v276 - (v289 - v285) > 3)
              {
                *(a3 + 2) = v289 + 1;
                if (!v289)
                {
                  goto LABEL_2581;
                }

                v290 = *v289;
                v291 = ((v289 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                if (v276 >= v291 - v285 && v276 - (v291 - v285) > 3)
                {
                  *(a3 + 2) = v291 + 1;
                  if (!v291)
                  {
                    goto LABEL_2581;
                  }

                  v292 = *v291;
                  v293 = ((v291 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                  if (v276 >= v293 - v285 && v276 - (v293 - v285) > 3)
                  {
                    *(a3 + 2) = v293 + 1;
                    if (!v293)
                    {
                      goto LABEL_2581;
                    }

                    v294 = *v293;
                    v295 = ((v293 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                    if (v276 >= v295 - v285 && v276 - (v295 - v285) > 3)
                    {
                      *(a3 + 2) = v295 + 1;
                      if (!v295)
                      {
                        goto LABEL_2581;
                      }

                      v296 = *v295;
                      v297 = ((v295 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                      if (v276 >= v297 - v285 && v276 - (v297 - v285) > 3)
                      {
                        *(a3 + 2) = v297 + 1;
                        if (!v297)
                        {
                          goto LABEL_2581;
                        }

                        v298 = *v297;
                        v299 = ((v297 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                        if (v276 >= v299 - v285 && v276 - (v299 - v285) > 3)
                        {
                          *(a3 + 2) = v299 + 1;
                          if (!v299)
                          {
                            goto LABEL_2581;
                          }

                          v300 = *v299;
                          v301 = ((v299 + 7) & 0xFFFFFFFFFFFFFFFCLL);
                          if (v276 >= v301 - v285 && v276 - (v301 - v285) > 3)
                          {
                            *(a3 + 2) = v301 + 1;
                            if (v301)
                            {
                              v302 = *v301;
                              IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, v1797);
                              if (v1798 & 1) != 0 || (v1642 = *a3, v1643 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v1644 = *(a3 + 3)) != 0) && v1643 && ((*(*v1644 + 16))(v1644, v1642), (v1798))
                              {
                                *buf = v288;
                                *&buf[4] = v290;
                                *&buf[8] = v292;
                                *&buf[12] = v294;
                                *&buf[16] = v296;
                                *&buf[20] = v298;
                                *&buf[24] = v300;
                                *&buf[28] = v302;
                                *&buf[32] = *v1797;
                                buf[48] = 1;
                                WebKit::RemoteGraphicsContextGL::compressedTexSubImage2D0(this);
                                goto LABEL_461;
                              }

                              goto LABEL_2582;
                            }

                            goto LABEL_2581;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            goto LABEL_2579;
          }

          goto LABEL_674;
        }

        v314 = *(a3 + 1);
        v315 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v316 = *a3;
        v317 = v315 - *a3;
        v17 = v314 >= v317;
        v318 = v314 - v317;
        if (!v17 || v318 <= 3)
        {
          goto LABEL_2814;
        }

        *(a3 + 2) = v315 + 1;
        if (!v315)
        {
          goto LABEL_2816;
        }

        v319 = *v315;
        v320 = ((v315 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v314 < v320 - v316 || v314 - (v320 - v316) <= 3)
        {
          goto LABEL_2814;
        }

        *(a3 + 2) = v320 + 1;
        if (!v320)
        {
          goto LABEL_2816;
        }

        v321 = *v320;
        v322 = ((v320 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v314 < v322 - v316 || v314 - (v322 - v316) <= 3)
        {
          goto LABEL_2814;
        }

        *(a3 + 2) = v322 + 1;
        if (!v322)
        {
          goto LABEL_2816;
        }

        v323 = *v322;
        v324 = ((v322 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v314 < v324 - v316 || v314 - (v324 - v316) <= 3)
        {
          goto LABEL_2814;
        }

        *(a3 + 2) = v324 + 1;
        if (!v324)
        {
          goto LABEL_2816;
        }

        v325 = *v324;
        v326 = ((v324 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v314 < v326 - v316 || v314 - (v326 - v316) <= 3)
        {
          goto LABEL_2814;
        }

        *(a3 + 2) = v326 + 1;
        if (!v326)
        {
          goto LABEL_2816;
        }

        v327 = *v326;
        v328 = ((v326 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v314 < v328 - v316 || v314 - (v328 - v316) <= 3)
        {
          goto LABEL_2814;
        }

        *(a3 + 2) = v328 + 1;
        if (!v328)
        {
          goto LABEL_2816;
        }

        v329 = *v328;
        v330 = ((v328 + 7) & 0xFFFFFFFFFFFFFFFCLL);
        if (v314 < v330 - v316 || v314 - (v330 - v316) <= 3)
        {
          goto LABEL_2814;
        }

        *(a3 + 2) = v330 + 1;
        if (v330)
        {
          v331 = *v330;
          v332 = ((v330 + 11) & 0xFFFFFFFFFFFFFFF8);
          if (v314 < v332 - v316 || v314 - (v332 - v316) <= 7)
          {
LABEL_2814:
            *a3 = 0;
            *(a3 + 1) = 0;
            v1654 = *(a3 + 3);
            if (v1654)
            {
              if (v314)
              {
                (*(*v1654 + 16))(v1654);
                v314 = *(a3 + 1);
              }
            }

            else
            {
              v314 = 0;
            }
          }

          else
          {
            *(a3 + 2) = v332 + 1;
            if (v332)
            {
              WebKit::RemoteGraphicsContextGL::compressedTexImage2D1(this, v319, v321, v323, v325, v327, v329, v331, *v332);
              goto LABEL_461;
            }
          }
        }

LABEL_2816:
        *a3 = 0;
        *(a3 + 1) = 0;
        v1655 = *(a3 + 3);
        if (v1655 && v314)
        {
          (*(*v1655 + 16))(v1655);
        }

        v771 = *a3;
        v772 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v773 = *(a3 + 3);
        if (!v773)
        {
          goto LABEL_461;
        }

        goto LABEL_2887;
    }
  }

  v7 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    v11 = *(a3 + 25);
    if (v11 >= 0x107F)
    {
      v11 = 4223;
    }

    v12 = (&IPC::Detail::messageDescriptions)[3 * v11];
    *buf = 136315138;
    *&buf[4] = v12;
    _os_log_error_impl(&dword_19D52D000, v7, OS_LOG_TYPE_ERROR, "Message %s received by a disabled message receiver RemoteGraphicsContextGL", buf, 0xCu);
  }

  v8 = *a3;
  v9 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  v10 = *(a3 + 3);
  if (v10 && v9)
  {
    (*(*v10 + 16))(v10, v8);
  }
}