package com.zzuiksa.server.domain.place.data.request;

import com.zzuiksa.server.domain.place.entity.Place;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@ToString
@EqualsAndHashCode
public class UpdatePlaceRequest {

    @Schema(description = "이름")
    @NotBlank
    @Size(max = 100)
    private String name;

    @Schema(description = "위도")
    @NotNull
    private Double lat;

    @Schema(description = "경도")
    @NotNull
    private Double lng;

    public Place update(Place place) {
        place.setName(name);
        place.setLatLng(lat, lng);
        return place;
    }
}
