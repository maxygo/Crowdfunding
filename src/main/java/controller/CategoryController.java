package controller;

import crowdfunding.Category;
import crowdfunding.Project;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import service.CategoryService;
import service.ProjectService;

import java.util.List;

@Controller
public class CategoryController {

    @Autowired
    CategoryService categoryService;

    @Autowired
    ProjectService projectService;

    @RequestMapping("/categories/{id}")
    public String hello(Model model,@PathVariable int id) {


        Category category = categoryService.findById(id);
        List<Project> projects = category.getProjects();

        model.addAttribute("projects",projects);

        return "category";
    }

    @RequestMapping("/categories/{categoryId}/projects/{projectId}")
    public String hello(Model model,@PathVariable int categoryId,@PathVariable int projectId) {



        Project project = projectService.findById(projectId);

        model.addAttribute("project",project);

        return "category";
    }
}
