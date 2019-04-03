# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Classroom.V1.Model.CourseWork do
  @moduledoc """
  Course work created by a teacher for students of the course.

  ## Attributes

  - alternateLink (String.t): Absolute link to this course work in the Classroom web UI. This is only populated if &#x60;state&#x60; is &#x60;PUBLISHED&#x60;.  Read-only. Defaults to: `null`.
  - assigneeMode (String.t): Assignee mode of the coursework. If unspecified, the default value is &#x60;ALL_STUDENTS&#x60;. Defaults to: `null`.
    - Enum - one of [ASSIGNEE_MODE_UNSPECIFIED, ALL_STUDENTS, INDIVIDUAL_STUDENTS]
  - assignment (Assignment): Assignment details. This is populated only when &#x60;work_type&#x60; is &#x60;ASSIGNMENT&#x60;.  Read-only. Defaults to: `null`.
  - associatedWithDeveloper (boolean()): Whether this course work item is associated with the Developer Console project making the request.  See google.classroom.Work.CreateCourseWork for more details.  Read-only. Defaults to: `null`.
  - courseId (String.t): Identifier of the course.  Read-only. Defaults to: `null`.
  - creationTime (DateTime.t): Timestamp when this course work was created.  Read-only. Defaults to: `null`.
  - creatorUserId (String.t): Identifier for the user that created the coursework.  Read-only. Defaults to: `null`.
  - description (String.t): Optional description of this course work. If set, the description must be a valid UTF-8 string containing no more than 30,000 characters. Defaults to: `null`.
  - dueDate (DateTime): Optional date, in UTC, that submissions for this course work are due. This must be specified if &#x60;due_time&#x60; is specified. Defaults to: `null`.
  - dueTime (TimeOfDay): Optional time of day, in UTC, that submissions for this course work are due. This must be specified if &#x60;due_date&#x60; is specified. Defaults to: `null`.
  - id (String.t): Classroom-assigned identifier of this course work, unique per course.  Read-only. Defaults to: `null`.
  - individualStudentsOptions (IndividualStudentsOptions): Identifiers of students with access to the coursework. This field is set only if &#x60;assigneeMode&#x60; is &#x60;INDIVIDUAL_STUDENTS&#x60;. If the &#x60;assigneeMode&#x60; is &#x60;INDIVIDUAL_STUDENTS&#x60;, then only students specified in this field will be assigned the coursework. Defaults to: `null`.
  - materials ([Material]): Additional materials.  CourseWork must have no more than 20 material items. Defaults to: `null`.
  - maxPoints (float()): Maximum grade for this course work. If zero or unspecified, this assignment is considered ungraded. This must be a non-negative integer value. Defaults to: `null`.
  - multipleChoiceQuestion (MultipleChoiceQuestion): Multiple choice question details. For read operations, this field is populated only when &#x60;work_type&#x60; is &#x60;MULTIPLE_CHOICE_QUESTION&#x60;. For write operations, this field must be specified when creating course work with a &#x60;work_type&#x60; of &#x60;MULTIPLE_CHOICE_QUESTION&#x60;, and it must not be set otherwise. Defaults to: `null`.
  - scheduledTime (DateTime.t): Optional timestamp when this course work is scheduled to be published. Defaults to: `null`.
  - state (String.t): Status of this course work. If unspecified, the default state is &#x60;DRAFT&#x60;. Defaults to: `null`.
    - Enum - one of [COURSE_WORK_STATE_UNSPECIFIED, PUBLISHED, DRAFT, DELETED]
  - submissionModificationMode (String.t): Setting to determine when students are allowed to modify submissions. If unspecified, the default value is &#x60;MODIFIABLE_UNTIL_TURNED_IN&#x60;. Defaults to: `null`.
    - Enum - one of [SUBMISSION_MODIFICATION_MODE_UNSPECIFIED, MODIFIABLE_UNTIL_TURNED_IN, MODIFIABLE]
  - title (String.t): Title of this course work. The title must be a valid UTF-8 string containing between 1 and 3000 characters. Defaults to: `null`.
  - topicId (String.t): Identifier for the topic that this coursework is associated with. Must match an existing topic in the course. Defaults to: `null`.
  - updateTime (DateTime.t): Timestamp of the most recent change to this course work.  Read-only. Defaults to: `null`.
  - workType (String.t): Type of this course work.  The type is set when the course work is created and cannot be changed. Defaults to: `null`.
    - Enum - one of [COURSE_WORK_TYPE_UNSPECIFIED, ASSIGNMENT, SHORT_ANSWER_QUESTION, MULTIPLE_CHOICE_QUESTION]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alternateLink => any(),
          :assigneeMode => any(),
          :assignment => GoogleApi.Classroom.V1.Model.Assignment.t(),
          :associatedWithDeveloper => any(),
          :courseId => any(),
          :creationTime => DateTime.t(),
          :creatorUserId => any(),
          :description => any(),
          :dueDate => any(),
          :dueTime => GoogleApi.Classroom.V1.Model.TimeOfDay.t(),
          :id => any(),
          :individualStudentsOptions =>
            GoogleApi.Classroom.V1.Model.IndividualStudentsOptions.t(),
          :materials => list(GoogleApi.Classroom.V1.Model.Material.t()),
          :maxPoints => any(),
          :multipleChoiceQuestion => GoogleApi.Classroom.V1.Model.MultipleChoiceQuestion.t(),
          :scheduledTime => DateTime.t(),
          :state => any(),
          :submissionModificationMode => any(),
          :title => any(),
          :topicId => any(),
          :updateTime => DateTime.t(),
          :workType => any()
        }

  field(:alternateLink)
  field(:assigneeMode)
  field(:assignment, as: GoogleApi.Classroom.V1.Model.Assignment)
  field(:associatedWithDeveloper)
  field(:courseId)
  field(:creationTime, as: DateTime)
  field(:creatorUserId)
  field(:description)
  field(:dueDate)
  field(:dueTime, as: GoogleApi.Classroom.V1.Model.TimeOfDay)
  field(:id)
  field(:individualStudentsOptions, as: GoogleApi.Classroom.V1.Model.IndividualStudentsOptions)
  field(:materials, as: GoogleApi.Classroom.V1.Model.Material, type: :list)
  field(:maxPoints)
  field(:multipleChoiceQuestion, as: GoogleApi.Classroom.V1.Model.MultipleChoiceQuestion)
  field(:scheduledTime, as: DateTime)
  field(:state)
  field(:submissionModificationMode)
  field(:title)
  field(:topicId)
  field(:updateTime, as: DateTime)
  field(:workType)
end

defimpl Poison.Decoder, for: GoogleApi.Classroom.V1.Model.CourseWork do
  def decode(value, options) do
    GoogleApi.Classroom.V1.Model.CourseWork.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Classroom.V1.Model.CourseWork do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
