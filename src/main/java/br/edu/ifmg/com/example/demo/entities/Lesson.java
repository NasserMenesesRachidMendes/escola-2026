package br.edu.ifmg.com.example.demo.entities;
import jakarta.persistence.*;
import lombok.*;
import java.util.HashSet;
import java.util.Set;

@Data
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@NoArgsConstructor
@Entity
@Table(name = "lesson")
@Inheritance(strategy = InheritanceType.JOINED)
public abstract class Lesson {
    @Id
    @EqualsAndHashCode.Include
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String title;
    private Integer position;
    @ManyToOne
    @JoinColumn(name = "section_id")
    private Section section;
    @Setter(value = AccessLevel.NONE)
    @ManyToMany
    @JoinTable(name = "lessons_done",
            joinColumns = @JoinColumn(name = "lesson_id"),
            inverseJoinColumns = {
                    @JoinColumn(name = "user_id"),
                    @JoinColumn(name = "offer_id")

            } )
    private Set<Enrollment> enrollmentsDone = new HashSet<>();
    public Lesson(Long id, String title,
                  Integer position, Section section) {
        this.id = id;
        this.title = title;
        this.position = position;
        this.section = section;
    }
}