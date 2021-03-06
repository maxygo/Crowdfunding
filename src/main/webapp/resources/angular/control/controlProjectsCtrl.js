(function () {
    'use strict';

    angular
        .module('crowdfundingApp.control')
        .controller('OwnProjects', OwnProjects);

    OwnProjects.$inject = ['$uibModal', 'ControlProjectsService', 'Notification'];

    function OwnProjects($uibModal, ControlProjectsService, Notification) {

        var self = this;

        ControlProjectsService.getAllOwnProject().then(function (result) {
            self.projects = result.data;
        });

        self.changeStatusOnComplete = function (id) {
            var projectId = {
                "id": id
            };

            ControlProjectsService.updateOwnProject(projectId).then(function (result) {
                self.projects = result.data;
                Notification({message: 'Donation updated successful', title: 'Notification'}, 'success');
            })
        };

        self.openCreateProjectModal = function (size) {

            $uibModal.open({
                templateUrl: '/resources/angular/templates/createProjectModal.html',
                controller: 'CreateProjectController as app',
                size: size
            });

        };


        self.deleteProject = function (projectId, name) {
            ControlProjectsService.deleteOwnProject(projectId).then(function (result) {
                self.projectDeleteSuccess = ControlProjectsService.isProjectDeleted(self.projects, result.data);
                self.projectDeleteWarning = !ControlProjectsService.isProjectDeleted(self.projects, result.data);
                self.projects = result.data;
                self.projectDelete = name;

                if (self.projectDeleteWarning) {
                    Notification({
                        message: 'You can\'t delete this project',
                        title: 'Notification'
                    }, 'warning');
                } else if (self.projectDeleteSuccess) {
                    Notification({
                        message: 'Project ' + self.projectDelete + ' delete successful',
                        title: 'Notification'
                    }, 'primary');
                }
            })

        }
    }
})();
