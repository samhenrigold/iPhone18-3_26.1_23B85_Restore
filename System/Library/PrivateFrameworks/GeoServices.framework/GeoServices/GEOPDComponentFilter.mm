@interface GEOPDComponentFilter
- (GEOPDComponentFilter)init;
- (os_unfair_lock_s)amenitiesFilter;
- (os_unfair_lock_s)categorizedPhotosFilter;
- (os_unfair_lock_s)factoidFilter;
- (os_unfair_lock_s)quickLinkFilter;
- (os_unfair_lock_s)relatedPlaceFilter;
- (os_unfair_lock_s)toolTipFilter;
- (unint64_t)hash;
@end

@implementation GEOPDComponentFilter

- (unint64_t)hash
{
  [(GEOPDComponentFilter *)self readAll:?];
  v3 = [(GEOPDEntityFilter *)self->_entityFilter hash];
  v4 = [(GEOPDPlaceInfoFilter *)self->_placeInfoFilter hash]^ v3;
  v5 = [(GEOPDRoadAccessInfoFilter *)self->_accessInfoFilter hash];
  v6 = v4 ^ v5 ^ [(GEOPDBoundsFilter *)self->_boundsFilter hash];
  v7 = [(GEOPDAddressFilter *)self->_addressFilter hash];
  v8 = v7 ^ [(GEOPDRatingFilter *)self->_ratingFilter hash];
  v9 = v6 ^ v8 ^ [(GEOPDReviewFilter *)self->_reviewFilter hash];
  v10 = [(GEOPDPhotoFilter *)self->_photoFilter hash];
  v11 = v10 ^ [(GEOPDHoursFilter *)self->_hoursFilter hash];
  v12 = v11 ^ [(GEOPDTransitInfoFilter *)self->_transitInfoFilter hash];
  v13 = v9 ^ v12 ^ [(GEOPDTransitScheduleFilter *)self->_transitScheduleFilter hash];
  v14 = [(GEOPDETAFilter *)self->_etaFilter hash];
  v15 = v14 ^ [(GEOPDFlyoverFilter *)self->_flyoverFilter hash];
  v16 = v15 ^ [(GEOPDRawAttributeFilter *)self->_rawAttributeFilter hash];
  v17 = v16 ^ [(GEOPDAmenitiesFilter *)self->_amenitiesFilter hash];
  v18 = v13 ^ v17 ^ [(GEOPDStyleAttributesFilter *)self->_styleAttributesFilter hash];
  v19 = [(GEOPDTransitIncidentFilter *)self->_transitIncidentFilter hash];
  v20 = v19 ^ [(GEOPDTransitAssociatedInfoFilter *)self->_transitAssociatedInfoFilter hash];
  v21 = v20 ^ [(GEOPDTextBlockFilter *)self->_textBlockFilter hash];
  v22 = v21 ^ [(GEOPDFactoidFilter *)self->_factoidFilter hash];
  v23 = v22 ^ [(GEOPDTransitAttributionFilter *)self->_transitAttributionFilter hash];
  v24 = v18 ^ v23 ^ [(GEOPDBusinessClaimFilter *)self->_businessClaimFilter hash];
  v25 = [(GEOPDCaptionedPhotoFilter *)self->_captionedPhotoFilter hash];
  v26 = v25 ^ [(GEOPDTransitInfoSnippetFilter *)self->_transitInfoSnippetFilter hash];
  v27 = v26 ^ [(GEOPDExternalActionFilter *)self->_externalActionFilter hash];
  v28 = v27 ^ [(GEOPDResultSnippetFilter *)self->_resultSnippetFilter hash];
  v29 = v28 ^ [(GEOPDAddressObjectFilter *)self->_addressObjectFilter hash];
  v30 = v29 ^ [(GEOPDSimpleRestaurantMenuTextFilter *)self->_simpleRestaurantMenuTextFilter hash];
  v31 = v24 ^ v30 ^ [(GEOPDRestaurantReservationLinkFilter *)self->_restaurantReservationLinkFilter hash];
  v32 = [(GEOPDSpatialLookupFilter *)self->_spatialLookupFilter hash];
  v33 = v32 ^ [(GEOPDTipFilter *)self->_tipFilter hash];
  v34 = v33 ^ [(GEOPDPlacecardURLFilter *)self->_placecardUrlFilter hash];
  v35 = v34 ^ [(GEOPDAssociatedAppFilter *)self->_associatedAppFilter hash];
  v36 = v35 ^ [(GEOPDMessageLinkFilter *)self->_messageLinkFilter hash];
  v37 = v36 ^ [(GEOPDQuickLinkFilter *)self->_quickLinkFilter hash];
  v38 = v37 ^ [(GEOPDRapFilter *)self->_rapFilter hash];
  v39 = v31 ^ v38 ^ [(GEOPDOfflineAreaFilter *)self->_offlineAreaFilter hash];
  v40 = [(GEOPDLocationEventFilter *)self->_locationEventFilter hash];
  v41 = v40 ^ [(GEOPDSupportsOfflineMapsFilter *)self->_supportsOfflineMapsFilter hash];
  v42 = v41 ^ [(GEOPDVenueInfoFilter *)self->_venueInfoFilter hash];
  v43 = v42 ^ [(GEOPDContainedPlaceFilter *)self->_containedPlaceFilter hash];
  v44 = v43 ^ [(GEOPDWifiFingerprintFilter *)self->_wifiFingerprintFilter hash];
  v45 = v44 ^ [(GEOPDIconFilter *)self->_iconFilter hash];
  v46 = v45 ^ [(GEOPDPriceDescriptionFilter *)self->_priceDescriptionFilter hash];
  v47 = v46 ^ [(GEOPDBrowseCategoriesFilter *)self->_browseCategoriesFilter hash];
  v48 = v39 ^ v47 ^ [(GEOPDStorefrontFilter *)self->_storefrontFilter hash];
  v49 = [(GEOPDGroundViewLabelFilter *)self->_groundViewLabelFilter hash];
  v50 = v49 ^ [(GEOPDAnnotatedItemListFilter *)self->_annotatedItemListFilter hash];
  v51 = v50 ^ [(GEOPDPoiEventFilter *)self->_poiEventFilter hash];
  v52 = v51 ^ [(GEOPDStorefrontPresentationFilter *)self->_storefrontPresentationFilter hash];
  v53 = v52 ^ [(GEOPDPlacecardLayoutConfigurationFilter *)self->_placecardLayoutConfigurationFilter hash];
  v54 = v53 ^ [(GEOPDPrototypeContainerFilter *)self->_protoTypeContainerFilter hash];
  v55 = v54 ^ [(GEOPDVehiclePositionFilter *)self->_transitVehiclePositionFilter hash];
  v56 = v55 ^ [(GEOPDLinkedServiceFilter *)self->_linkedServiceFilter hash];
  v57 = v56 ^ [(GEOPDBusinessHoursFilter *)self->_businessHoursFilter hash];
  v58 = v48 ^ v57 ^ [(GEOPDPlaceCollectionFilter *)self->_placeCollectionFilter hash];
  v59 = [(GEOPDRelatedPlaceFilter *)self->_relatedPlaceFilter hash];
  v60 = v59 ^ [(GEOPDTransitTripStopFilter *)self->_transitTripStopFilter hash];
  v61 = v60 ^ [(GEOPDTransitTripStopTimeFilter *)self->_transitTripStopTimeFilter hash];
  v62 = v61 ^ [(GEOPDTransitTripGeometryFilter *)self->_transitTripGeometryFilter hash];
  v63 = v62 ^ [(GEOPDWalletCategoryInformationFilter *)self->_walletCategoryInformationFilter hash];
  v64 = v63 ^ [(GEOPDPublisherFilter *)self->_publisherFilter hash];
  v65 = v64 ^ [(GEOPDPlaceQuestionnaireFilter *)self->_placeQuestionnaireFilter hash];
  v66 = v65 ^ [(GEOPDPlaceCollectionItemFilter *)self->_placeCollectionItemFilter hash];
  v67 = v66 ^ [(GEOPDCollectionIdsFilter *)self->_collectionIdsFilter hash];
  v68 = v67 ^ [(GEOPDISO3166CodeFilter *)self->_iso3166CodeFilter hash];
  v69 = v58 ^ v68 ^ [(GEOPDVendorAmenitiesFilter *)self->_vendorAmenitiesFilter hash];
  v70 = [(GEOPDStorefrontFacesFilter *)self->_storefrontFacesFilter hash];
  v71 = v70 ^ [(GEOPDGuideGroupFilter *)self->_guideGroupFilter hash];
  v72 = v71 ^ [(GEOPDContainmentPlaceFilter *)self->_containmentPlaceFilter hash];
  v73 = v72 ^ [(GEOPDCategorizedPhotosFilter *)self->_categorizedPhotosFilter hash];
  v74 = v73 ^ [(GEOPDExploreGuidesFilter *)self->_exploreGuidesFilter hash];
  v75 = v74 ^ [(GEOPDAboutFilter *)self->_aboutFilter hash];
  v76 = v75 ^ [(GEOPDLabelGeometryFilter *)self->_labelGeometryFilter hash];
  v77 = v76 ^ [(GEOPDEnhancedPlacementFilter *)self->_enhancedPlacementFilter hash];
  v78 = v77 ^ [(GEOPDTemplatePlaceFilter *)self->_templatePlaceFilter hash];
  v79 = v78 ^ [(GEOPDTransitPaymentMethodInfoFilter *)self->_transitPaymentMethodInfoFilter hash];
  v80 = v79 ^ [(GEOPDEnrichmentInfoFilter *)self->_enrichmentInfoFilter hash];
  v81 = v69 ^ v80 ^ [(GEOPDActionDataFilter *)self->_actionDataFilter hash];
  v82 = [(GEOPDEnrichmentDataFilter *)self->_enrichmentDataFilter hash];
  v83 = v82 ^ [(GEOPDPOIClaimFilter *)self->_poiClaimFilter hash];
  v84 = v83 ^ [(GEOPDEVChargerFilter *)self->_evChargerFilter hash];
  v85 = v84 ^ [(GEOPDTrailHeadFilter *)self->_trailHeadFilter hash];
  v86 = v85 ^ [(GEOPDRefreshIdFilter *)self->_refreshIdFilter hash];
  v87 = v86 ^ [(GEOPDAddressWithComponentsFilter *)self->_addressComponentsFilter hash];
  v88 = v87 ^ [(GEOPDSearchResultPlacePhotoFilter *)self->_searchResultPlacePhotoFilter hash];
  v89 = v88 ^ [(GEOPDForwardInfoFilter *)self->_forwardInfoFilter hash];
  v90 = v89 ^ [(GEOPDHikeAssociatedInfoFilter *)self->_hikeAssociatedInfoFilter hash];
  v91 = v90 ^ [(GEOPDHikeSummaryFilter *)self->_hikeSummaryFilter hash];
  v92 = v91 ^ [(GEOPDHikeGeometryFilter *)self->_hikeGeometryFilter hash];
  v93 = v92 ^ [(GEOPDTooltipFilter *)self->_toolTipFilter hash];
  v94 = v81 ^ v93 ^ [(GEOPDLocalizedNamesFilter *)self->_localizedNamesFilter hash];
  v95 = [(GEOPDBrandLogoEmbeddingFilter *)self->_brandLogoEmbeddingFilter hash];
  v96 = v95 ^ [(GEOPDVisualEvidenceFilter *)self->_visualEvidenceFilter hash];
  v97 = v96 ^ [(GEOPDVisitedPlacesMetaDataFilter *)self->_visitedPlacesMetaDataFilter hash];
  return v94 ^ v97 ^ [(GEOPDTokenizerResultFilter *)self->_tokenizerResultFilter hash];
}

