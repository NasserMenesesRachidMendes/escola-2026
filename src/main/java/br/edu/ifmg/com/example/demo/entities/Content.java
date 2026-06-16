package br.edu.ifmg.com.example.demo.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@Entity
@Table(name = "tb_content")
public class Content extends Lesson {
    private String textContent;
    private String videoUri;

    public Content(Long id, String title, Integer
                           position, Section section, String textContent,
                   String videoUri) {
        super(id, title, position, section);
        this.textContent = textContent;
        this.videoUri = videoUri;
    }
}