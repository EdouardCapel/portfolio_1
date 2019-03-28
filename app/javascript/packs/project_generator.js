// Fecth the JSON page for all project

const collect_project = (event) => {
  fetch("/project_generator")
  .then(response => response.json())
  .then((data) => {
    console.log("test - Json read");

    data["project_generator"].forEach((project) => {
      head = project["head"];
      body = project["body"];
      // console.log(head);
      call_project(head)
    });

  });
};

function call_project(text) {
  const newProject = document.querySelector('.project');
  newProject.insertAdjacentHTML('beforeend', text);
}

collect_project()