- (GEOPDComponentFilter)init
{
  v6.receiver = self;
  v6.super_class = GEOPDComponentFilter;
  v2 = [(GEOPDComponentFilter *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (os_unfair_lock_s)factoidFilter
{
  if (self)
  {
    selfCopy = self;
    os_unfair_lock_lock(self + 200);
    if ((selfCopy[201]._os_unfair_lock_opaque & 0x10000000) == 0)
    {
      v2 = *&selfCopy[2]._os_unfair_lock_opaque;
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDComponentFilterReadSpecified(selfCopy, *&selfCopy[2]._os_unfair_lock_opaque, &_readFactoidFilter_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock(selfCopy + 200);
    self = *&selfCopy[60]._os_unfair_lock_opaque;
  }

  return self;
}

- (os_unfair_lock_s)categorizedPhotosFilter
{
  if (self)
  {
    selfCopy = self;
    os_unfair_lock_lock(self + 200);
    if ((selfCopy[201]._os_unfair_lock_opaque & 0x10000) == 0)
    {
      v2 = *&selfCopy[2]._os_unfair_lock_opaque;
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDComponentFilterReadSpecified(selfCopy, *&selfCopy[2]._os_unfair_lock_opaque, &_readCategorizedPhotosFilter_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock(selfCopy + 200);
    self = *&selfCopy[36]._os_unfair_lock_opaque;
  }

  return self;
}

- (os_unfair_lock_s)amenitiesFilter
{
  if (self)
  {
    selfCopy = self;
    os_unfair_lock_lock(self + 200);
    if ((selfCopy[201]._os_unfair_lock_opaque & 0x80) == 0)
    {
      v2 = *&selfCopy[2]._os_unfair_lock_opaque;
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDComponentFilterReadSpecified(selfCopy, *&selfCopy[2]._os_unfair_lock_opaque, &_readAmenitiesFilter_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock(selfCopy + 200);
    self = *&selfCopy[18]._os_unfair_lock_opaque;
  }

  return self;
}

- (os_unfair_lock_s)quickLinkFilter
{
  if (self)
  {
    selfCopy = self;
    os_unfair_lock_lock(self + 200);
    if ((selfCopy[202]._os_unfair_lock_opaque & 0x2000000) == 0)
    {
      v2 = *&selfCopy[2]._os_unfair_lock_opaque;
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDComponentFilterReadSpecified(selfCopy, *&selfCopy[2]._os_unfair_lock_opaque, &_readQuickLinkFilter_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock(selfCopy + 200);
    self = *&selfCopy[118]._os_unfair_lock_opaque;
  }

  return self;
}

- (os_unfair_lock_s)relatedPlaceFilter
{
  if (self)
  {
    selfCopy = self;
    os_unfair_lock_lock(self + 200);
    if ((selfCopy[202]._os_unfair_lock_opaque & 0x40000000) == 0)
    {
      v2 = *&selfCopy[2]._os_unfair_lock_opaque;
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDComponentFilterReadSpecified(selfCopy, *&selfCopy[2]._os_unfair_lock_opaque, &_readRelatedPlaceFilter_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock(selfCopy + 200);
    self = *&selfCopy[128]._os_unfair_lock_opaque;
  }

  return self;
}

- (os_unfair_lock_s)toolTipFilter
{
  if (self)
  {
    selfCopy = self;
    os_unfair_lock_lock(self + 200);
    if ((selfCopy[203]._os_unfair_lock_opaque & 0x4000) == 0)
    {
      v2 = *&selfCopy[2]._os_unfair_lock_opaque;
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOPDComponentFilterReadSpecified(selfCopy, *&selfCopy[2]._os_unfair_lock_opaque, &_readToolTipFilter_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock(selfCopy + 200);
    self = *&selfCopy[160]._os_unfair_lock_opaque;
  }

  return self;
}

@end