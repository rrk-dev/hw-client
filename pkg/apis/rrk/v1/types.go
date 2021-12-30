package v1

import metav1 "k8s.io/apimachinery/pkg/apis/meta/v1"

// +genclient
// +k8s:deepcopy-gen:interfaces=k8s.io/apimachinery/pkg/runtime.Object

// HelloType is a top-level type
type HelloWorld struct {
	metav1.TypeMeta `json:",inline"`
	// +optional
	metav1.ObjectMeta `json:"metadata,omitempty"`

	// +optional
	Status HelloWorldStatus `json:"status,omitempty"`
	// This is where you can define
	// your own custom spec
	Spec HelloWorldSpec `json:"spec,omitempty"`
}

// custom spec
type HelloWorldSpec struct {
	Message string `json:"message,omitempty"`
}

// custom status
type HelloWorldStatus struct {
	Name string
}

// +k8s:deepcopy-gen:interfaces=k8s.io/apimachinery/pkg/runtime.Object

// no client needed for list as it's been created in above
type HelloWorldList struct {
	metav1.TypeMeta `json:",inline"`
	// +optional
	metav1.ListMeta `son:"metadata,omitempty"`

	Items []HelloWorld `json:"items"`
}
