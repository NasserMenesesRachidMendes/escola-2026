package br.edu.ifmg.com.example.demo.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import org.flywaydb.core.extensibility.ResourceType;

import java.util.ArrayList;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@Entity
@Table(name = "resource")
public class Resource {
    @EqualsAndHashCode.Include
    @Id
    @GeneratedValue(strategy =
            GenerationType.IDENTITY)
    private Long id;
    private String title;
    private String description;
    private Integer position;
    private String imgUri;
    @Enumerated(EnumType.STRING) //ORDINAL
    private ResourceType type;
    @ManyToOne
    @JoinColumn(name = "offer_id")
    private Offer offer;
    @OneToMany(mappedBy = "resource")
    private List<Section> sections = new ArrayList<>();
}
