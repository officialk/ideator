<!DOCTYPE html>
<html>

<head>
    <!-- META Tags -->
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>Ideator</title>
    <meta name="author" content="Karthik Koppaka" />
    <meta name="description" content="description here" />
    <meta name="keywords" content="keywords,here" />
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
    <link rel="manifest" href="manifest.json" />
    <!-- CSS -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" />
    <link rel="stylesheet" href="css/app.css" type="text/css" />

    <!--    Firebase JS-->
    <script src="https://www.gstatic.com/firebasejs/7.9.2/firebase.js"></script>
    <script src="https://www.gstatic.com/firebasejs/7.9.2/firebase-app.js"></script>
    <script src="https://www.gstatic.com/firebasejs/7.9.2/firebase-auth.js"></script>
    <script src="https://www.gstatic.com/firebasejs/7.9.2/firebase-firestore.js"></script>
    <!--UI JS-->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script src="js/helper.js"></script>
    <script src="js/crypto.js"></script>
    <script src="js/app.js"></script>
</head>

<body>
    <header class="hide">
        <nav class="navbar-fixed">
            <a href="#" class="brand-logo left">Ideator</a>
            <ul class="right valign-wrapper">
                <li><a onclick="loadWorkspaceList()"><i class="material-icons">home</i></a></li>
                <li><a onclick="$('#userSettingsModal').modal('open');"><i class="material-icons">settings</i></a></li>
                <li><a onclick="$('#userSettingsModal').modal('open');"><i class="material-icons">settings</i></a></li>
            </ul>
        </nav>
    </header>
    <main class="container hide">
        <div class="heading">
            <ul class="tabs row container">
                <li class="tab col s4 m4 l4 center"><a href="#chat"><i class="material-icons">chat</i>
                        <!--<span id="messageCount" class="badge new">1</span>--></a></li>
                <li class="tab col s4 m4 l4 center"><a href="#public"><i class="material-icons">group</i>
                        <!--<span id="publicCount" class="badge">3</span>--></a></li>
                <li class="tab col s4 m4 l4 center"><a href="#private"><i class="material-icons">face</i>
                        <!--<span id="privateCount" class="badge">3</span>--></a></li>
            </ul>
        </div>
        <div class="fixed-action-btn">
            <a class="btn-floating btn-large">
                <i class="large material-icons">face</i>
            </a>
            <ul>
                <li><a class="btn-floating red tooltipped" data-position="left" data-tooltip="Logout" onclick="logout()"><i class="material-icons">exit_to_app</i></a></li>
                <li><a class="btn-floating blue tooltipped modal-trigger" href="#settingsModal" data-position="left" data-tooltip="Settings"><i class="material-icons">settings</i></a></li>
                <li><a class="btn-floating green tooltipped modal-trigger" href="#addProjectModal" data-position="left" data-tooltip="Add Project"><i class="material-icons">add</i></a></li>
            </ul>
        </div>
        <br>
        <div class="card" id="chat">
            <br>
            <div class="row container" id="messageInput">
                <div class="col s10 m10 l10 input-field">
                    <textarea type="text" class="materialize-textarea" id="messageTextInput"></textarea>
                    <label for="messageTextInput">Enter Message</label>
                </div>
                <div class="col s2 m2 l2 input-field">
                    <div class="btn-floating" onclick="sendMessage()"><i class="material-icons">send</i></div>
                </div>
            </div>
            <div class="scrollable container" id="messageDisplay">

            </div>
        </div>
        <div class="row" id="public">

        </div>
        <div class="row" id="private">

        </div>
        <div class="modal" id="addProjectModal">
            <div class="modal-content row">
                <h5 class="center">Add Project</h5>
                <div class="input-field col s12 m6 l6">
                    <input type="text" id="projectTitle">
                    <label for="projectTitle">Project Title</label>
                </div>
                <div class="input-field col s12 m6 l6">
                    <select id="projectType">
                        <option value="private" selected disabled>Select Project Type</option>
                        <option value="private">private</option>
                        <option value="public">public</option>
                    </select>
                </div>
                <div class="input-field col s12 m12 l12">
                    <textarea id="projectDescription" class="materialize-textarea"></textarea>
                    <label for="projectDescription">Project Description</label>
                </div>
            </div>
            <div class="modal-footer center">
                <div class="btn" onclick="addProject()">Add <i class="material-icons">add</i></div>
                <br>
            </div>
        </div>
        <div class="modal" id="addIdeaModal">
            <div class="modal-content row">
                <h5 class="center">Add Idea</h5>
                <div class="input-field col s12 m6 l6">
                    <input type="text" id="ideaTitle">
                    <label for="ideaTitle">Idea Title</label>
                </div>
                <div class="input-field col s12 m6 l6">
                    <textarea id="ideaDescription" class="materialize-textarea"></textarea>
                    <label for="ideaDescription">Idea Description</label>
                </div>
                <center>
                    <div class="btn-floating" onclick="addIdea()"><i class="material-icons">add</i></div>
                </center>
            </div>
        </div>
        <div class="modal" id="ideaListModal">
            <div class="modal-content">
                <center>
                    <h2>IDEA LIST</h2>
                </center>
                <ul class="collapsible" id="ideaListDisplay">
                    <h4>NO IDEAS YET ADD ONE USING THE + BUTTON</h4>
                </ul>
            </div>
        </div>
        <div class="modal" id="settingsModal">
            <div class="modal-content">
                <h5>
                    <center>Settings</center>
                </h5>
                <div class="row container">
                    <div class="input-field col s12 m6 l6">
                        <input type="password" id="newPasswordInput">
                        <label for="newPasswordInput">Enter New Password</label>
                    </div>
                    <div class="input-field col s12 m6 l6">
                        <input type="text" id="newNameInput">
                        <label for="newNameInput">Enter New Name</label>
                    </div>
                </div>
                <div class="row container">
                    <div class="input-field col s12 m12 l12 center">
                        <div class="btn-floating" onclick="updatePassword()"><i class="material-icons">done_all</i></div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">

            </div>
        </div>
        <div class="modal" id="addWorkSpaceModal">
            <div class="modal-content row">
                <h5 class="center">Add Workspace</h5>
                <div class="input-field col s12 m6 l6">
                    <input type="text" id="workspaceName">
                    <label for="workspaceName">Workspace Name</label>
                </div>
                <div class="input-field col s12 m6 l6">
                    <select id="workspaceLevel">
                        <option value="1" selected>1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                    </select>
                </div>
                <div class="input-field col s12 m6 l6">
                    <input type="password" id="workspacePassword">
                    <label for="workspacePassword">Workspace Password</label>
                </div>
            </div>
            <div class="modal-footer center">
                <div class="btn" onclick="addWorkspace()">Add <i class="material-icons">add</i></div>
                <br>
            </div>
        </div>
    </main>
    <footer class="hide">
    </footer>
    <extras>
        <br>
        <br>
        <br>
        <br>
        <div class="center">
            <div class="btn" onclick="join()">JOIN USING GOOGLE</div>
        </div>
    </extras>
</body>

</html>
